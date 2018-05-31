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

local Breeds = Breeds
local Managers = Managers
local Unit = Unit
local Vector3Box = Vector3Box
local QuaternionBox = QuaternionBox
local Application = Application
local ScriptUnit = ScriptUnit
local Quaternion = Quaternion
local PhysicsWorld = PhysicsWorld
local Actor = Actor
local World = World

local TerrorEventMixer = TerrorEventMixer

local type = type

-- ##########################################################
-- ################## Functions #############################

-- Switch to next unit type to spawn
mod.next_spawn_breed = function(self)
	local conflict_director = Managers.state.conflict
	if conflict_director then
		conflict_director._show_switch_breed = 1
		
		-- Increment
		mod.breed_name_index = mod.breed_name_index + 1
		if mod.breed_name_index > #(mod:get("unit_list")) then
			mod.breed_name_index = 1
		end
		conflict_director._debug_breed = (mod:get("unit_list"))[mod.breed_name_index] or "skaven_dummy_slave"
		mod:set("selected_unit", conflict_director._debug_breed, false)
	end
end

-- Switch to previous unit type to spawn
mod.previous_spawn_breed = function(self)
	local conflict_director = Managers.state.conflict
	if conflict_director then
		conflict_director._show_switch_breed = 1
		
		-- Decrement
		mod.breed_name_index = mod.breed_name_index - 1
		if mod.breed_name_index < 1 then
			mod.breed_name_index = #(mod:get("unit_list"))
		end
		conflict_director._debug_breed = (mod:get("unit_list"))[mod.breed_name_index] or "skaven_dummy_slave"
		mod:set("selected_unit", conflict_director._debug_breed, false)
	end
end

-- Sets up delayed spawning of breed with delayed raycast
mod.spawn_debug_breed_at_cursor = function(self)
	local conflict_director = Managers.state.conflict
	if conflict_director then
		local local_player = Managers.player:local_player()
		if not local_player then
			return
		end
		
		local local_player_unit = local_player.player_unit
		if Unit.alive(local_player_unit) then
			local final_rotation = Quaternion.multiply(Unit.local_rotation(local_player_unit, 0), Quaternion(Vector3(0, 0, 1), math.pi))

			-- Get the unit's breed entry
			local breed = Breeds[conflict_director._debug_breed]
			if not breed then
				conflict_director._debug_breed = mod:get("selected_unit")
				breed = Breeds[conflict_director._debug_breed]
				if not breed then
					return
				end
			end
			
			-- Check if this unit can be loaded
			if Application.can_get("unit", breed.base_unit) then
				local spawn_queue_id = conflict_director:spawn_queued_unit(breed, "delayed_position", QuaternionBox(final_rotation), breed.debug_spawn_category or "debug_spawn", nil, nil, breed.debug_spawn_optional_data)
				return spawn_queue_id
			end
		end
	end
end

-- Runs raycast. Can't be called directly
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

mod.check_for_inn_or_loading = function(self)	
	if Managers and Managers.state and Managers.state.game_mode then
		local level_key = Managers.state.game_mode:level_key()
		if not level_key or level_key == "inn_level" then
			return true
		end
		
		return false
	else
		return true
	end
end

-- Checks if the command can be used and returns the conflict director
mod.get_status = function(self)
	-- Take the player manager
	local player_manager = Managers.player
	if not player_manager then
		mod:echo("Please wait. The game is not yet ready.")
		return false
	end
	
	-- Take the conflict director
	local conflict_director = Managers.state.conflict
	if not conflict_director then
		mod:echo("Please wait. The game is not yet ready.")
		return false
	end
	
	if player_manager.is_server then
		return true, conflict_director
	end
	
	return false
end

-- Sets up spawning the chosen unit
mod.handle_spawn_unit = function(self)
	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	local result = mod:spawn_debug_breed_at_cursor()
	if result then
		mod:echo("[Spawn]: Created " .. conflict_director._debug_breed .. ".")
	else
		mod:echo("[Spawn]: " .. conflict_director._debug_breed .. " is not available.")
	end
end

-- Switches the chosen unit to the next list entry
mod.handle_next_unit = function(self)
	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	mod:next_spawn_breed()
	mod:echo("[Spawn]: >> " .. conflict_director._debug_breed .. ".")
end

-- Switches the chosen unit to the previous list entry
mod.handle_previous_unit = function(self)
	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	mod:previous_spawn_breed()
	mod:echo("[Spawn]: >> " .. conflict_director._debug_breed .. ".")
end

-- Destroys all units tracked by the conflict director
mod.handle_despawn_units = function(self)
	-- Check that we can start the script
	local is_ready, conflict_director = mod:get_status()
	if not is_ready then
		return
	end
	
	conflict_director:destroy_all_units()
	mod:echo("[Spawn]: Removed all enemies.")
end

-- ##########################################################
-- #################### Hooks ###############################

-- CONFLICT DIRECTOR HOOKS --

-- Create raycasts for queued debug units
mod:hook("ConflictDirector.update_spawn_queue", function(func, self, ...)

	-- Perform delayed raycast if necessary
	if self.spawn_queue_size > 0 then
		local first_spawn_index = self.first_spawn_index
		local spawn_queue = self.spawn_queue
		local d = spawn_queue[first_spawn_index]
	   
		if type(d[2]) == "string" then
			local local_player = Managers.player:local_player()
			if local_player then
				d[2] = Vector3Box(mod:position_at_cursor(local_player) or Vector3(0,0,0))
			else
				self:remove_queued_unit(self.first_spawn_index)
			end
		end
	end
   
	-- Original function
	return func(self, ...)
end)

-- Allow spawns in the keep
mod:hook("ConflictDirector.update", function (func, self, dt, t, ...)

	if not mod:check_for_inn_or_loading() then
		return func(self, dt, t, ...)
	end
	
	self.level_settings = self.level_settings or {}
	self._time = t

	self:check_updated_settings()
	
	if self.director_is_ai_ready then
		local ai_system = Managers.state.entity:system("ai_system")

		TerrorEventMixer.update(t, dt, ai_system.ai_debugger and ai_system.ai_debugger.screen_gui)
	end

	self:update_spawn_queue(t)

	if self._spline_groups_to_spawn then
		for spline_name, group_data in pairs(self._spline_groups_to_spawn) do
			local ai_group_system = Managers.state.entity:system("ai_group_system")
			local spline_ready = ai_group_system:spline_ready(spline_name)

			if spline_ready then
				if spline_ready == "failed" then
					self._spline_groups_to_spawn[spline_name] = nil
				else
					self:_spawn_spline_group(group_data)

					self._spline_groups_to_spawn[spline_name] = nil
				end
			end
		end
	end
end)

-- Enable or disable brains in the keep
mod:hook("AISystem.update_brains", function (func, ...)

	if not mod:check_for_inn_or_loading() then
		return func(...)
	end
	
	return mod:get("enable_keep_ai") and func(...)
end)

-- ##########################################################
-- ################### Callback #############################

-- Call when setting is changed in mod settings
mod.on_setting_changed = function(setting_name)
	if setting_name == "unit_list" then
		local is_ready, conflict_director = mod:get_status()
		if not is_ready then
			return
		end
		
		conflict_director._debug_breed = (mod:get("unit_list"))[1] or "skaven_dummy_slave"
		mod:set("selected_unit", conflict_director._debug_breed, false)
		mod:echo("[Spawn]: >> " .. conflict_director._debug_breed .. ".")
		
	elseif setting_name == "selected_unit" then
		local is_ready, conflict_director = mod:get_status()
		if not is_ready then
			return
		end
		
		conflict_director._debug_breed = mod:get("selected_unit")
		mod:echo("[Spawn]: >> " .. conflict_director._debug_breed .. ".")
	end
end

-- Call when governing settings checkbox is unchecked
mod.on_disabled = function(initial_call)
	mod:disable_all_hooks()
end

-- Call when governing settings checkbox is checked
mod.on_enabled = function(initial_call)
	mod:enable_all_hooks()
	if initial_call then
		mod:set("selected_unit", mod:get("unit_list")[1], false)
	end
end

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
