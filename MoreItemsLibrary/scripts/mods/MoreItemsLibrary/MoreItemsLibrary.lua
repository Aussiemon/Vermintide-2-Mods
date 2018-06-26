--[[
	author: Aussiemon
	
	-----
 
	Copyright 2018 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	A library of functions to simplify working with mod items.
	
	Usage:
	
		- If the item is completely new, and does not yet have an ItemMasterList entry:
		
			1. Create a new table
			
			2. Fill that table with the relevant regular fields of an ItemMasterList entry
			
			3. Insert your new entry into an array
			
			4. Pass that array to mod.add_mod_items_to_masterlist()
			
			Your item now has an ItemMasterList and NetworkLookup entry. ANY COMPLETELY NEW ITEM WILL CURRENTLY CRASH LOBBY PLAYERS WHO DO NOT HAVE MATCHING ITEM LISTS.
			
		- When an item has an ItemMasterList entry, it can be added to your inventory:
		
			1. Use table.clone to copy the ItemMasterList entry
			
			2. Add a mod_data table to your entry copy (entry.mod_data = {})
			
			3. To this mod_data table, add any of the fields listed below in the backend_template for your item's slot_type. To look at your existing items for reference material, call the Vermintide Mod Framework's 'dtf' function on the return result of PlayFabMirror.get_all_inventory_items().
					
			4. Insert your new entry into an array
			
			5. Pass that array to mod.add_mod_items_to_local_backend() with your mod's name
			
			For example:
				local entry = table.clone(ItemMasterList["ring_06"])
				entry.mod_data = {
					backend_id = "something_unique",
					ItemInstanceId = "same as backend_id",
					CustomData = {
						traits = "[\"ring_potion_duration\"]",
						power_level = "300",
						properties = "{\"power_vs_skaven\":1,\"power_vs_unarmoured\":1}"
					},
					traits = {
						"ring_potion_duration"
					},
					power_level = 300,
					properties = {
						power_vs_unarmoured = 1,
						power_vs_skaven = 1,
					},
				}
				mod:add_mod_items_to_local_backend({entry}, "your mod name")
			
			Your item is now 'owned' for the game session, and will appear in item menus.
--]]

local mod = get_mod("MoreItemsLibrary")

-- ##########################################################
-- ################## Variables #############################

local backend_mod_items = mod:persistent_table("backend_mod_items")

local default_catalog_version = "1"
local default_purchase_date = "2018-03-08T00:00:00.132Z"
local default_remaining_uses = 1
local default_unit_price = 0

local mod_item_rarity = "default"

local backend_templates = {
	-- Cosmetic
	skin = {
		CustomData = {}, -- List of Strings
	},
	hat = {
		CustomData = {}, -- List of Strings
	},
	frame = {
		CustomData = {}, -- List of Strings
	},
	weapon_skin = {
		CustomData = { -- List of Strings
			skin = nil, -- String
		},
		skin = "", -- String
	},
	keep_decoration_painting = {
		CustomData = {}, -- List of Strings
	},
	-- Equipment
	melee = {
		CustomData = { -- List of Strings
			power_level = nil, -- String
			properties = nil, -- String representation of list
			skin = nil, -- String
			traits = nil, -- String representation of array
		},
		power_level = "", -- Number
		properties = {}, -- List of Numbers
		skin = "", -- String
		traits = {}, -- Array of Strings
	},
	ranged = {
		CustomData = { -- List of Strings
			power_level = nil, -- String
			properties = nil, -- String representation of list
			skin = nil, -- String
			traits = nil, -- String representation of array
		},
		power_level = "", -- Number
		properties = {}, -- List of Numbers
		skin = "", -- String
		traits = {}, -- Array of Strings
	},
	necklace = {
		CustomData = { -- List of Strings
			power_level = nil, -- String
			properties = nil, -- String representation of list
			traits = nil, -- String representation of array
		},
		power_level = "", -- Number
		properties = {}, -- List of Numbers
		traits = {}, -- Array of Strings
	},
	ring = {
		CustomData = { -- List of Strings
			power_level = nil, -- String
			properties = nil, -- String representation of list
			traits = nil, -- String representation of array
		},
		power_level = "", -- Number
		properties = {}, -- List of Numbers
		traits = {}, -- Array of Strings
	},
	trinket = {
		CustomData = { -- List of Strings
			power_level = nil, -- String
			properties = nil, -- String representation of list
			traits = nil, -- String representation of array
		},
		power_level = "", -- Number
		properties = {}, -- List of Numbers
		traits = {}, -- Array of Strings
	},
	-- Miscellaneous
	crafting_material = {
		CustomData = {}, -- List of Strings
	},
	deed = {
		CustomData = { -- List of Strings
			difficulty = nil, -- String
			level_key = nil, -- String
		},
		difficulty = "", -- String
		level_key = "", -- String
	},
	loot_chest = {
		CustomData = {}, -- List of Strings
	},
}

local ItemMasterList = ItemMasterList
local NetworkLookup = NetworkLookup

local PlayFabMirror = PlayFabMirror

local pairs = pairs
local rawget = rawget
local table = table
local tostring = tostring

-- ##########################################################
-- ################## Functions #############################

-- Add new mod items to ItemMasterList:
---- items, Array, item data entries
mod.add_mod_items_to_masterlist = function(self, items)
	local item_master_list_patch = items

	for item_num = 1, #item_master_list_patch do
		local item = item_master_list_patch[item_num]
		if item and item.name then
			local item_name = item.name
			local already_exists = rawget(ItemMasterList, item_name)

			if not already_exists then
				item.name = item_name
				ItemMasterList[item_name] = item
				
				local item_name_index = #NetworkLookup.item_names + 1
				NetworkLookup.item_names[item_name_index] = item_name
				NetworkLookup.item_names[item_name] = item_name_index
			end
		end
	end
end

-- Add new mod items to local backend:
---- items, Array, item data entries
---- mod_name, String, name of the calling mod
mod.add_mod_items_to_local_backend = function(self, items, mod_name)
	
	-- Don't allow anonymous mods
	if not mod_name then
		mod:echo("[More Items Library]: Unknown mod attempted to add items.")
		return
	end
	
	for item_num = 1, #items do
		repeat
			-- Skip if item does not exist
			local item = items[item_num]
			if not item then
				mod:echo("[More Items Library]: " .. mod_name
						.. " tried to add a nil item.")
				break
			end
			
			-- Skip if item is not a known type
			local slot_type = item.slot_type
			if not slot_type or not backend_templates[slot_type] then
				mod:echo("[More Items Library]: " .. mod_name
						.. " tried to add unknown item type "
						.. tostring(slot_type))
				break
			end
			
			-- Skip if item has no name
			local default_item_name = item.name
			if not default_item_name then
				mod:echo("[More Items Library]: " .. mod_name
						.. " tried to add an item with no name.")
				break
			end
			
			-- Backendify item by template
			local backend_item = table.clone(backend_templates[slot_type])
			local mod_data = item.mod_data or {}
			
			-- Add template-specific fields if supplied
			for key, value in pairs(backend_item) do
				if mod_data[key] then
					backend_item[key] = mod_data[key]
				end
			end
			
			-- Set backend id for item
			local default_backend_id = mod_name .. "_" .. default_item_name
			
			backend_item.backend_id = mod_data.backend_id or default_backend_id
			backend_item.ItemInstanceId = mod_data.ItemInstanceId or default_backend_id
			
			-- Add backend values for normal fields
			backend_item.CatalogVersion = mod_data.CatalogVersion or default_catalog_version
			backend_item.PurchaseDate = mod_data.PurchaseDate or default_purchase_date
			backend_item.RemainingUses = mod_data.RemainingUses or default_remaining_uses
			backend_item.UnitPrice = mod_data.UnitPrice or default_unit_price
			
			backend_item.ItemId = mod_data.ItemId or item.key or default_item_name
			backend_item.key = mod_data.key or item.key or default_item_name
			
			-- Add item data to backend item
			backend_item.data = item
			
			-- All mod items should have default rarity to prevent salvage
			backend_item.CustomData.rarity = mod_item_rarity
			backend_item.rarity = mod_item_rarity
			
			-- Add mod item if backend_id is not already in use
			if not backend_mod_items[backend_item.backend_id] then
				backend_mod_items[backend_item.backend_id] = backend_item
			end		
		until true
	end
end

-- ##########################################################
-- #################### Hooks ###############################

-- At every call to local backend, insert loaded mod items
mod:hook(PlayFabMirror, "get_all_inventory_items", function (func, ...)
	
	-- Original function
	local backend_items = func(...)
	
	-- Insert backend mod items
	for mod_backend_id, mod_backend_item in pairs(backend_mod_items) do
		backend_items[mod_backend_id] = mod_backend_item
	end
	
	-- Return backend items with mod additions
	return backend_items
end)

-- ##########################################################
-- ################### Callback #############################

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
