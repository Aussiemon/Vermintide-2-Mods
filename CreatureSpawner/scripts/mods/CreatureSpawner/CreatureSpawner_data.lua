--[[
	author: Aussiemon
	
	-----
 
	Copyright 2018 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local mod = get_mod("CreatureSpawner")

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

local mod_data = {
	name = "Creature Spawner",               -- Readable mod name
	description = "Spawn various units in maps that support them.",  -- Mod description
	is_togglable = true,            -- If the mod can be enabled/disabled
	is_mutator = false,             -- If the mod is mutator
	mutator_settings = {}          -- Extra settings, if it's mutator
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

return mod_data
