--[[
	author: Aussiemon and IAmLupo
	
	-----
 
	Copyright 2018 Aussiemon and IAmLupo

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	Makes selected hats equippable by certain heroes, and unequippable by all heroes.
--]]

local mod = get_mod("MoreHats")

-- ##########################################################
-- ################## Variables #############################

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

mod.hats_patched = mod.hats_patched or false
mod.active_career = ""

-- Addon Globals --
MORE_HATS_ADDONS = MORE_HATS_ADDONS or {
	configs = {},
	transformations = {}
}

local addons = MORE_HATS_ADDONS
local configs = addons.configs
local transformations = addons.transformations
local attachment_linkings = AttachmentNodeLinking
-- ----------------

local ItemMasterList = ItemMasterList
local AttachmentUtils = AttachmentUtils
local BackendUtils = BackendUtils
local Unit = Unit
local ScriptUnit = ScriptUnit
local World = World
local Matrix4x4Box = Matrix4x4Box

local ipairs = ipairs
local pairs = pairs
local table = table
local type = type

-- ##########################################################
-- ################## Functions #############################

mod.get_all_hat_and_skin_nodes = function(self)
	local list = {}
	
	for item_name, item in pairs(ItemMasterList) do
		if item.item_type == "hat" then
			local hat_template = BackendUtils.get_item_template(item)
			local attachment_node_linking = hat_template.attachment_node_linking
		
			if attachment_node_linking and attachment_node_linking.slot_hat then
				local slot_hat = attachment_node_linking.slot_hat
				
				list[item_name] = table.clone(slot_hat)
			end
			
		-- @TODO: Implement MoreSkins
		elseif item.item_type == "skin" then
		end
	end
	
	return list
end

mod.validate_hats = function(self, player_nodes, hat_nodes)
	for hat_name, node in pairs(hat_nodes) do
		if player_nodes[node.source] == nil then
			mod:echo("Unrecognized node. Please update the MoreHats mod.")
			return false
		elseif player_nodes[node.source] == false then
			return false
		end
	end
	
	return true
end

mod.patch_hats = function(self, player_nodes)
	mod:pcall(function()
		local hats_nodes = mod:get_all_hat_and_skin_nodes()
		
		for hat_name, hat_nodes in pairs(hats_nodes) do
			local new_list = {}
			
			-- Find valid characters that can wear the hat
			for player_name, player_nodes in pairs(mod.players_nodes) do
				if mod:validate_hats(player_nodes, hat_nodes) then
					table.insert(new_list, player_name)
				end
			end
			
			-- Patch the master item list with new list
			if #new_list > 0 then
				ItemMasterList[hat_name].can_wield = new_list
			end
		end
		
		-- Hats are all patched
		mod.hats_patched = true
	end)
end

mod.get_index = function(self, list, index)
	return list[index]
end

-- ##########################################################
-- #################### Hooks ###############################

-- ---------------------------------
-- Allow unequipping hats --
-- ---------------------------------

mod:hook("HeroWindowCosmeticsInventory._handle_input", function (func, self, ...)
	-- Original function
	func(self, ...)
	
	-- Check for unequip press
	local item_grid = self._item_grid
	local allow_single_press = false
	local item, is_equipped = item_grid:is_item_pressed(allow_single_press)
	
	if item and is_equipped then
		local item_data = item.data
		local slot_type = item_data.slot_type
		
		if slot_type == "hat" then
			item = {
				data = {
					slot_type = slot_type
				}
			}
			
			local parent = self.parent
			parent:_set_loadout_item(item)
			self:_play_sound("play_gui_equipment_equip_hero")
			
			parent:update_skin_sync()
		end
	end
end)

-- Return early if backend id is nil
mod:hook("PlayerUnitAttachmentExtension.create_attachment_in_slot", function (func, self, slot_name, backend_id, ...)
	if not backend_id then
		return
	end
	
	-- Original function
	return func(self, slot_name, backend_id, ...)
end)

-- ------------------------------------------
-- Support hats with invalid attachment links
-- ------------------------------------------

-- Modify template return value while creating attachment
mod:hook("BackendUtils.get_item_template", function (func, item_data, ...)
	-- Original function
	local item_template = func(item_data, ...)
	
	if item_data and item_template then
		local name = item_data.name
		
		-- Replace with mod profile
		if configs[name] and mod:get_index(configs[name], mod.active_career) then
			local new_attachment_name = mod:get_index(configs[name], mod.active_career).attachment_node_linking or ""
			local new_attachment = attachment_linkings[new_attachment_name]
			if new_attachment then
				mod.backup_node_linking = table.clone(item_template.attachment_node_linking)
				mod.backup_node_linking_ref = item_template.attachment_node_linking
				item_template.attachment_node_linking = new_attachment
			end
		end
	end
	
	return item_template
end)
mod:hook_disable("BackendUtils.get_item_template")

-- Modify template return value while creating attachment
mod:hook("ItemHelper.get_template_by_item_name", function (func, item_name, ...)
	-- Original function
	local item_template = func(item_name, ...)
	
	if item_name and item_template then
		local name = item_name
		
		-- Replace with mod profile
		if configs[name] and mod:get_index(configs[name], mod.active_career) then
			local new_attachment_name = mod:get_index(configs[name], mod.active_career).attachment_node_linking or ""
			local new_attachment = attachment_linkings[new_attachment_name]
			if new_attachment then
				mod.backup_node_linking = table.clone(item_template.attachment_node_linking)
				mod.backup_node_linking_ref = item_template.attachment_node_linking
				item_template.attachment_node_linking = new_attachment
			end
		end
	end
	
	return item_template
end)
mod:hook_disable("ItemHelper.get_template_by_item_name")

-- Modify attachment linking in item template
mod:hook("AttachmentUtils.create_attachment", function (func, world, owner_unit, attachments, slot_name, ...)
	local slot_data
	if slot_name == "slot_hat" then
		mod:hook_enable("BackendUtils.get_item_template")
		if not ScriptUnit.has_extension(owner_unit, "career_system") then
			mod:hook_disable("BackendUtils.get_item_template")
		else
			local career_ext = ScriptUnit.extension(owner_unit, "career_system")
			local career_name = career_ext:career_name()
			mod.active_career = career_name
		end
		slot_data = func(world, owner_unit, attachments, slot_name, ...)
		mod:hook_disable("BackendUtils.get_item_template")
		
		if mod.backup_node_linking_ref and mod.backup_node_linking then
			mod.backup_node_linking_ref = mod.backup_node_linking
		end
	else
		slot_data = func(world, owner_unit, attachments, slot_name, ...)
	end
	return slot_data
end)

-- Modify attachment linking in item template
mod:hook("MenuWorldPreviewer.equip_item", function (func, self, item_name, slot, ...)
	local result
	if slot.type == "hat" then
		mod:hook_enable("ItemHelper.get_template_by_item_name")
		mod.active_career = self._current_career_name
		result = func(self, item_name, slot, ...)
		mod:hook_disable("ItemHelper.get_template_by_item_name")
		
		if mod.backup_node_linking_ref and mod.backup_node_linking then
			mod.backup_node_linking_ref = mod.backup_node_linking
		end
	else
		result = func(self, item_name, slot, ...)
	end
	return result
end)

-- ---------------------------------
-- Prevent crashes
-- ---------------------------------

-- Prevent attachment crash when a node is missing (a_hat, j_spine2, j_shoulderlevel)
mod:hook("GearUtils.link_units", function (func, world, attachment_node_linking, link_table, source, target, ...)
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
				mod:echo("A character has an invalid headgear equipped. Unequip broken hats and update the MoreHats mod.")
				break
			end
			
			local target_node_index = target_node
			if type(target_node) == "number" then
				last_target_index = target_node_index
			elseif type(target_node) == "string" and Unit.has_node(target, target_node) then
				target_node_index = Unit.node(target, target_node)
				last_target_index = target_node_index
			elseif type(target_node) == "string" and not Unit.has_node(target, target_node) then
				mod:echo("A character has an invalid headgear equipped. Unequip broken hats and update the MoreHats mod.")
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
mod:hook("AttachmentUtils.link", function (func, world, source, target, node_linking, ...)
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
				mod:echo("A character has an invalid headgear equipped. Unequip broken hats and update the MoreHats mod.")
				break
			end
			
			local target_node_index = target_node
			if type(target_node) == "number" then
				last_target_index = target_node_index
			elseif type(target_node) == "string" and Unit.has_node(target, target_node) then
				target_node_index = Unit.node(target, target_node)
				last_target_index = target_node_index
			elseif type(target_node) == "string" and not Unit.has_node(target, target_node) then
				mod:echo("A character has an invalid headgear equipped. Unequip broken hats and update the MoreHats mod.")
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
			mod:patch_hats()
		end
	end
end

-- Call when governing settings checkbox is unchecked
mod.on_disabled = function(initial_call)
	mod:disable_all_hooks()
end

-- Call when governing settings checkbox is checked
mod.on_enabled = function(initial_call)
	mod:enable_all_hooks()
	mod:hook_disable("BackendUtils.get_item_template")
	mod:hook_disable("ItemHelper.get_template_by_item_name")
	
	if not initial_call then
		mod:patch_hats()
	end
end

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
