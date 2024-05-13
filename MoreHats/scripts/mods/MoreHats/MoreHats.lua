--[[
	author: Aussiemon

	-----

	Copyright 2021 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

	-----

	Lets all hats be equippable and unequippable by compatible characters.
--]]

local mod = get_mod("MoreHats")

-- ##########################################################
-- ################## Variables #############################

mod.career_nodes = {}
mod.hat_nodes = {}

mod:command("reset_more_hats", nil, function()
	mod:get_all_hat_nodes()
	mod:load_careers_and_enable_more_hats()
end)

mod:command("unequip_all_hats", nil, function()
	mod:unequip_all_hats()
end)

local Application = Application
local AttachmentNodeLinking = AttachmentNodeLinking
local BackendUtils = BackendUtils
local Cosmetics = Cosmetics
local ItemMasterList = ItemMasterList
local Managers = Managers
local UIWidgetUtils = UIWidgetUtils
local World = World

local assert = assert
local ipairs = ipairs
local pairs = pairs
local table = table
local tostring = tostring
local type = type

-- ##########################################################
-- ################## Functions #############################

-- Build a list of unique nodes found in hat items
mod.get_all_hat_nodes = function(self)
	mod.hat_nodes = {}

	for attachment_node_linking_name, attachment_node_linking in pairs(AttachmentNodeLinking) do

		-- Item is a hat. Collect the attachment nodes for later validation
		assert(type(attachment_node_linking) == "table")
		if attachment_node_linking["slot_hat"] then

			-- Get slot_hat attachment nodes
			local attachment_nodes = attachment_node_linking["slot_hat"]
			assert(type(attachment_nodes) == "table")

			for i, node in ipairs(attachment_nodes) do
				assert(type(node) == "table")

				-- Get unique attachment names
				for location, id in pairs(node) do
					mod.hat_nodes[id] = (((not (type(id) == "number")) or nil) and id)
				end
			end
		end
	end
end

-- ##########################################################

-- Build lists of valid attachment nodes for every career
mod.populate_career_nodes = function(self)
	-- Don't populate until every package is loaded
	mod.loaded_career_count = (mod.loaded_career_count and mod.loaded_career_count + 1) or 1
	if mod.loaded_career_count < #(mod.every_career) then
		return
	end

	mod.world = mod.world or Managers.world:create_world(mod.world_name, nil, nil, nil, Application.DISABLE_APEX_CLOTH, Application.DISABLE_RENDERING, Application.DISABLE_SOUND)

	for i, loaded_career_name in ipairs(mod.every_career) do

		local unit_path = mod.career_unit_directory .. mod.every_career_unit_name[loaded_career_name] .. mod.career_unit_base
		local test_unit = World.spawn_unit(mod.world, unit_path)

		-- Check nodes of base third person unit_name
		mod.career_nodes[loaded_career_name] = {}
		for node_name, enabled in pairs(mod.hat_nodes) do
			mod.career_nodes[loaded_career_name][node_name] = Unit.has_node(test_unit, node_name)
		end
	end

	-- Clean up world
	Managers.world:destroy_world(mod.world)
	mod.world = nil

	-- Enable More Hats
	mod:enable_more_hats()
end

-- Use vanilla package loader to prepare resources for testing of attachment nodes
mod.load_careers_and_enable_more_hats = function(self)
	local async, prioritize = true, true
	local package_manager = Managers.package
	mod.loaded_career_count = 0

	-- Load the packages for every career's base third-person unit
	for i, career_name in ipairs(mod.every_career) do
		assert(mod.every_career_unit_name[career_name])

		local career_package_path = mod.career_unit_directory .. mod.every_career_unit_name[career_name] .. mod.career_unit_base
		package_manager:load(career_package_path, "MoreHats", callback(self, "populate_career_nodes"), async, prioritize)
	end
end

-- ##########################################################

-- Build a list of all hats in the item masterlist and their attachment node linkings
mod.get_all_hat_attachment_linkings = function(self)
	local item_list = {
		hats = {}
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
		end
	end

	return item_list
end

-- Validate a hat's nodes are compatible with a career base unit's nodes
mod.validate_hat = function(self, career_nodes, hat_nodes)
	for hat_name, hat_node in pairs(hat_nodes) do
		if type(hat_node.target) == "string" and not career_nodes[hat_node.target] then
			return false
		elseif type(hat_node.source) == "string" and not career_nodes[hat_node.source] then
			return false
		end
	end

	-- Hat is valid for this character unit
	return true
end

-- Modify masterlist to allow compatible careers to wield compatible hats
mod.patch_masterlist = function(self, all_hat_nodes)
	for hat_name, hat_nodes in pairs(all_hat_nodes) do
		local new_can_wield_list = {}

		-- Validate hats against list of careers
		for career_name, career_nodes in pairs(mod.career_nodes) do
			if mod:validate_hat(career_nodes, hat_nodes) then
				table.insert(new_can_wield_list, career_name)
			end
		end

		-- Patch the item masterlist
		if #new_can_wield_list > 0 then
			ItemMasterList[hat_name].can_wield = new_can_wield_list
		end
	end
end

-- Unequip all hats for all characters
mod.unequip_all_hats = function(self)
	mod:pcall(function()
		for i = 1, #(mod.every_career) do
			mod:echo("Unequipping hat for " .. mod.every_career[i])
			local backend_items = Managers.backend:get_interface("items")
			backend_items:set_loadout_item(nil, mod.every_career[i], "slot_hat")
		end
	end)
end

mod.prevent_hat_slot_hiding = function(self)
	local Cosmetics = Cosmetics
	for key, val in pairs(Cosmetics) do
		if val and val["always_hide_attachment_slots"] then
			Cosmetics[key].always_hide_attachment_slots = nil
		end
	end
end

-- ##########################################################

mod.enable_more_hats = function(self)
	mod:pcall(function()
		local item_list = mod:get_all_hat_attachment_linkings()
		local all_hat_nodes = item_list.hats

		mod:patch_masterlist(all_hat_nodes)
	end)
end

-- ##########################################################
-- #################### Hooks ###############################

mod:hook_origin(HeroWindowCosmeticsInventory, "_handle_input", function (self, dt, t, ...)
	local widgets_by_name = self._widgets_by_name
	local parent = self.parent
	local item_grid = self._item_grid
	local allow_single_press = false
	local item, is_equipped = item_grid:is_item_pressed(allow_single_press)
	local input_service = parent:window_input_service()

	if item_grid:handle_favorite_marking(input_service) then
		self:_play_sound("play_gui_inventory_item_hover")
	end

	if item_grid:is_item_hovered() then
		self:_play_sound("play_gui_inventory_item_hover")
	end

	-- Begin mod code ---------------
	if item then
		local item_data = item.data
		local item_slot_type = item_data.slot_type

		if not is_equipped then
			parent:_set_loadout_item(item)
			self:_play_sound("play_gui_equipment_equip_hero")

			if item_slot_type == "skin" then
				parent:update_skin_sync()
			end
		else
			-- Unequip if the pressed item is an equipped hat
			if item_slot_type == "hat" then
				item = {
					data = {
						slot_type = item_slot_type
					}
				}
				parent:_set_loadout_item(item)
				self:_play_sound("play_gui_equipment_equip_hero")

				parent:update_skin_sync()
			end
		end
	end
	-- End mod code ---------------

	local item_tabs = widgets_by_name.item_tabs

	UIWidgetUtils.animate_default_icon_tabs(item_tabs, dt)

	local tab_index_hovered = self:_is_inventory_tab_hovered()

	if tab_index_hovered then
		self:_play_sound("play_gui_inventory_tab_hover")
	end

	local tab_index_pressed = self:_is_inventory_tab_pressed()

	if tab_index_pressed and tab_index_pressed ~= self._selected_cosmetic_slot_index then
		parent:set_selected_cosmetic_slot_index(tab_index_pressed)
		self:_play_sound("play_gui_inventory_tab_click")
	elseif Managers.input:is_device_active("gamepad") then
		local input_service = Managers.input:get_service("hero_view")
		local widget = self._widgets_by_name.item_tabs
		local widget_content = widget.content
		local amount = widget_content.amount
		local current_index = parent._selected_cosmetic_slot_index or 1

		if input_service:get("cycle_previous") and current_index > 1 then
			parent:set_selected_cosmetic_slot_index(current_index - 1)
			self:_play_sound("play_gui_cosmetics_selection_click")
		elseif input_service:get("cycle_next") and current_index < amount then
			parent:set_selected_cosmetic_slot_index(current_index + 1)
			self:_play_sound("play_gui_cosmetics_selection_click")
		end
	end

	local page_button_next = widgets_by_name.page_button_next
	local page_button_previous = widgets_by_name.page_button_previous

	UIWidgetUtils.animate_default_button(page_button_next, dt)
	UIWidgetUtils.animate_default_button(page_button_previous, dt)

	if self:_is_button_hovered(page_button_next) or self:_is_button_hovered(page_button_previous) then
		self:_play_sound("play_gui_inventory_next_hover")
	end

	if self:_is_button_pressed(page_button_next) then
		local next_page_index = self._current_page + 1

		item_grid:set_item_page(next_page_index)
		self:_play_sound("play_gui_cosmetics_inventory_next_click")
	elseif self:_is_button_pressed(page_button_previous) then
		local next_page_index = self._current_page - 1

		item_grid:set_item_page(next_page_index)
		self:_play_sound("play_gui_cosmetics_inventory_next_click")
	end
end)

-- Console version of hero window cosmetic inventory hook
mod:hook_origin(HeroWindowCosmeticsLoadoutInventoryConsole, "_handle_input", function (self, dt, t, ...)
	local widgets_by_name = self._widgets_by_name
	local parent = self.parent
	local item_grid = self._item_grid
	local allow_single_press = false
	local item, is_equipped = item_grid:is_item_pressed(allow_single_press)
	local input_service = self:_input_service()

	if item_grid:is_item_hovered() then
		self:_play_sound("play_gui_inventory_item_hover")
	end

	if item_grid:handle_favorite_marking(input_service) then
		self:_play_sound("play_gui_inventory_item_hover")
	end

	-- Begin mod code ---------------
	if item then
		local item_data = item.data
		local item_slot_type = item_data.slot_type

		if not is_equipped then
			parent:_set_loadout_item(item)
			self:_play_sound("play_gui_equipment_equip_hero")

			if item_slot_type == "skin" then
				parent:update_skin_sync()
			end
		else
			-- Unequip if the pressed item is an equipped hat
			if item_slot_type == "hat" then
				item = {
					data = {
						slot_type = item_slot_type
					}
				}
				parent:_set_loadout_item(item)
				self:_play_sound("play_gui_equipment_equip_hero")

				parent:update_skin_sync()
			end
		end
	end
	-- End mod code ---------------

	local page_button_next = widgets_by_name.page_button_next
	local page_button_previous = widgets_by_name.page_button_previous

	if self:_is_button_hovered(page_button_next) or self:_is_button_hovered(page_button_previous) then
		self:_play_sound("play_gui_inventory_next_hover")
	end

	if self:_is_button_pressed(page_button_next) then
		local next_page_index = self._current_page + 1

		item_grid:set_item_page(next_page_index)
		self:_play_sound("play_gui_equipment_inventory_next_click")
	elseif self:_is_button_pressed(page_button_previous) then
		local next_page_index = self._current_page - 1

		item_grid:set_item_page(next_page_index)
		self:_play_sound("play_gui_equipment_inventory_next_click")
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

-- Allow "equipping" null hats
mod:hook(BackendInterfaceItemPlayfab, "set_loadout_item", function (func, self, item_id, career_name, slot_name, ...)
	if not item_id and slot_name == "slot_hat" then
		self._backend_mirror:set_character_data(career_name, slot_name, item_id)
		self._dirty = true

		return true
	end

	-- Original function
	return func(self, item_id, career_name, slot_name, ...)
end)

-- Disable hat item validation at startup
mod:hook_origin(PlayFabMirrorAdventure, "set_mechanism", function (self, mechanism_key, ...)
		self._mechanism_key = mechanism_key

		if mechanism_key == "versus" then
			self._characters_data_key = "vs_characters_data"
			self._verify_slot_keys_per_affiliation = {
				heroes = {
					"slot_ranged",
					"slot_melee",
					--"slot_hat",
					"slot_skin",
					"slot_necklace",
					"slot_trinket_1",
					"slot_ring",
					"slot_frame",
					"talents",
				},
				dark_pact = {
					"slot_melee",
					"slot_skin",
					"slot_frame",
				},
				spectators = {},
			}
		else
			self._characters_data_key = "characters_data"
			self._verify_slot_keys_per_affiliation = {
				heroes = {
					"slot_ranged",
					"slot_melee",
					--"slot_hat",
					"slot_skin",
					"slot_necklace",
					"slot_trinket_1",
					"slot_ring",
					"slot_frame",
					"talents",
				},
			}
		end
	end
)

-- ##########################################################
-- ################### Callback #############################

-- Call when game state changes (e.g. StateLoading -> StateIngame)
mod.on_game_state_changed = function(status, state)
	if state == "StateLoading" and status == "exit" then
		mod:get_all_hat_nodes()
		mod:load_careers_and_enable_more_hats()
		--mod:prevent_hat_slot_hiding()
		--mod:echo("Initalizing MoreHats...")
	end
end

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
