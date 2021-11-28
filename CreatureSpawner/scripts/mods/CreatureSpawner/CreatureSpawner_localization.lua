--[[
	some_text_id = {
		en = "Translation",        -- English
		fr = "Translation",        -- French
		de = "Translation",        -- German
		es = "Translation",        -- Spanish
		ru = "Translation",        -- Russian
		it = "Translation",        -- Italian
		pl = "Translation",        -- Polish
		["br-pt"] = "Translation", -- Portuguese-Brazil
	},
	some_other_text_id = {
		en = "Translation",
		fr = "Translation",
		de = "Translation",
		es = "Translation",
		ru = "Translation",
		it = "Translation",
		pl = "Translation",
		["br-pt"] = "Translation",
	},
--]]

return {
	cs_mod_description = {
		en = "Allows you to spawn various units in maps that support them."
	},
	
	-- Setting Names
	cs_unit_list = {
		en = "Available Unit List"
	},
	cs_spawn_keybind = {
		en = "Keybind: Spawn Unit"
	},
	cs_next_keybind = {
		en = "Keybind: Next Unit"
	},
	cs_prev_keybind = {
		en = "Keybind: Previous Unit"
	},
	cs_destroy_keybind = {
		en = "Keybind: Destroy All Units"
	},
	cs_spawn_saved_unit_one_keybind = {
		en = "Keybind: Spawn Saved Unit One"
	},
	cs_spawn_saved_unit_two_keybind = {
		en = "Keybind: Spawn Saved Unit Two"
	},
	cs_spawn_saved_unit_three_keybind = {
		en = "Keybind: Spawn Saved Unit Three"
	},
	cs_enable_mission_ai = {
		en = "Enable AI in Missions"
	},
	cs_enable_keep_ai = {
		en = "Enable AI in Keep"
	},
	cs_enable_grudge_marked = {
		en = "Enable Grudge-Marked Modifiers"
	},
	cs_grudge_marked_random_modifier_count = {
		en = "Number of Modifiers"
	},
	cs_enable_grudge_marked_health = {
		en = "Increased Health"
	},
	cs_enable_grudge_marked_damage = {
		en = "Increased Damage"
	},
	cs_enable_grudge_marked_stagger_resistance = {
		en = "Increased Stagger Resistance"
	},
	cs_enable_grudge_marked_warping = {
		en = Localize("display_name_warping")
	},
	cs_enable_grudge_marked_intangible = {
		en = Localize("display_name_intangible")
	},
	cs_enable_grudge_marked_unstaggerable = {
		en = Localize("display_name_unstaggerable")
	},
	cs_enable_grudge_marked_raging = {
		en = Localize("display_name_raging")
	},
	cs_enable_grudge_marked_vampiric = {
		en = Localize("display_name_vampiric")
	},
	cs_enable_grudge_marked_ranged_immune = {
		en = Localize("display_name_ranged_immune")
	},
	cs_enable_grudge_marked_periodic_shield = {
		en = Localize("display_name_periodic_shield")
	},
	cs_enable_grudge_marked_crippling = {
		en = Localize("display_name_crippling")
	},
	cs_enable_grudge_marked_crushing = {
		en = Localize("display_name_crushing")
	},
	cs_enable_grudge_marked_regenerating = {
		en = Localize("display_name_regenerating")
	},
	cs_enable_grudge_marked_intangible_mirror = {
		en = Localize("display_name_intangible") .. " Mirror"
	},
	
	-- Dropdown Headers
	cs_unit_list_header_regular = {
		en = "Regular"
	},
	cs_unit_list_header_dummy= {
		en = "Dummy"
	},
	cs_unit_list_header_misc = {
		en = "Misc"
	},
	cs_unit_list_header_special = {
		en = "Special"
	},
	cs_unit_list_header_boss = {
		en = "Boss"
	},
	cs_unit_list_header_all = {
		en = "All"
	},
	cs_enable_grudge_marked_header_disabled = {
		en = "Disabled"
	},
	cs_enable_grudge_marked_header_random = {
		en = "Random"
	},
	cs_enable_grudge_marked_header_manual = {
		en = "Manual"
	},
	
	-- Tooltips
	cs_unit_list_tooltip = {
		en = "Allows choosing which units are available to spawn.\n\n" ..
			"-- REGULAR --\nAll 'normal' unit types.\n\n" ..
			"-- DUMMY --\nDummy units without AI.\n\n" ..
			"-- MISC --\nUnused, unstable, or debug units.\n\n" ..
			"-- SPECIAL --\nOnly regular pingable units.\n\n" ..
			"-- BOSS --\nAll bosses and minibosses.\n\n" ..
			"-- ALL --\nAll known units."
	},
	cs_spawn_keybind_tooltip = {
		en = "Choose the keybinding that spawns a unit."
	},
	cs_next_keybind_tooltip = {
		en = "Choose the keybinding that selects the next unit."
	},
	cs_prev_keybind_tooltip = {
		en = "Choose the keybinding that selects the previous unit."
	},
	cs_destroy_keybind_tooltip = {
		en = "Choose the keybinding that destroys all units."
	},
	cs_spawn_saved_unit_one_keybind_tooltip = {
		en = "Choose the keybinding that spawns the first saved unit."
	},
	cs_spawn_saved_unit_two_keybind_tooltip = {
		en = "Choose the keybinding that spawns the second saved unit."
	},
	cs_spawn_saved_unit_three_keybind_tooltip = {
		en = "Choose the keybinding that spawns the third saved unit."
	},
	cs_enable_mission_ai_tooltip = {
		en = "Toggle AI perception and pathfinding in missions on / off."
	},
	cs_enable_keep_ai_tooltip = {
		en = "[ENABLING THIS SETTING MAY RESULT IN CRASHES]\n" ..
			"Toggle AI perception and pathfinding in the Keep on / off."
	},
	cs_enable_grudge_marked_tooltip = {
		en = "Allows enabling grudge-marked enemy enhancements.\n\n" ..
			"-- DISABLED --\nNo grudge-marked enemies will spawn.\n\n" ..
			"-- RANDOM --\nAll spawns will have random modifiers.\n\n" ..
			"-- MANUAL --\nAll spawns will have the specified modifiers."
	},
	cs_grudge_marked_random_modifier_count_tooltip = {
		en = "Choose the desired number of random modifiers to apply to unit spawns."
	},
	cs_enable_grudge_marked_health_tooltip = {
		en = "Toggle grudge-marked modifier Increased Health on / off."
	},
	cs_enable_grudge_marked_damage_tooltip = {
		en = "Toggle grudge-marked modifier Increased Damage on / off."
	},
	cs_enable_grudge_marked_stagger_resistance_tooltip = {
		en = "Toggle grudge-marked modifier Increased Stagger Resistance on / off."
	},
	cs_enable_grudge_marked_warping_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_warping") .. " on / off."
	},
	cs_enable_grudge_marked_intangible_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_intangible") .. " on / off."
	},
	cs_enable_grudge_marked_unstaggerable_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_unstaggerable") .. " on / off."
	},
	cs_enable_grudge_marked_raging_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_raging") .. " on / off."
	},
	cs_enable_grudge_marked_vampiric_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_vampiric") .. " on / off."
	},
	cs_enable_grudge_marked_ranged_immune_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_ranged_immune") .. " on / off."
	},
	cs_enable_grudge_marked_periodic_shield_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_periodic_shield") .. " on / off."
	},
	cs_enable_grudge_marked_crippling_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_crippling") .. " on / off."
	},
	cs_enable_grudge_marked_crushing_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_crushing") .. " on / off."
	},
	cs_enable_grudge_marked_regenerating_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_regenerating") .. " on / off."
	},
	cs_enable_grudge_marked_intangible_mirror_tooltip = {
		en = "Toggle grudge-marked modifier " .. Localize("display_name_intangible") .. " Mirror on / off."
	}
}