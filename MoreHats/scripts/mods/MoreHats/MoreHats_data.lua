--[[
	author: Aussiemon
	
	-----
 
	Copyright 2020 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local mod = get_mod("MoreHats")

local mod_data = {
	name = "More Hats",
	description = "Makes selected hats equippable by certain heroes, and unequippable by all heroes.",
	is_togglable = false,
	is_mutator = false,
	mutator_settings = {}
}

mod.every_career = {
	-- Bright Wizard
	"bw_adept",
	"bw_scholar",
	"bw_unchained",
	
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
	
	-- Empire Soldier
	es_mercenary = "empire_soldier_mercenary",
	es_huntsman = "empire_soldier_huntsman",
	es_knight = "empire_soldier_knight",
	es_questingknight = "empire_soldier_breton"
}

mod.world_name = "more_hats_world"

mod.career_package_directory = "resource_packages/careers/"
mod.career_unit_directory = "units/beings/player/"
mod.career_unit_base = "/third_person_base/chr_third_person_base"

return mod_data
