local mod = get_mod("MoreHats")

local mod_data = {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = false,
	is_mutator = false,
	mutator_settings = {}
}

mod.every_career = {
	-- Bright Wizard
	"bw_adept",
	"bw_scholar",
	"bw_unchained",
	"bw_necromancer",
	
	-- Wood Elf
	"we_waywatcher",
	"we_maidenguard",
	"we_shade",
	"we_thornsister",
	
	-- Dwarf Ranger
	"dr_ranger",
	"dr_ironbreaker",
	"dr_slayer",
	"dr_engineer",
	
	-- Witch Hunter
	"wh_captain",
	"wh_bountyhunter",
	"wh_zealot",
	"wh_priest",
	
	-- Empire Soldier
	"es_mercenary",
	"es_huntsman",
	"es_knight",
	"es_questingknight"
}

mod.every_career_unit_name = {
	-- Bright Wizard
	bw_adept = "bright_wizard_adept",
	bw_scholar = "bright_wizard_scholar",
	bw_unchained = "bright_wizard_unchained",
	bw_necromancer = "bright_wizard_necromancer",
	
	-- Wood Elf
	we_waywatcher = "way_watcher_upgraded",
	we_maidenguard = "way_watcher_maiden_guard",
	we_shade = "way_watcher_shade",
	we_thornsister = "way_watcher_thornsister",
	
	-- Dwarf Ranger
	dr_ranger = "dwarf_ranger_upgraded",
	dr_ironbreaker = "dwarf_ranger_ironbreaker",
	dr_slayer = "dwarf_ranger_slayer",
	dr_engineer = "dwarf_ranger_engineer",
	
	-- Witch Hunter
	wh_captain = "witch_hunter_captain",
	wh_bountyhunter = "witch_hunter_bounty_hunter",
	wh_zealot = "witch_hunter_zealot",
	wh_priest = "witch_hunter_warrior_priest",
	
	-- Empire Soldier
	es_mercenary = "empire_soldier_mercenary",
	es_huntsman = "empire_soldier_huntsman",
	es_knight = "empire_soldier_knight",
	es_questingknight = "empire_soldier_breton",
}

mod.world_name = "more_hats_world"

mod.career_package_directory = "resource_packages/careers/"
mod.career_unit_directory = "units/beings/player/"
mod.career_unit_base = "/third_person_base/chr_third_person_mesh"

return mod_data
