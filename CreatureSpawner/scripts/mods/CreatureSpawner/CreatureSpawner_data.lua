--[[
	author: Aussiemon
	
	-----
 
	Copyright 2019 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local mod = get_mod("CreatureSpawner")

mod.regular_units = {}
mod.dummy_units = {}
mod.misc_units = {}
mod.special_units = {}
mod.boss_units = {}
mod.all_units = {}

mod.unit_category_names = {
	"regular",
	"dummy",
	"misc",
	"special",
	"boss",
	"all"
}

mod.unit_categories = {
	beastmen_bestigor = {
		"regular",
		"special",
	},
	beastmen_bestigor_dummy = {
		"dummy",
		"misc",
	},
	beastmen_gor = {
		"regular",
	},
	beastmen_gor_dummy = {
		"dummy",
		"misc",
	},
	beastmen_minotaur = {
		"regular",
		"boss",
	},
	beastmen_standard_bearer = {
		"regular",
		"special",
	},
	beastmen_standard_bearer_crater = {
		"misc",
	},
	beastmen_ungor = {
		"regular",
	},
	beastmen_ungor_dummy = {
		"dummy",
		"misc",
	},
	beastmen_ungor_archer = {
		"regular",
	},
	chaos_berzerker = {
		"regular",
		"special",
	},
	chaos_corruptor_sorcerer = {
		"regular",
		"special",
	},
	chaos_dummy_exalted_sorcerer_drachenfels = {
		"dummy",
		"misc",
	},
	chaos_dummy_sorcerer = {
		"dummy",
		"misc",
	},
	chaos_dummy_troll = {
		"dummy",
		"misc",
	},
	chaos_exalted_champion_norsca = {
		"boss",
	},
	chaos_exalted_champion_warcamp = {
		"boss",
	},
	chaos_exalted_sorcerer = {
		"boss",
	},
	chaos_exalted_sorcerer_drachenfels = {
		"boss",
	},
	chaos_fanatic = {
		"regular",
	},
	chaos_marauder = {
		"regular",
	},
	chaos_marauder_tutorial = {
		"misc",
	},
	chaos_marauder_with_shield = {
		"regular",
	},
	chaos_mutator_sorcerer = {
		"misc",
	},
	chaos_plague_sorcerer = {
		"misc",
	},
	chaos_plague_wave_spawner = {
		"misc",
	},
	chaos_raider = {
		"regular",
		"special",
	},
	chaos_raider_tutorial = {
		"misc",
	},
	chaos_spawn = {
		"regular",
		"boss",
	},
	chaos_spawn_exalted_champion_norsca = {
		"boss",
	},
	chaos_tentacle = {
		"misc",
	},
	chaos_tentacle_sorcerer = {
		"misc",
	},
	chaos_troll = {
		"regular",
		"boss",
	},
	chaos_vortex = {
		"misc",
	},
	chaos_vortex_sorcerer = {
		"regular",
		"special",
	},
	chaos_warrior = {
		"regular",
		"special",
	},
	chaos_zombie = {
		"misc",
	},
	critter_pig = {
		"regular",
	},
	critter_rat = {
		"regular",
	},
	pet_pig = {
		"misc",
	},
	pet_rat = {
		"misc",
	},
	skaven_clan_rat = {
		"regular",
	},
	skaven_clan_rat_tutorial = {
		"misc",
	},
	skaven_clan_rat_with_shield = {
		"regular",
	},
	skaven_dummy_clan_rat = {
		"dummy",
		"misc",
	},
	skaven_dummy_slave = {
		"dummy",
		"misc",
	},
	skaven_explosive_loot_rat = {
		"misc",
	},
	skaven_grey_seer = {
		"boss",
	},
	skaven_gutter_runner = {
		"regular",
		"special",
	},
	skaven_loot_rat = {
		"regular",
		"special",
	},
	skaven_pack_master = {
		"regular",
		"special",
	},
	skaven_plague_monk = {
		"regular",
		"special",
	},
	skaven_poison_wind_globadier = {
		"regular",
		"special",
	},
	skaven_rat_ogre = {
		"regular",
		"boss",
	},
	skaven_ratling_gunner = {
		"regular",
		"special",
	},
	skaven_slave = {
		"regular",
	},
	skaven_storm_vermin = {
		"regular",
		"special",
	},
	skaven_storm_vermin_champion = {
		"misc",
		"boss",
	},
	skaven_storm_vermin_commander = {
		"regular",
		"special",
	},
	skaven_storm_vermin_warlord = {
		"boss",
	},
	skaven_storm_vermin_with_shield = {
		"regular",
		"special",
	},
	skaven_stormfiend = {
		"regular",
		"boss",
	},
	skaven_stormfiend_boss = {
		"boss",
	},
	skaven_stormfiend_demo = {
		"misc",
		"boss",
	},
	skaven_warpfire_thrower = {
		"regular",
		"special",
	}
}

mod.ai_blacklist = {
	chaos_exalted_sorcerer_drachenfels = true
}

local mod_data = {
	name = "Creature Spawner",               -- Readable mod name
	description = "Spawn various units in maps that support them.",  -- Mod description
	is_togglable = true,            -- If the mod can be enabled/disabled
	is_mutator = false,             -- If the mod is mutator
	mutator_settings = {}          -- Extra settings, if it's mutator
}

mod_data.options_widgets = { -- Widget settings for the mod options menu
	-- { -- Selected spawning unit
		-- ["setting_name"] = "cs_selected_unit",
		-- ["widget_type"] = "dropdown",
		-- ["text"] = "Selected Unit",
		-- ["tooltip"] = "This unit is selected for spawning.",
		-- ["options"] = {
			-- {text = "", value = ""},
		-- },
		-- ["default_value"] = "skaven_dummy_slave",
	-- },
	{ -- Selected list of available spawn units
		["setting_name"] = "cs_unit_list",
		["widget_type"] = "dropdown",
		["text"] = "Available Unit List",
		["tooltip"] = "Allows choosing which units are available to spawn.\n\n" ..
			"-- REGULAR --\nAll 'normal' unit types.\n\n" ..
			"-- DUMMY --\nDummy units without AI.\n\n" ..
			"-- MISC --\nUnused, unstable, or debug units.\n\n" ..
			"-- SPECIAL --\nOnly regular pingable units.\n\n" ..
			"-- BOSS --\nAll bosses and minibosses.\n\n" ..
			"-- ALL --\nAll known units.",
		["options"] = {
			{text = "Regular", value = "regular_units"},
			{text = "Dummy", value = "dummy_units"},
			{text = "Misc", value = "misc_units"},
			{text = "Special", value = "special_units"},
			{text = "Boss", value = "boss_units"},
			{text = "All", value = "all_units"},
		},
		["default_value"] = "regular_units", -- Default first option is enabled. In this case mod.regular_units
	},
	
	{ -- Keybind for spawning units
		["setting_name"] = "cs_spawn_keybind",
		["widget_type"] = "keybind",
		["type"] = "pressed",
		["text"] = "Keybind: Spawn Unit",
		["tooltip"] = "Choose the keybinding that spawns a unit.",
		["default_value"] = {},
		["action"] = "handle_spawn_unit"
	},
	{ -- Keybind to move to next unit in list
		["setting_name"] = "cs_next_keybind",
		["widget_type"] = "keybind",
		["type"] = "pressed",
		["text"] = "Keybind: Next Unit",
		["tooltip"] = "Choose the keybinding that selects the next unit.",
		["default_value"] = {},
		["action"] = "handle_next_unit"
	},
	{ -- Keybind to move to previous unit in list
		["setting_name"] = "cs_prev_keybind",
		["widget_type"] = "keybind",
		["type"] = "pressed",
		["text"] = "Keybind: Previous Unit",
		["tooltip"] = "Choose the keybinding that selects the previous unit.",
		["default_value"] = {},
		["action"] = "handle_previous_unit"
	},
	{ -- Keybind to destroy all spawned units
		["setting_name"] = "cs_destroy_keybind",
		["widget_type"] = "keybind",
		["type"] = "pressed",
		["text"] = "Keybind: Destroy All Units",
		["tooltip"] = "Choose the keybinding that destroys all units.",
		["default_value"] = {},
		["action"] = "handle_despawn_units"
	},
	
	-- { -- First slot of saved units
		-- ["setting_name"] = "cs_saved_unit_one",
		-- ["widget_type"] = "dropdown",
		-- ["text"] = "Saved Unit One",
		-- ["tooltip"] = "This unit can be spawned with the associated keybind.",
		-- ["options"] = {
			-- {text = "", value = ""},
		-- },
		-- ["default_value"] = "",
	-- },
	{ -- Keybind to spawn first saved unit
		["setting_name"] = "cs_spawn_saved_unit_one_keybind",
		["widget_type"] = "keybind",
		["type"] = "pressed",
		["text"] = "Keybind: Spawn Saved Unit One",
		["tooltip"] = "Choose the keybinding that spawns the first saved unit.",
		["default_value"] = {},
		["action"] = "handle_spawn_unit_one"
	},
	
	-- { -- Second slot of saved units
		-- ["setting_name"] = "cs_saved_unit_two",
		-- ["widget_type"] = "dropdown",
		-- ["text"] = "Saved Unit Two",
		-- ["tooltip"] = "This unit can be spawned with the associated keybind.",
		-- ["options"] = {
			-- {text = "", value = ""},
		-- },
		-- ["default_value"] = "",
	-- },
	{ -- Keybind to spawn second saved unit
		["setting_name"] = "cs_spawn_saved_unit_two_keybind",
		["widget_type"] = "keybind",
		["type"] = "pressed",
		["text"] = "Keybind: Spawn Saved Unit Two",
		["tooltip"] = "Choose the keybinding that spawns the second saved unit.",
		["default_value"] = {},
		["action"] = "handle_spawn_unit_two"
	},
	
	-- { -- Third slot of saved units
		-- ["setting_name"] = "cs_saved_unit_three",
		-- ["widget_type"] = "dropdown",
		-- ["text"] = "Saved Unit Three",
		-- ["tooltip"] = "This unit can be spawned with the associated keybind.",
		-- ["options"] = {
			-- {text = "", value = ""},
		-- },
		-- ["default_value"] = "",
	-- },
	{ -- Keybind to spawn third saved unit
		["setting_name"] = "cs_spawn_saved_unit_three_keybind",
		["widget_type"] = "keybind",
		["type"] = "pressed",
		["text"] = "Keybind: Spawn Saved Unit Three",
		["tooltip"] = "Choose the keybinding that spawns the third saved unit.",
		["default_value"] = {},
		["action"] = "handle_spawn_unit_three"
	},
	
	{ -- Toggle AI in missions
		["setting_name"] = "cs_enable_mission_ai",
		["widget_type"] = "checkbox",
		["text"] = "Enable AI in Missions",
		["tooltip"] = "Toggle AI perception and pathfinding in missions on / off",
		["default_value"] = true -- Default first option is enabled. In this case true
	},
	{ -- Toggle AI in Keep
		["setting_name"] = "cs_enable_keep_ai",
		["widget_type"] = "checkbox",
		["text"] = "Enable AI in Keep",
		["tooltip"] = "[ENABLING THIS SETTING MAY RESULT IN CRASHES]\n" ..
					"Toggle AI perception and pathfinding in the Keep on / off",
		["default_value"] = false -- Default first option is enabled. In this case true
	}
}

return mod_data
