--[[
	author: Aussiemon and IAmLupo
	
	-----
 
	Copyright 2019 Aussiemon and IAmLupo

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	Lets all hats and frames be equippable and unequippable by compatible characters.
--]]

local mod = get_mod("MoreHats")

-- ##########################################################
-- ################## Variables #############################

mod.every_career = {
	-- Bright Wizard
	"bw_adept",
	"bw_scholar",
	"bw_unchained",
	
	-- Wood Elf
	"we_waywatcher",
	"we_maidenguard",
	"we_shade",
	
	-- Dwarf Ranger
	"dr_ranger",
	"dr_ironbreaker",
	"dr_slayer",
	
	-- Witch Hunter
	"wh_captain",
	"wh_bountyhunter",
	"wh_zealot",
	
	-- Empire Soldier
	"es_mercenary",
	"es_huntsman",
	"es_knight"
}

mod.players_nodes = {
	bw_adept = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = true,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	bw_scholar = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = true,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = false,
		j_rightcrease_02_anim = true,
	},
	bw_unchained = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = true,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	we_shade = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	we_maidenguard = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	we_waywatcher = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	dr_ironbreaker = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	dr_slayer = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	dr_ranger = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	wh_zealot = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	wh_bountyhunter = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	wh_captain = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = true,
		j_spine2 = true,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = false,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = false,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = false,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = false,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	es_huntsman = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = false,
		j_spine2 = false,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = true,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = true,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = true,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = true,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	es_knight = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = false,
		j_spine2 = false,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = true,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = true,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = true,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = true,
		a_hat = true,
		j_rightcrease_02_anim = true,
	},
	es_mercenary = {
		j_upperlipleft2_anim = true,
		j_upperlipright2_anim = true,
		j_spine = true,
		j_shoulder_level = false,
		j_spine1 = false,
		j_spine2 = false,
		j_head = true,
		j_jaw_anim = true,
		j_rightcheek_01_anim = true,
		j_neck = true,
		j_left_beard_01 = true,
		j_rightcheek_02_anim = true,
		j_leftcheek_01_anim = true,
		j_rightcrease_01_anim = true,
		j_leftarm = true,
		j_right_beard_01 = true,
		j_leftcrease_02_anim = true,
		j_rightarm = true,
		j_leftcheek_02_anim = true,
		j_rightshoulder = true,
		j_left_beard_02 = true,
		j_rightcheek_03_anim = true,
		j_leftshoulder = true,
		j_leftcrease_01_anim = true,
		j_leftcheek_03_anim = true,
		j_right_beard_02 = true,
		a_hat = true,
		j_rightcrease_02_anim = true,
	}
}

local ItemMasterList = ItemMasterList
local AttachmentUtils = AttachmentUtils
local BackendUtils = BackendUtils
local Unit = Unit
local ScriptUnit = ScriptUnit
local World = World
local Matrix4x4Box = Matrix4x4Box

local CosmeticSystem = CosmeticSystem
local GearUtils = GearUtils
local HeroWindowCosmeticsInventory = HeroWindowCosmeticsInventory
local ItemHelper = ItemHelper
local PlayerUnitAttachmentExtension = PlayerUnitAttachmentExtension

local ipairs = ipairs
local pairs = pairs
local table = table
local type = type

-- ##########################################################
-- ################## Functions #############################

-- Collect all hats and portrait frames for patching
mod.get_all_hat_and_frames = function(self)
	local item_list = {
		hats = {},
		frames = {}
	}
	
	for item_name, item in pairs(ItemMasterList) do
		-- Item is a hat. Collect the attachment nodes for later validation
		if item.item_type == "hat" then
			local hat_template = BackendUtils.get_item_template(item)
			local attachment_node_linking = hat_template.attachment_node_linking
		
			if attachment_node_linking and attachment_node_linking.slot_hat then
				local slot_hat = attachment_node_linking.slot_hat
				
				item_list.hats[item_name] = table.clone(slot_hat)
			end
			
		-- Item is a frame. Store the name for later editing.
		elseif item.item_type == "frame" then
			table.insert(item_list.frames, item_name)
		end
	end
	
	return item_list
end

-- Check if a hat is compatible for a certain character unit
mod.validate_hats = function(self, character_nodes, hat_nodes)
	for hat_name, node in pairs(hat_nodes) do
	
		-- Unknown nodes found (hats have been updated and may be incompatible)
		if character_nodes[node.source] == nil then
			return nil
		
		-- Hat is invalid for this character unit
		elseif character_nodes[node.source] == false then
			return false
		end
	end
	
	-- Hat is valid for this character unit
	return true
end

-- Allow compatible characters to wield compatible hats
mod.patch_hats = function(self, hat_nodes)
	for item_name, item_nodes in pairs(hat_nodes) do
		local new_can_wield_list = {}
		
		-- Find compatible characters and allow them to use the hat
		for player_name, player_nodes in pairs(mod.players_nodes) do
			local hat_validation = mod:validate_hats(player_nodes, item_nodes)
			if hat_validation then
				table.insert(new_can_wield_list, player_name)
			elseif hat_validation == nil then
				mod:echo("New hat types have been added. Unequipping all hats for safety. Please update the MoreHats mod, or risk crashes.")
				mod:unequip_all_hats()
				return
			end
		end
		
		-- Patch the master item list with the new list of compatible characters
		if #new_can_wield_list > 0 then
			ItemMasterList[item_name].can_wield = new_can_wield_list
		end
	end
end

-- Allow compatible characters to wield compatible portrait frames
mod.patch_frames = function(self, frame_list)
	for _, item_name in pairs(frame_list) do
		local new_can_wield_list = mod.every_career
		ItemMasterList[item_name].can_wield = new_can_wield_list
	end
end

-- Patch cosmetics to allow use with compatible characters
mod.patch_cosmetics = function(self)

	mod:pcall(function()
		local item_list = mod:get_all_hat_and_frames()
		
		-- Visit collected hats
		local hat_nodes = item_list.hats
		mod:patch_hats(hat_nodes)
		
		-- Visit collected frames
		local frame_list = item_list.frames
		mod:patch_frames(frame_list)
	end)
end

-- Unequip all hats for all characters
mod.unequip_all_hats = function(self)
	mod:pcall(function()
		for i = 1, #(mod.every_career) do
			local backend_items = Managers.backend:get_interface("items")
			backend_items:set_loadout_item(nil, mod.every_career[i], "slot_hat")
		end
	end)
end

-- ##########################################################
-- #################### Hooks ###############################

-- ------------------------------------
-- Allow unequipping hats and frames --
-- ------------------------------------

mod:hook(HeroWindowCosmeticsInventory, "_handle_input", function (func, self, ...)
	-- Original function
	func(self, ...)
	
	-- Check for unequip press
	local item_grid = self._item_grid
	local allow_single_press = false
	local item, is_equipped = item_grid:is_item_pressed(allow_single_press)
	
	if item and is_equipped then
		local item_data = item.data
		local slot_type = item_data.slot_type
		
		-- Unequip selected cosmetic
		if slot_type == "hat" or slot_type == "frame" then
			item = {
				data = {
					slot_type = slot_type
				}
			}
			
			local parent = self.parent
			parent:_set_loadout_item(item)
			parent:update_skin_sync()
			
			self:_play_sound("play_gui_equipment_equip_hero")
		end
	end
end)

-- Return early if backend id is nil
mod:hook(PlayerUnitAttachmentExtension, "create_attachment_in_slot", function (func, self, slot_name, backend_id, ...)
	if not backend_id then
		return
	end
	
	-- Original function
	return func(self, slot_name, backend_id, ...)
end)

-- Return early if item_name is nil
mod:hook(ItemHelper, "get_template_by_item_name", function (func, item_name, ...)
	if not item_name then
		return {}
	end
	
	-- Original function
	return func(item_name, ...)
end)

-- Set default frame_name if nil
mod:hook(CosmeticSystem, "set_equipped_frame", function (func, self, unit, frame_name, ...)
	if not frame_name then
		frame_name = "default"
	end
	
	-- Original function
	return func(self, unit, frame_name, ...)
end)

-- ------------------------------------------
-- Support hats with invalid attachment links
-- ------------------------------------------

--[[
"BackendUtils.get_item_template"
"ItemHelper.get_template_by_item_name"
"AttachmentUtils.create_attachment"
"MenuWorldPreviewer.equip_item"
--]]

-- ---------------------------------
-- Prevent crashes
-- ---------------------------------

-- Prevent attachment crash when a node is missing (a_hat, j_spine2, j_shoulderlevel)
mod:hook(GearUtils, "link_units", function (func, world, attachment_node_linking, link_table, source, target, ...)
	local last_source_index = 0
	local last_target_index = 0
	
	for i, attachment_nodes in ipairs(attachment_node_linking) do
		repeat
			local source_node = attachment_nodes.source
			local target_node = attachment_nodes.target
			
			local source_node_index = source_node
			if type(source_node) == "number" then
				last_source_index = source_node_index
			elseif type(source_node) == "string" and Unit.has_node(source, source_node) then
				source_node_index = Unit.node(source, source_node)
				last_source_index = source_node_index
			elseif type(source_node) == "string" and not Unit.has_node(source, source_node) then
				mod:echo("A character has an invalid item equipped. Unequipping all hats for safety. If this happened while attempting to equip a hat, please update the MoreHats mod.")
				mod:unequip_all_hats()
				break
			end
			
			local target_node_index = target_node
			if type(target_node) == "number" then
				last_target_index = target_node_index
			elseif type(target_node) == "string" and Unit.has_node(target, target_node) then
				target_node_index = Unit.node(target, target_node)
				last_target_index = target_node_index
			elseif type(target_node) == "string" and not Unit.has_node(target, target_node) then
				mod:echo("A character has an invalid item equipped. Unequipping all hats for safety. If this happened while attempting to equip a hat, please update the MoreHats mod.")
				mod:unequip_all_hats()
				break
			end
			
			link_table[#link_table + 1] = {
				unit = target,
				i = target_node_index,
				parent = Unit.scene_graph_parent(target, target_node_index),
				local_pose = Matrix4x4Box(Unit.local_pose(target, target_node_index))
			}

			World.link_unit(world, target, target_node_index, source, source_node_index)
		until true
	end
end)


-- Prevent attachment crash when a node is missing (a_hat, j_spine2, j_shoulderlevel)
mod:hook(AttachmentUtils, "link", function (func, world, source, target, node_linking, ...)
	local last_source_index = 0
	local last_target_index = 0
	
	for i, link_data in ipairs(node_linking) do
		repeat
			local source_node = link_data.source
			local target_node = link_data.target
			
			local source_node_index = source_node
			if type(source_node) == "number" then
				last_source_index = source_node_index
			elseif type(source_node) == "string" and Unit.has_node(source, source_node) then
				source_node_index = Unit.node(source, source_node)
				last_source_index = source_node_index
			elseif type(source_node) == "string" and not Unit.has_node(source, source_node) then
				mod:echo("A character has an invalid item equipped. Unequipping all hats for safety. If this happened while attempting to equip a hat, please update the MoreHats mod.")
				mod:unequip_all_hats()
				break
			end
			
			local target_node_index = target_node
			if type(target_node) == "number" then
				last_target_index = target_node_index
			elseif type(target_node) == "string" and Unit.has_node(target, target_node) then
				target_node_index = Unit.node(target, target_node)
				last_target_index = target_node_index
			elseif type(target_node) == "string" and not Unit.has_node(target, target_node) then
				mod:echo("A character has an invalid item equipped. Unequipping all hats for safety. If this happened while attempting to equip a hat, please update the MoreHats mod.")
				mod:unequip_all_hats()
				break
			end

			World.link_unit(world, target, target_node_index, source, source_node_index)
		until true
	end
end)

-- ##########################################################
-- ################### Callback #############################

-- Call when game state changes (e.g. StateLoading -> StateIngame)
mod.on_game_state_changed = function(status, state)
	if state == "StateLoading" and status == "exit" then
		if mod:is_enabled() then
			mod:patch_cosmetics()
		end
	end
end

-- Call when governing settings checkbox is checked
mod.on_enabled = function(initial_call)
	if not initial_call then
		mod:patch_cosmetics()
	end
end

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
