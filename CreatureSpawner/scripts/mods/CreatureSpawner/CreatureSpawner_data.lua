--[[
	author: Aussiemon
	
	-----
 
	Copyright 2021 Aussiemon

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
	chaos_greed_pinata = {
		"misc",
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
	critter_nurgling = {
		"misc",
	},
	curse_mutator_sorcerer = {
		"misc",
	},
	pet_pig = {
		"misc",
	},
	pet_rat = {
		"misc",
	},
	shadow_lieutenant = {
		"misc",
	},
	shadow_skull = {
		"misc",
	},
	shadow_totem = {
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

mod.hub_levels = {
	inn_level = true,
	inn_level_skulls = true,
	inn_level_celebrate = true,
	inn_level_halloween = true,
	inn_level_sonnstill = true
}

local mod_data = {
	name = "Creature Spawner",                      -- Readable mod name
	description = mod:localize("cs_mod_description"),  -- Mod description
	is_togglable = true,                            -- If the mod can be enabled/disabled
	is_mutator = false,                             -- If the mod is mutator
	mutator_settings = {}                           -- Extra settings, if it's mutator
}

mod_data.options = {
	widgets = { -- Widget settings for the mod options menu
		-- { -- Selected spawning unit
			-- ["setting_id"] = "cs_selected_unit",
			-- ["type"] = "dropdown",
			-- ["text"] = "Selected Unit",
			-- ["tooltip"] = "This unit is selected for spawning.",
			-- ["options"] = {
				-- {text = "", value = ""},
			-- },
			-- ["default_value"] = "skaven_dummy_slave",
		-- },
		{ -- Selected list of available spawn units
			["setting_id"] = "cs_unit_list",
			["type"] = "dropdown",
			["tooltip"] = "cs_unit_list_tooltip",
			["options"] = {
				{text = "cs_unit_list_header_regular", value = "regular_units"},
				{text = "cs_unit_list_header_dummy", value = "dummy_units"},
				{text = "cs_unit_list_header_misc", value = "misc_units"},
				{text = "cs_unit_list_header_special", value = "special_units"},
				{text = "cs_unit_list_header_boss", value = "boss_units"},
				{text = "cs_unit_list_header_all", value = "all_units"},
			},
			["default_value"] = "regular_units", -- Default first option is enabled. In this case mod.regular_units
		},
		
		{ -- Keybind for spawning units
			["setting_id"] = "cs_spawn_keybind",
			["type"] = "keybind",
			["keybind_trigger"] = "pressed",
			["keybind_type"] = "function_call",
			["tooltip"] = "cs_spawn_keybind_tooltip",
			["default_value"] = {},
			["function_name"] = "handle_spawn_unit"
		},
		{ -- Keybind to move to next unit in list
			["setting_id"] = "cs_next_keybind",
			["type"] = "keybind",
			["keybind_trigger"] = "pressed",
			["keybind_type"] = "function_call",
			["tooltip"] = "cs_next_keybind_tooltip",
			["default_value"] = {},
			["function_name"] = "handle_next_unit"
		},
		{ -- Keybind to move to previous unit in list
			["setting_id"] = "cs_prev_keybind",
			["type"] = "keybind",
			["keybind_trigger"] = "pressed",
			["keybind_type"] = "function_call",
			["tooltip"] = "cs_prev_keybind_tooltip",
			["default_value"] = {},
			["function_name"] = "handle_previous_unit"
		},
		{ -- Keybind to destroy all spawned units
			["setting_id"] = "cs_destroy_keybind",
			["type"] = "keybind",
			["keybind_trigger"] = "pressed",
			["keybind_type"] = "function_call",
			["tooltip"] = "cs_destroy_keybind_tooltip",
			["default_value"] = {},
			["function_name"] = "handle_despawn_units"
		},
		
		-- { -- First slot of saved units
			-- ["setting_id"] = "cs_saved_unit_one",
			-- ["type"] = "dropdown",
			-- ["text"] = "Saved Unit One",
			-- ["tooltip"] = "This unit can be spawned with the associated keybind.",
			-- ["options"] = {
				-- {text = "", value = ""},
			-- },
			-- ["default_value"] = "",
		-- },
		{ -- Keybind to spawn first saved unit
			["setting_id"] = "cs_spawn_saved_unit_one_keybind",
			["type"] = "keybind",
			["keybind_trigger"] = "pressed",
			["keybind_type"] = "function_call",
			["tooltip"] = "cs_spawn_saved_unit_one_keybind_tooltip",
			["default_value"] = {},
			["function_name"] = "handle_spawn_unit_one"
		},
		
		-- { -- Second slot of saved units
			-- ["setting_id"] = "cs_saved_unit_two",
			-- ["type"] = "dropdown",
			-- ["text"] = "Saved Unit Two",
			-- ["tooltip"] = "This unit can be spawned with the associated keybind.",
			-- ["options"] = {
				-- {text = "", value = ""},
			-- },
			-- ["default_value"] = "",
		-- },
		{ -- Keybind to spawn second saved unit
			["setting_id"] = "cs_spawn_saved_unit_two_keybind",
			["type"] = "keybind",
			["keybind_trigger"] = "pressed",
			["keybind_type"] = "function_call",
			["tooltip"] = "cs_spawn_saved_unit_two_keybind_tooltip",
			["default_value"] = {},
			["function_name"] = "handle_spawn_unit_two"
		},
		
		-- { -- Third slot of saved units
			-- ["setting_id"] = "cs_saved_unit_three",
			-- ["type"] = "dropdown",
			-- ["text"] = "Saved Unit Three",
			-- ["tooltip"] = "This unit can be spawned with the associated keybind.",
			-- ["options"] = {
				-- {text = "", value = ""},
			-- },
			-- ["default_value"] = "",
		-- },
		{ -- Keybind to spawn third saved unit
			["setting_id"] = "cs_spawn_saved_unit_three_keybind",
			["type"] = "keybind",
			["keybind_trigger"] = "pressed",
			["keybind_type"] = "function_call",
			["tooltip"] = "cs_spawn_saved_unit_three_keybind_tooltip",
			["default_value"] = {},
			["function_name"] = "handle_spawn_unit_three"
		},
		{ -- Toggle AI in missions
			["setting_id"] = "cs_enable_mission_ai",
			["type"] = "checkbox",
			["tooltip"] = "cs_enable_mission_ai_tooltip",
			["default_value"] = true -- Default first option is enabled. In this case true
		},
		{ -- Toggle AI in Keep
			["setting_id"] = "cs_enable_keep_ai",
			["type"] = "checkbox",
			["tooltip"] = "cs_enable_keep_ai_tooltip",
			["default_value"] = false -- Default first option is enabled. In this case true
		},
		{ -- Grudge-Marked spawning types
			["setting_id"] = "cs_enable_grudge_marked",
			["type"] = "dropdown",
			["tooltip"] = "cs_enable_grudge_marked_tooltip",
			["options"] = {
				{text = "cs_enable_grudge_marked_header_disabled", value = false},
				{text = "cs_enable_grudge_marked_header_random", value = "RANDOM", show_widgets = {1}},
				{text = "cs_enable_grudge_marked_header_manual", value = "MANUAL", show_widgets = {2,3,4,5,6,7,8,9,10,11,12,13,14}}
			},
			["default_value"] = false, -- Default first option is enabled. In this case false
			["sub_widgets"] =
			{
				{
					["setting_id"] = "cs_grudge_marked_random_modifier_count",
					["type"] = "numeric",
					["tooltip"] = "cs_grudge_marked_random_modifier_count_tooltip",
					["default_value"] = 1,
					["range"] = { 0, 13 },
					["decimals_number"] = 0
				},
				{ -- Enable grudge-marked setting: warping
					["setting_id"] = "cs_enable_grudge_marked_warping",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_warping_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: intangible
					["setting_id"] = "cs_enable_grudge_marked_intangible",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_intangible_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: unstaggerable
					["setting_id"] = "cs_enable_grudge_marked_unstaggerable",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_unstaggerable_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: raging
					["setting_id"] = "cs_enable_grudge_marked_raging",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_raging_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: vampiric
					["setting_id"] = "cs_enable_grudge_marked_vampiric",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_vampiric_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: ranged_immune
					["setting_id"] = "cs_enable_grudge_marked_ranged_immune",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_ranged_immune_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: periodic_shield
					["setting_id"] = "cs_enable_grudge_marked_periodic_shield",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_periodic_shield_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: crippling
					["setting_id"] = "cs_enable_grudge_marked_crippling",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_crippling_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: crushing
					["setting_id"] = "cs_enable_grudge_marked_crushing",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_crushing_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: regenerating
					["setting_id"] = "cs_enable_grudge_marked_regenerating",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_regenerating_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: periodic_curse
					["setting_id"] = "cs_enable_grudge_marked_periodic_curse",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_periodic_curse_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: commander
					["setting_id"] = "cs_enable_grudge_marked_commander",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_commander_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				},
				{ -- Enable grudge-marked setting: frenzy
					["setting_id"] = "cs_enable_grudge_marked_frenzy",
					["type"] = "checkbox",
					["tooltip"] = "cs_enable_grudge_marked_frenzy_tooltip",
					["default_value"] = false -- Default first option is enabled. In this case false
				}
			}
		}
	}
}

return mod_data
