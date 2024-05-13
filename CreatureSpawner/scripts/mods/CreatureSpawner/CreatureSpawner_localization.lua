--[[
	text_id = {
		en        = "<English>",
		fr        = "<French>",
		de        = "<German>",
		es        = "<Spanish>",
		ru        = "<Russian>",
		it        = "<Italian>",
		pl        = "<Polish>",
		["br-pt"] = "<Portuguese-Brazil>",
	}
--]]

local localization_table = {
	mod_name = {
		en = "Creature Spawner",
		["zh-cn"] = "生物生成",
		ru = "Спавнер существ",
	},
	mod_description = {
		en = "Allows you to spawn various units in self-hosted maps that support them.",
		["zh-cn"] = "允许你在自己主办的游戏中生成各种单位。",
		ru = "Creature Spawner - Позволяет создавать на картах в частных играх различных существ, которые поддерживаются этими картами.",
	},

	-- Unit lists
	cs_unit_list = {
		en = "Available Unit List",
		["zh-cn"] = "可用单位列表",
		ru = "Список доступных существ",
	},
	cs_unit_list_description = {
		en = "Allows choosing which units are available to spawn.\n\n" ..
			"-- REGULAR --\nAll 'normal' unit types.\n\n" ..
			"-- DUMMY --\nDummy units without AI.\n\n" ..
			"-- MISC --\nUnused, unstable, or debug units.\n\n" ..
			"-- SPECIAL --\nOnly regular pingable units.\n\n" ..
			"-- BOSS --\nAll bosses and minibosses.\n\n" ..
			"-- ALL --\nAll known units."
	},

	cs_unit_list_header_regular = {
		en = "Regular",
		["zh-cn"] = "常规",
		ru = "Обычные",
	},
	cs_unit_list_header_regular_description = {
		en = "All 'normal' unit types.",
		["zh-cn"] = "所有普通单位类型。",
		ru = "Все «обычные» типы существ",
	},

	cs_unit_list_header_dummy = {
		en = "Dummy",
	},
	cs_unit_list_header_dummy_description = {
		en = "Dummy units without AI.",
	},

	cs_unit_list_header_misc = {
		en = "Misc",
		["zh-cn"] = "杂项",
		ru = "Разное",
	},
	cs_unit_list_header_misc_description = {
		en = "Unused, unstable, or debug units.",
		["zh-cn"] = "未使用、不稳定或调试的单位。",
		ru = "Неиспользуемые, нестабильные или отладочные существа.",
	},

	cs_unit_list_header_special = {
		en = "Special",
	},
	cs_unit_list_header_special_description = {
		en = "Only regular special units.",
	},

	cs_unit_list_header_boss = {
		en = "Boss",
		["zh-cn"] = "Boss",
		ru = "Боссы",
	},
	cs_unit_list_header_boss_description = {
		en = "All bosses and monstrosities",
		["zh-cn"] = "所有 Boss 和怪物。",
		ru = "Все боссы и монстры",
	},

	cs_unit_list_header_all = {
		en = "All",
		["zh-cn"] = "所有",
		ru = "Все",
	},
	cs_unit_list_header_all_description = {
		en = "All known units",
		["zh-cn"] = "所有已知单位。",
		ru = "Все известные существа.",
	},

	-- AI toggles
	cs_enable_mission_ai = {
		en = "Enable AI in Missions"
	},
	cs_enable_mission_ai_description = {
		en = "Toggle AI perception and pathfinding in missions on / off."
	},

	cs_enable_keep_ai = {
		en = "Enable AI in Keep"
	},
	cs_enable_keep_ai_description = {
		en = "[ENABLING THIS SETTING MAY RESULT IN CRASHES]\n" ..
			"Toggle AI perception and pathfinding in the Keep on / off."
	},

	-- Keybinds
	cs_spawn_keybind = {
		en = "Keybind: Spawn Unit",
		["zh-cn"] = "快捷键：生成单位",
		ru = "Клавиша: Заспавнить существо",
	},
	cs_spawn_keybind_description = {
		en = "Choose the keybinding that spawns a unit.",
		["zh-cn"] = "选择用于生成单位的按键。",
		ru = "Выберите комбинацию клавиш или клавишу, нажатие на которую заспавнит существо.",
	},

	cs_next_keybind = {
		en = "Keybind: Next Unit",
		["zh-cn"] = "快捷键：下一个单位",
		ru = "Клавиша: Следующее существо",
	},
	cs_next_keybind_description = {
		en = "Choose the keybinding that selects the next unit.",
		["zh-cn"] = "选择用于选择下一个单位的按键。",
		ru = "Выберите комбинацию клавиш или клавишу для выбора следующего существа.",
	},

	cs_prev_keybind = {
		en = "Keybind: Previous Unit",
		["zh-cn"] = "快捷键：上一个单位",
		ru = "Клавиша: Предыдущее существо",
	},
	cs_prev_keybind_description = {
		en = "Choose the keybinding that selects the previous unit.",
		["zh-cn"] = "选择用于选择上一个单位的按键。",
		ru = "Выберите комбинацию клавиш или клавишу для выбора предыдущего существа.",
	},

	cs_destroy_keybind = {
		en = "Keybind: Destroy All Units",
		["zh-cn"] = "快捷键：删除所有单位",
		ru = "Клавиша: Удалить всех существ",
	},
	cs_destroy_keybind_description = {
		en = "Choose the keybinding that destroys all units.",
	},

	cs_spawn_saved_unit_one_keybind = {
		en = "Keybind: Spawn Saved Unit One",
		["zh-cn"] = "快捷键：生成保存栏位 1 的单位",
		ru = "Клавиша: Заспавнить сохранённое существо 1",
	},
	cs_spawn_saved_unit_one_keybind_description = {
		en = "Choose the keybinding that spawns the first saved unit.",
		["zh-cn"] = "选择用于生成第一个已保存单位的按键。",
		ru = "Выберите комбинацию клавиш или клавишу для спавна первого сохранённого существа.",
	},

	cs_spawn_saved_unit_two_keybind = {
		en = "Keybind: Spawn Saved Unit Two",
		["zh-cn"] = "快捷键：生成保存栏位 2 的单位",
		ru = "Клавиша: Заспавнить сохранённое существо 2",
	},
	cs_spawn_saved_unit_two_keybind_description = {
		en = "Choose the keybinding that spawns the second saved unit.",
		["zh-cn"] = "选择用于生成第二个已保存单位的按键。",
		ru = "Выберите комбинацию клавиш или клавишу для спавна второго сохранённого существа.",
	},

	cs_spawn_saved_unit_three_keybind = {
		en = "Keybind: Spawn Saved Unit Three",
		["zh-cn"] = "快捷键：生成保存栏位 3 的单位",
		ru = "Клавиша: Заспавнить сохранённое существо 3",
	},
	cs_spawn_saved_unit_three_keybind_description = {
		en = "Choose the keybinding that spawns the third saved unit.",
		["zh-cn"] = "选择用于生成第三个已保存单位的按键。",
		ru = "Выберите комбинацию клавиш или клавишу для спавна третьего сохранённого существа.",
	},

	-- Grudge-marks
	cs_enable_grudge_marked = {
		en = "Enable Grudge-Marked Modifiers"
	},
	cs_enable_grudge_marked_description = {
		en = "Allows enabling grudge-marked enemy enhancements.\n\n" ..
			"-- DISABLED --\nNo grudge-marked enemies will spawn.\n\n" ..
			"-- RANDOM --\nAll spawns will have random modifiers.\n\n" ..
			"-- MANUAL --\nAll spawns will have the specified modifiers."
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

	cs_grudge_marked_random_modifier_count = {
		en = "Number of Modifiers"
	},
	cs_grudge_marked_random_modifier_count_description = {
		en = "Choose the desired number of random modifiers to apply to unit spawns."
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
}

local grudge_mark_toggle_prefixes = {
	en = "Toggle grudge-marked modifier",
}

local grudge_mark_toggle_suffixes = {
	en = "on / off.",
}

local grudge_mark_toggles = {
	cs_enable_grudge_marked_health = true,
	cs_enable_grudge_marked_damage = true,
	cs_enable_grudge_marked_stagger_resistance = true,
	cs_enable_grudge_marked_warping = Localize("display_name_warping"),
	cs_enable_grudge_marked_unstaggerable = Localize("display_name_unstaggerable"),
	cs_enable_grudge_marked_raging = Localize("display_name_raging"),
	cs_enable_grudge_marked_vampiric = Localize("display_name_vampiric"),
	cs_enable_grudge_marked_ranged_immune = Localize("display_name_ranged_immune"),
	cs_enable_grudge_marked_periodic_shield = Localize("display_name_periodic_shield"),
	cs_enable_grudge_marked_intangible = Localize("display_name_intangible"),
	cs_enable_grudge_marked_crippling = Localize("display_name_crippling"),
	cs_enable_grudge_marked_crushing = Localize("display_name_crushing"),
	cs_enable_grudge_marked_regenerating = Localize("display_name_regenerating"),
	cs_enable_grudge_marked_periodic_curse = Localize("display_name_periodic_curse"),
	cs_enable_grudge_marked_commander = Localize("display_name_commander"),
	cs_enable_grudge_marked_frenzy = Localize("display_name_frenzy"),
}

-- Create grudge-mark localization keys
for key, val in pairs(grudge_mark_toggles) do
	local localized_name = val

	-- Create the localized name if the game provides the localization
	if type(localized_name) == "string" then
		localization_table[key] = localization_table[key] or {}
		localization_table[key].en = localized_name
	end

	-- Create the descriptions from parts, per language
	for language, _ in pairs(grudge_mark_toggle_prefixes) do
		local description_key = key .. "_description"
		localization_table[description_key] = localization_table[description_key] or {}

		if type(localized_name) ~= "string" then
			localized_name = localization_table[key][language] or localization_table[key].en
		end
		local prefix = grudge_mark_toggle_prefixes[language] or grudge_mark_toggle_prefixes[language].en
		local suffix = grudge_mark_toggle_suffixes[language] or grudge_mark_toggle_suffixes[language].en
		localization_table[description_key][language] = prefix .. " " .. localized_name .. " " .. suffix
	end
end

return localization_table