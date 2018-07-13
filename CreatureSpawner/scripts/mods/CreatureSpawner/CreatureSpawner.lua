--[[
	author: Aussiemon
	
	-----
 
	Copyright 2018 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	This mod lets you spawn various units in maps that support them.
--]]

local mod = get_mod("CreatureSpawner")

-- ##########################################################
-- ################## Variables #############################

mod.breed_name_index = mod.breed_name_index or 1

mod:command("save_unit", "save selected creature to a slot number <1-3>", function(...) mod.handle_save_unit_slot(...) end)
mod:command("selected_units", "report selected and saved Creature Spawner creatures", function(...) mod.handle_unit_slots_report(...) end)

local AISystem = AISystem
local Actor = Actor
local Application = Application
local Breeds = Breeds
local ConflictDirector = ConflictDirector
local HordeSpawner = HordeSpawner
local Managers = Managers
local PhysicsWorld = PhysicsWorld
local Quaternion = Quaternion
local QuaternionBox = QuaternionBox
local ScriptUnit = ScriptUnit
local SpecialsPacing = SpecialsPacing
local Unit = Unit
local Vector3Box = Vector3Box
local World = World

local BTEnterHooks = BTEnterHooks
local BTLootRatFleeAction = BTLootRatFleeAction
local BTSpawnAllies = BTSpawnAllies
local EnemyPackageLoader = EnemyPackageLoader
local EnemyPackageLoaderSettings = EnemyPackageLoaderSettings
local NavigationGroupManager = NavigationGroupManager
local TerrorEventMixer = TerrorEventMixer
local Utility = Utility

local math = math
local pairs = pairs
local table = table
local tostring = tostring
local type = type

-- ##########################################################
-- ################## Functions #############################

-- SETUP --

-- Build lists of units
mod.build_unit_lists = function(self)
	
	-- Visit all breed entries
	for breed_name, breed in pairs(Breeds) do
	
		-- Check for breed categories
		local categories = mod.unit_categories[breed_name]
		if categories then
			
			-- Add unit to category breed lists
			local num_individual_categories = #categories
			for i = 1, num_individual_categories do
				table.insert(mod[categories[i] .. "_units"], breed_name)
			end
			table.insert(mod["all_units"], breed_name)
		else
			mod:echo("[Spawn]: Unrecognized breed name " .. breed_name)
		end
	end
	
	-- Sort breed categories
	local num_categories = #mod.unit_category_names
	for i = 1, num_categories do
		table.sort(mod[mod.unit_category_names[i] .. "_units"], function(breed1, breed2) return breed1 < breed2 end)
	end
end

-- BREED SWITCHING --

-- Switch to next unit type to spawn
mod.next_spawn_breed = function(self)
	local conflict_director = Managers.state.conflict
	if conflict_director then
		conflict_director._show_switch_breed = 1
		
		-- Increment
		local entry_index = mod.breed_name_index
		repeat
			-- Switch to the next unit
			mod.breed_name_index = mod.breed_name_index + 1
			if mod.breed_name_index > #(mod[mod:get("cs_unit_list")]) then
				mod.breed_name_index = 1
			end
			
			conflict_director._debug_breed = (mod[mod:get("cs_unit_list")])[mod.breed_name_index] or "skaven_dummy_slave"
			
			-- Switch to this unit if the package and breed are available
			local breed = Breeds[conflict_director._debug_breed]
			if breed then
				break
			end
		until mod.breed_name_index == entry_index
		
		if mod.breed_name_index == entry_index then
			mod:echo("[Spawn]: No units from the selected list are available right now.")
		else
			mod:set("cs_selected_unit", conflict_director._debug_breed, false)
		end
	end
end

-- Switch to previous unit type to spawn
mod.previous_spawn_breed = function(self)
	local conflict_director = Managers.state.conflict
	if conflict_director then
		conflict_director._show_switch_breed = 1
		
		-- Decrement
		local entry_index = mod.breed_name_index
		repeat
			-- Switch to the next unit
			mod.breed_name_index = mod.breed_name_index - 1
			if mod.breed_name_index < 1 then
				mod.breed_name_index = #(mod[mod:get("cs_unit_list")])
			end
			
			conflict_director._debug_breed = (mod[mod:get("cs_unit_list")])[mod.breed_name_index] or "skaven_dummy_slave"
			
			-- Switch to this unit if the package and breed are available
			local breed = Breeds[conflict_director._debug_breed]
			if breed then
				break
			end
		until mod.breed_name_index == entry_index
		
		if mod.breed_name_index == entry_index then
			mod:echo("[Spawn]: No units from the selected list are available right now.")
		else
			mod:set("cs_selected_unit", conflict_director._debug_breed, false)
		end
	end
end


-- SPAWN FUNCTIONS --

-- Spawn breed at raycast position
mod.spawn_debug_breed_at_cursor = function(self)

	-- Get the conflict director
	local conflict_director = Managers.state.conflict
	if conflict_director then
		local local_player = Managers.player:local_player()
		if not local_player then
			return
		end
		
		-- Get position and rotation from the local player
		local final_rotation
		local final_position = mod:position_at_cursor(local_player)
		
		local local_player_unit = local_player.player_unit
		if Unit.alive(local_player_unit) then
			final_rotation = Quaternion.multiply(Unit.local_rotation(local_player_unit, 0), Quaternion(Vector3(0, 0, 1), math.pi))
		else
			final_rotation = Quaternion(0, 0, 0, 0)
		end

		-- Get the unit's breed entry
		local breed = Breeds[conflict_director._debug_breed]
		
		-- Load this unit if the breed is available
		if breed then
			breed.debug_spawn_optional_data = breed.debug_spawn_optional_data or {}
			breed.debug_spawn_optional_data.ignore_breed_limits = true
			
			local spawned_unit = conflict_director:spawn_queued_unit(breed, Vector3Box(final_position), QuaternionBox(final_rotation),
					breed.debug_spawn_category or "debug_spawn", nil, nil, breed.debug_spawn_optional_data)
					
			mod:echo("[Spawn]: Created " .. tostring(conflict_director._debug_breed) .. ".")
		else
			mod:echo("[Spawn]: " .. tostring(conflict_director._debug_breed) .. " is not available.")
		end
	end
end

-- Get raycast position
mod.position_at_cursor = function(self, local_player)
	local viewport_name = local_player.viewport_name

	local camera_position = Managers.state.camera:camera_position(viewport_name)
	local camera_rotation = Managers.state.camera:camera_rotation(viewport_name)
	local camera_direction = Quaternion.forward(camera_rotation)
	
	local range = 500
	
	local world = Managers.world:world("level_world")
	local physics_world = World.get_data(world, "physics_world")

	local new_position
	local result = PhysicsWorld.immediate_raycast(
		physics_world,
		camera_position,
		camera_direction,
		range,
		"all",
		"collision_filter",
		"filter_ray_horde_spawn")
		
	if result then
		local num_hits = #result

		for i = 1, num_hits, 1 do
			local hit = result[i]
			local hit_actor = hit[4]
			local hit_unit = Actor.unit(hit_actor)
			local ray_hit_self = local_player.player_unit and (hit_unit == local_player.player_unit)

			if not ray_hit_self then
				new_position = hit[1]
				break
			end
		end
	end
	
	return new_position or camera_position
end


-- STATUS CHECKS --

-- Check if the command can be used and returns the conflict director
mod.get_status = function(self, suppress_messages)

	-- Take the player manager
	local player_manager = Managers.player
	if not player_manager then
		if not suppress_messages then
			mod:echo("[Spawn]: Please wait. The game is not yet ready.")
		end
		return false
	end
	
	-- Take the conflict director
	local conflict_director = Managers.state.conflict
	if not conflict_director then
		if not suppress_messages then
			mod:echo("[Spawn]: Please wait. The game is not yet ready.")
		end
		return false
	end
	
	if player_manager.is_server then
		return true, conflict_director
	end
	
	return false
end

-- Check if the lobby is currently in the Keep
mod.is_in_keep = function(self)	
	if Managers and Managers.state and Managers.state.game_mode then
		local level_key = Managers.state.game_mode:level_key()
		return level_key and level_key == "inn_level"
	end
end


-- COMMAND HANDLERS --

-- Take an ellipsis of arguments and transform them into a string
mod.process_argument_string = function(...)
	local args = {...}
	if args and #args > 0 then

		local this_argument = ""
	   
		-- Process arguments into a single string
		for key, value in pairs(args) do
		
			if type(value) == "string" then
				if this_argument ~= "" then
					this_argument = this_argument .. " " .. value
				else
					this_argument = value
				end
				
			elseif type(value) == "table" then
				for value_key, value_value in pairs(value) do
					if type(value_value) == "string" then
						if this_argument ~= "" then
							this_argument = this_argument .. " " .. value_value
						else
							this_argument = value_value
						end
					end
				end
			end
		end
		
		return this_argument
	end
		
	return "nil"
end

-- Set up spawning the chosen unit
mod.handle_spawn_unit = function(self)

	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	mod:spawn_debug_breed_at_cursor()
end

-- Set up spawning the first saved unit
mod.handle_spawn_unit_one = function(self)

	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	-- Spawn the saved unit
	local original_selected_unit = conflict_director._debug_breed
	conflict_director._debug_breed = mod:get("cs_saved_unit_one")
	
	mod:handle_spawn_unit()
	
	-- Restore the selected unit
	conflict_director._debug_breed = original_selected_unit
end

-- Set up spawning the second saved unit
mod.handle_spawn_unit_two = function(self)

	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	-- Spawn the saved unit
	local original_selected_unit = conflict_director._debug_breed
	conflict_director._debug_breed = mod:get("cs_saved_unit_two")
	
	mod:handle_spawn_unit()
	
	-- Restore the selected unit
	conflict_director._debug_breed = original_selected_unit
end

-- Set up spawning the third saved unit
mod.handle_spawn_unit_three = function(self)

	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	-- Spawn the saved unit
	local original_selected_unit = conflict_director._debug_breed
	conflict_director._debug_breed = mod:get("cs_saved_unit_three")
	
	mod:handle_spawn_unit()
	
	-- Restore the selected unit
	conflict_director._debug_breed = original_selected_unit
end

-- Switch the chosen unit to the next list entry
mod.handle_next_unit = function(self)

	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	mod:next_spawn_breed()
	mod:echo("[Spawn]: >> " .. tostring(conflict_director._debug_breed) .. ".")
end

-- Switch the chosen unit to the previous list entry
mod.handle_previous_unit = function(self)

	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	mod:previous_spawn_breed()
	mod:echo("[Spawn]: >> " .. tostring(conflict_director._debug_breed) .. ".")
end

-- Destroy all units tracked by the conflict director
mod.handle_despawn_units = function(self)
	
	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	conflict_director:destroy_all_units()
	mod:echo("[Spawn]: Removed all enemies.")
end

-- Save the currently-selected unit to the given save slot
mod.handle_save_unit_slot = function(...)
	
	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	local selected_breed = conflict_director._debug_breed
	local slot = mod.process_argument_string(...)
	
	if slot == "1" or slot == "one" then
		mod:set("cs_saved_unit_one", conflict_director._debug_breed, false)
		mod:echo("[Spawn]: Saved " .. tostring(conflict_director._debug_breed) .. " to slot one.")
		
	elseif slot == "2" or slot == "two" then
		mod:set("cs_saved_unit_two", conflict_director._debug_breed, false)
		mod:echo("[Spawn]: Saved " .. tostring(conflict_director._debug_breed) .. " to slot two.")
		
	elseif slot == "3" or slot == "three" then
		mod:set("cs_saved_unit_three", conflict_director._debug_breed, false)
		mod:echo("[Spawn]: Saved " .. tostring(conflict_director._debug_breed) .. " to slot three.")
		
	else
		mod:echo("[Spawn]: Unrecognized save slot. Please use numbers 1-3.")
	end
end

-- Report selected and saved Creature Spawner creatures
mod.handle_unit_slots_report = function(...)

	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	local selected_breed = conflict_director._debug_breed
	
	mod:echo("Selected unit: " .. selected_breed or "None")
	mod:echo("Saved unit slot one: " .. mod:get("cs_saved_unit_one") or "None")
	mod:echo("Saved unit slot two: " .. mod:get("cs_saved_unit_two") or "None")
	mod:echo("Saved unit slot three: " .. mod:get("cs_saved_unit_three") or "None")
end

-- ##########################################################
-- #################### Hooks ###############################

-- AI HOOKS --

-- Allow unit spawns in the Keep
mod:hook(ConflictDirector, "update", function (func, self, dt, t, ...)

	-- Use original function if necessary
	if not mod:is_in_keep() then
		return func(self, dt, t, ...)
	end
	
	-- Empty horde spawner
	if not self.horde_spawner then
		self.horde_spawner = HordeSpawner:new(self._world, {})
	end
	
	-- Empty specials pacing
	if not self.specials_pacing then
		self.specials_pacing = SpecialsPacing:new(self.nav_world)
		self.specials_pacing:enable(false)
	end
	
	-- Otherwise replace update with stripped-down functionality
	self.level_settings = self.level_settings or {}
	self._time = t

	self:update_spawn_queue(t)
end)

-- Enable or disable AI brains by mod setting
mod:hook(AISystem, "update_brains", function (func, ...)
	if not mod:is_in_keep() then
		return mod:get("cs_enable_mission_ai") and func(...)
		
	else
		return mod:get("cs_enable_keep_ai") and func(...)
	end
end)

-- PREVENT UNIT CRASHES (AKA I hope you like defensive coding) --

-- Prevent missing blackboard value crash
mod:hook(Utility, "get_action_utility", function (func, breed_action, action_name, blackboard, ...)
	local blackboard_action_data = blackboard.utility_actions[action_name]
	local considerations = breed_action.considerations

	-- Instantiate blackboard values
	for name, consideration in pairs(considerations) do
		repeat
			local is_table = type(consideration) == "table"

			if not is_table then
				break
			end

			local input = consideration.blackboard_input
			local blackboard_value = blackboard_action_data[input] or blackboard[input]
			if not blackboard_value then
				if blackboard_action_data[input] then
					blackboard_action_data[input] = math.random()
				else
					blackboard[input] = math.random()
				end
			end
		until true
	end
	
	-- Original function
	return func(breed_action, action_name, blackboard, ...)
end)


-- Prevent Spinemanglr summon crash #1
mod:hook(BTEnterHooks, "warlord_defensive_on_enter", function (func, unit, blackboard, ...)
	return blackboard.spawn_allies_positions and func(unit, blackboard, ...)
end)

-- Prevent Spinemanglr summon crash #2
mod:hook(BTSpawnAllies, "enter", function (func, self, unit, blackboard, ...)
	if not mod:is_in_keep() and (blackboard.override_spawn_allies_call_position or blackboard.has_call_position) then
		return func(self, unit, blackboard, ...)
	end
	
	local action = self._tree_node.action_data
	local find_spawn_points = action.find_spawn_points

	-- If we need to find spawn points, run the function early to see if it returns
	if find_spawn_points then
		local data = {
			end_time = math.huge
		}
		blackboard.spawning_allies = data
		
		local call_position = BTSpawnAllies.find_spawn_point(unit, blackboard, action, data)
		if call_position then
			return func(self, unit, blackboard, ...)
		else
			data.end_time = -1
		end
	end
end)

-- Prevent Spinemanglr summon crash #3
mod:hook(BTSpawnAllies, "find_spawn_point", function (func, unit, blackboard, action, data, override_spawn_group, ...)
	local spawn_group = override_spawn_group or action.optional_go_to_spawn or action.spawn_group
	local spawner_system = Managers.state.entity:system("spawner_system")
	local spawners_raw = spawner_system._id_lookup[spawn_group]

	if not spawners_raw and action.use_fallback_spawners then
		spawners_raw = spawner_system._enabled_spawners
	end
	
	-- Use original function if raw spawners exist in this level
	return spawners_raw and func(unit, blackboard, action, data, override_spawn_group, ...)
end)

-- Prevent keep navigation crash
mod:hook(NavigationGroupManager, "a_star_cached_between_positions", function (func, ...)
	return (not mod:is_in_keep() and func(...)) or false
end)

-- Prevent keep navigation crash
mod:hook(Unit, "create_actor", function (func, self, id, ...)
	if not mod:is_in_keep() or id ~= -1 then
		return func(self, id, ...)
	end
end)

-- Prevent keep navigation crash
mod:hook(BTLootRatFleeAction, "enter", function (func, ...)
	return (not mod:is_in_keep() and func(...)) or false
end)

-- Prevent keep navigation crash
mod:hook(BTLootRatFleeAction, "run", function (func, ...)
	return (not mod:is_in_keep() and func(...)) or "running"
end)

-- Prevent keep navigation crash
mod:hook(BTLootRatFleeAction, "leave", function (func, ...)
	return (not mod:is_in_keep() and func(...)) or false
end)

-- UNIT PACKAGE HOOKS --

-- Prevent all missing unit crashes
mod:hook(World, "spawn_unit", function (func, self, unit_name, ...)
	if Application.can_get("unit", unit_name) then
		return func(self, unit_name, ...)
	else
		local fallback_unit_name = "units/hub_elements/empty"
		return func(self, fallback_unit_name, ...)
	end
end)

-- Load unloaded packages for requested units
mod:hook(EnemyPackageLoader, "request_breed", function (func, self, breed_name, ignore_breed_limits, ...)
	ignore_breed_limits = true
	
	-- Set up breed category for this breed_name
	if not self._breed_category_lookup[breed_name] then
		local breed_list = table.clone(mod.all_units)
		self:_create_breed_category_lookup(breed_list, "creature_spawner", math.huge)
	end
	
	-- Original function
	local result, replacement_breed_name = func(self, breed_name, ignore_breed_limits, ...)
	return result, replacement_breed_name
end)

-- ##########################################################
-- ################### Callback #############################

-- Call when game state changes (e.g. StateLoading -> StateIngame)
mod.on_game_state_changed = function(status, state)
	local suppress_messages = true
	local is_ready, conflict_director = mod:get_status(suppress_messages)
	if not is_ready then
		return
	end
	if not mod:get("cs_selected_unit") then
		conflict_director._debug_breed = (mod[mod:get("cs_unit_list")])[1] or "skaven_dummy_slave"
		mod:set("cs_selected_unit", conflict_director._debug_breed, false)
	else
		conflict_director._debug_breed = mod:get("cs_selected_unit")
	end
end

-- Call when setting is changed in mod settings
mod.on_setting_changed = function(setting_name)
	if setting_name == "cs_unit_list" then
		local is_ready, conflict_director = mod:get_status()
		if not is_ready then
			return
		end
		
		conflict_director._debug_breed = (mod[mod:get("cs_unit_list")])[1] or "skaven_dummy_slave"
		mod:set("cs_selected_unit", conflict_director._debug_breed, false)
		mod:echo("[Spawn]: >> " .. tostring(conflict_director._debug_breed) .. ".")
		
	elseif setting_name == "cs_selected_unit" then
		local is_ready, conflict_director = mod:get_status()
		if not is_ready then
			return
		end
		
		conflict_director._debug_breed = mod:get("cs_selected_unit")
		mod:echo("[Spawn]: >> " .. tostring(conflict_director._debug_breed) .. ".")
	end
end

-- ##########################################################
-- ################### Script ###############################

mod:build_unit_lists()

-- ##########################################################
