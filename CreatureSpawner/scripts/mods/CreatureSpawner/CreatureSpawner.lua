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

local mod_data = {
	name = "Creature Spawner",               -- Readable mod name
	description = "Spawn various units in maps that support them.",  -- Mod description
	is_togglable = true,            -- If the mod can be enabled/disabled
	is_mutator = false,             -- If the mod is mutator
	mutator_settings = {}          -- Extra settings, if it's mutator
}

mod.regular_units = {
	"chaos_berzerker",
	"chaos_corruptor_sorcerer",
	--"chaos_dummy_sorcerer",
	--"chaos_dummy_troll",
	--"chaos_exalted_champion_norsca",
	--"chaos_exalted_champion_warcamp",
	--"chaos_exalted_sorcerer",
	"chaos_fanatic",
	"chaos_marauder",
	--"chaos_marauder_tutorial",
	"chaos_marauder_with_shield",
	"chaos_plague_sorcerer",
	--"chaos_plague_wave_spawner",
	"chaos_raider",
	--"chaos_raider_tutorial",
	"chaos_spawn",
	--"chaos_spawn_exalted_champion_norsca",
	--"chaos_tentacle",
	"chaos_tentacle_sorcerer",
	"chaos_troll",
	"chaos_vortex",
	"chaos_vortex_sorcerer",
	"chaos_warrior",
	--"chaos_zombie",
	"critter_pig",
	"critter_rat",
	--"pet_pig",
	--"pet_rat",
	"skaven_clan_rat",
	--"skaven_clan_rat_tutorial",
	"skaven_clan_rat_with_shield",
	--"skaven_dummy_clan_rat",
	--"skaven_dummy_slave",
	--"skaven_grey_seer",
	"skaven_gutter_runner",
	"skaven_loot_rat",
	"skaven_pack_master",
	"skaven_plague_monk",
	"skaven_poison_wind_globadier",
	"skaven_rat_ogre",
	"skaven_ratling_gunner",
	"skaven_slave",
	"skaven_storm_vermin",
	--"skaven_storm_vermin_champion",
	"skaven_storm_vermin_commander",
	--"skaven_storm_vermin_warlord",
	"skaven_storm_vermin_with_shield",
	"skaven_stormfiend",
	--"skaven_stormfiend_boss",
	--"skaven_stormfiend_demo",
	"skaven_warpfire_thrower"
}

mod.dummy_units = {
	"chaos_dummy_sorcerer",
	"chaos_dummy_troll",
	"skaven_dummy_clan_rat",
	"skaven_dummy_slave",
}

mod.special_units = {
	"chaos_berzerker",
	"chaos_corruptor_sorcerer",
	"chaos_exalted_champion_norsca",
	"chaos_exalted_champion_warcamp",
	"chaos_exalted_sorcerer",
	"chaos_plague_sorcerer",
	"chaos_raider",
	"chaos_spawn",
	"chaos_spawn_exalted_champion_norsca",
	"chaos_tentacle_sorcerer",
	"chaos_troll",
	"chaos_vortex_sorcerer",
	"chaos_warrior",
	"skaven_grey_seer",
	"skaven_gutter_runner",
	"skaven_loot_rat",
	"skaven_pack_master",
	"skaven_plague_monk",
	"skaven_poison_wind_globadier",
	"skaven_rat_ogre",
	"skaven_ratling_gunner",
	"skaven_storm_vermin",
	"skaven_storm_vermin_champion",
	"skaven_storm_vermin_commander",
	"skaven_storm_vermin_warlord",
	"skaven_storm_vermin_with_shield",
	"skaven_stormfiend",
	"skaven_stormfiend_boss",
	"skaven_warpfire_thrower"
}

mod.boss_units = {
	"chaos_exalted_champion_norsca",
	"chaos_exalted_champion_warcamp",
	"chaos_exalted_sorcerer",
	"chaos_spawn",
	"chaos_spawn_exalted_champion_norsca",
	"chaos_troll",
	"skaven_grey_seer",
	"skaven_rat_ogre",
	"skaven_storm_vermin_warlord",
	"skaven_stormfiend",
	"skaven_stormfiend_boss",
}

mod.all_units = {
	"chaos_berzerker",
	"chaos_corruptor_sorcerer",
	"chaos_dummy_sorcerer",
	"chaos_dummy_troll",
	"chaos_exalted_champion_norsca",
	"chaos_exalted_champion_warcamp",
	"chaos_exalted_sorcerer",
	"chaos_fanatic",
	"chaos_marauder",
	"chaos_marauder_tutorial",
	"chaos_marauder_with_shield",
	"chaos_plague_sorcerer",
	"chaos_plague_wave_spawner",
	"chaos_raider",
	"chaos_raider_tutorial",
	"chaos_spawn",
	"chaos_spawn_exalted_champion_norsca",
	"chaos_tentacle",
	"chaos_tentacle_sorcerer",
	"chaos_troll",
	"chaos_vortex",
	"chaos_vortex_sorcerer",
	"chaos_warrior",
	"chaos_zombie",
	"critter_pig",
	"critter_rat",
	"pet_pig",
	"pet_rat",
	"skaven_clan_rat",
	"skaven_clan_rat_tutorial",
	"skaven_clan_rat_with_shield",
	"skaven_dummy_clan_rat",
	"skaven_dummy_slave",
	"skaven_grey_seer",
	"skaven_gutter_runner",
	"skaven_loot_rat",
	"skaven_pack_master",
	"skaven_plague_monk",
	"skaven_poison_wind_globadier",
	"skaven_rat_ogre",
	"skaven_ratling_gunner",
	"skaven_slave",
	"skaven_storm_vermin",
	"skaven_storm_vermin_champion",
	"skaven_storm_vermin_commander",
	"skaven_storm_vermin_warlord",
	"skaven_storm_vermin_with_shield",
	"skaven_stormfiend",
	"skaven_stormfiend_boss",
	"skaven_stormfiend_demo",
	"skaven_warpfire_thrower"
}

mod_data.options_widgets = { -- Widget settings for the mod options menu
	{
		["setting_name"] = "selected_unit",
		["widget_type"] = "dropdown",
		["text"] = "Selected Unit",
		["tooltip"] = "Selected Unit\n" ..
			"Allows choosing the unit selected for spawning.",
		["options"] = {
			{text = "chaos_berzerker", value = "chaos_berzerker"},
			{text = "chaos_corruptor_sorcerer", value = "chaos_corruptor_sorcerer"},
			{text = "chaos_dummy_sorcerer", value = "chaos_dummy_sorcerer"},
			{text = "chaos_dummy_troll", value = "chaos_dummy_troll"},
			{text = "chaos_exalted_champion_norsca", value = "chaos_exalted_champion_norsca"},
			{text = "chaos_exalted_champion_warcamp", value = "chaos_exalted_champion_warcamp"},
			{text = "chaos_exalted_sorcerer", value = "chaos_exalted_sorcerer"},
			{text = "chaos_fanatic", value = "chaos_fanatic"},
			{text = "chaos_marauder", value = "chaos_marauder"},
			{text = "chaos_marauder_tutorial", value = "chaos_marauder_tutorial"},
			{text = "chaos_marauder_with_shield", value = "chaos_marauder_with_shield"},
			{text = "chaos_plague_sorcerer", value = "chaos_plague_sorcerer"},
			{text = "chaos_plague_wave_spawner", value = "chaos_plague_wave_spawner"},
			{text = "chaos_raider", value = "chaos_raider"},
			{text = "chaos_raider_tutorial", value = "chaos_raider_tutorial"},
			{text = "chaos_spawn", value = "chaos_spawn"},
			{text = "chaos_spawn_exalted_champion_norsca", value = "chaos_spawn_exalted_champion_norsca"},
			{text = "chaos_tentacle", value = "chaos_tentacle"},
			{text = "chaos_tentacle_sorcerer", value = "chaos_tentacle_sorcerer"},
			{text = "chaos_troll", value = "chaos_troll"},
			{text = "chaos_vortex", value = "chaos_vortex"},
			{text = "chaos_vortex_sorcerer", value = "chaos_vortex_sorcerer"},
			{text = "chaos_warrior", value = "chaos_warrior"},
			{text = "chaos_zombie", value = "chaos_zombie"},
			{text = "critter_pig", value = "critter_pig"},
			{text = "critter_rat", value = "critter_rat"},
			{text = "pet_pig", value = "pet_pig"},
			{text = "pet_rat", value = "pet_rat"},
			{text = "skaven_clan_rat", value = "skaven_clan_rat"},
			{text = "skaven_clan_rat_tutorial", value = "skaven_clan_rat_tutorial"},
			{text = "skaven_clan_rat_with_shield", value = "skaven_clan_rat_with_shield"},
			{text = "skaven_dummy_clan_rat", value = "skaven_dummy_clan_rat"},
			{text = "skaven_dummy_slave", value = "skaven_dummy_slave"},
			{text = "skaven_grey_seer", value = "skaven_grey_seer"},
			{text = "skaven_gutter_runner", value = "skaven_gutter_runner"},
			{text = "skaven_loot_rat", value = "skaven_loot_rat"},
			{text = "skaven_pack_master", value = "skaven_pack_master"},
			{text = "skaven_plague_monk", value = "skaven_plague_monk"},
			{text = "skaven_poison_wind_globadier", value = "skaven_poison_wind_globadier"},
			{text = "skaven_rat_ogre", value = "skaven_rat_ogre"},
			{text = "skaven_ratling_gunner", value = "skaven_ratling_gunner"},
			{text = "skaven_slave", value = "skaven_slave"},
			{text = "skaven_storm_vermin", value = "skaven_storm_vermin"},
			{text = "skaven_storm_vermin_champion", value = "skaven_storm_vermin_champion"},
			{text = "skaven_storm_vermin_commander", value = "skaven_storm_vermin_commander"},
			{text = "skaven_storm_vermin_warlord", value = "skaven_storm_vermin_warlord"},
			{text = "skaven_storm_vermin_with_shield", value = "skaven_storm_vermin_with_shield"},
			{text = "skaven_stormfiend", value = "skaven_stormfiend"},
			{text = "skaven_stormfiend_boss", value = "skaven_stormfiend_boss"},
			{text = "skaven_stormfiend_demo", value = "skaven_stormfiend_demo"},
			{text = "skaven_warpfire_thrower", value = "skaven_warpfire_thrower"},
		},
		["default_value"] = "skaven_dummy_slave", -- Default first option is enabled. In this case mod.regular_units
	},
	{
		["setting_name"] = "unit_list",
		["widget_type"] = "dropdown",
		["text"] = "Available Unit List",
		["tooltip"] = "Available Unit List\n" ..
			"Allows choosing which units are available to spawn.\n\n" ..
			"-- REGULAR --\nAll 'normal' unit types.\n\n" ..
			"-- DUMMY --\nDummy units without AI.\n\n" ..
			"-- SPECIAL --\nOnly regular pingable units.\n\n" ..
			"-- BOSS --\nAll bosses and minibosses.\n\n" ..
			"-- ALL --\nAll known units.",
		["options"] = {
			{text = "Regular", value = mod.regular_units},
			{text = "Dummy", value = mod.dummy_units},
			{text = "Special", value = mod.special_units},
			{text = "Boss", value = mod.boss_units},
			{text = "All", value = mod.all_units},
		},
		["default_value"] = mod.regular_units, -- Default first option is enabled. In this case mod.regular_units
	},
	{
		["setting_name"] = "creature_spawner_spawn_keybind",
		["widget_type"] = "keybind",
		["text"] = "Keybind: Spawn Unit",
		["tooltip"] = "Choose the keybinding that spawns a unit.",
		["default_value"] = {"f5"},
		["action"] = "handle_spawn_unit"
	},
	{
		["setting_name"] = "creature_spawner_next_keybind",
		["widget_type"] = "keybind",
		["text"] = "Keybind: Next Unit",
		["tooltip"] = "Choose the keybinding that selects the next unit.",
		["default_value"] = {"f6"},
		["action"] = "handle_next_unit"
	},
	{
		["setting_name"] = "creature_spawner_prev_keybind",
		["widget_type"] = "keybind",
		["text"] = "Keybind: Previous Unit",
		["tooltip"] = "Choose the keybinding that selects the previous unit.",
		["default_value"] = {"f7"},
		["action"] = "handle_previous_unit"
	},
	{
		["setting_name"] = "creature_spawner_destroy_keybind",
		["widget_type"] = "keybind",
		["text"] = "Keybind: Destroy All Units",
		["tooltip"] = "Choose the keybinding that destroys all units.",
		["default_value"] = {},
		["action"] = "handle_despawn_units"
	},
	{
		["setting_name"] = "enable_keep_ai",
		["widget_type"] = "checkbox",
		["text"] = "Enable AI in Keep",
		["tooltip"] = "Enable AI in Keep\n" ..
					"[THIS SETTING MAY RESULT IN CRASHES]" ..
					"Toggle AI perception and pathfinding in the Keep on / off",
		["default_value"] = false -- Default first option is enabled. In this case true
	}
}

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

mod:initialize_data(mod_data)

-- ##########################################################
