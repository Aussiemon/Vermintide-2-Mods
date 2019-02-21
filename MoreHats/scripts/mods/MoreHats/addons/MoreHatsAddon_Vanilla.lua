--[[
	author: Aussiemon
	
	-----
 
	Copyright 2019 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	Profiles for vanilla hats to make them safely visible for users of the mod.
	
	-- Player tries to equip a hat.
	-- Hat name is intercepted and a profile is searched for.
	-- If a profile exists, the hat is equipped, and the unit to spawn and attachment nodes are replaced.
	-- Everything needs a masterlist and attachment node linking entry. That's where the items get replaced.
	-- Names have to be synced between addon list and masterlist.
--]]

-- ##############################################
-- ##############################################

MORE_HATS_ADDONS = MORE_HATS_ADDONS or {
	configs = {},
	transformations = {}
}

local addons = MORE_HATS_ADDONS
local configs = addons.configs
local transformations = addons.transformations

local attachments = AttachmentNodeLinking

-- Item Configurations
-- ##############################################

configs.adept_hat_0005 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.ww_hood_0002 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.witchhunter_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.waywatcher_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.knight_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.mercenary_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.bw_gate_0006 = {
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.unchained_hat_0002 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.huntsman_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.shade_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.zealot_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.mercenary_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.unchained_hat_0001 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.witchhunter_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.unchained_hat_0009 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.es_helmet_0003 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.zealot_hat_0010 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.waywatcher_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.bw_gate_0007 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_facemask_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.huntsman_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.knight_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.scholar_hat_0003 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.slayer_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.dr_helmet_0005 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.maidenguard_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.shade_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.adept_hat_0000 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.waywatcher_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.dr_slayer_hair_0002 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.ww_hood_0000 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.bw_gate_0008 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.shade_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.unchained_hat_0004 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.es_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.wh_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.huntsman_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.slayer_hat_0010 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.slayer_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.bw_gate_0001 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.waywatcher_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.scholar_hat_0000 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.zealot_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.ranger_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.maidenguard_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.witchhunter_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.adept_hat_0001 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.zealot_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.maidenguard_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.waywatcher_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.scholar_hat_0009 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.maidenguard_hat_0010 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.shade_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.shade_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.knight_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.wh_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.huntsman_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.wh_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.slayer_hat_0011 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.mercenary_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.witchhunter_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.waywatcher_hat_0011 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.knight_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.scholar_hat_0001 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.ranger_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_skinned_long_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_long_no_j_spine2_no_j_spine1",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_long_no_j_spine2_no_j_spine1",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_long_no_j_spine2_no_j_spine1",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.dr_helmet_0003 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.mercenary_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.waywatcher_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.maidenguard_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.maidenguard_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.adept_hat_0002 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.slayer_hat_0012 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.zealot_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.wh_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.waywatcher_hat_0010 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.waywatcher_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.scholar_hat_0010 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.shade_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.maidenguard_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.dr_helmet_0002 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.zealot_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0010 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.maidenguard_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.huntsman_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.mercenary_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.shade_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.es_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.huntsman_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.dr_helmet_0001 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.unchained_hat_0005 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.slayer_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.witchhunter_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.ranger_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.zealot_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.maidenguard_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.unchained_hat_0008 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0011 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.shade_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.huntsman_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.zealot_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.waywatcher_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.adept_hat_0003 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.wh_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.knight_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.ww_hood_0001 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.dr_helmet_0011 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.huntsman_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.ironbreaker_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.unchained_hat_0003 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.slayer_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.knight_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.witchhunter_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.maidenguard_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.waywatcher_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.unchained_hat_0006 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.witchhunter_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.wh_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.es_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.ranger_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.mercenary_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.adept_hat_0004 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.dr_helmet_0000 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.ranger_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.ranger_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.scholar_hat_0002 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0012 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.scholar_hat_0006 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.bw_gate_0000 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.adept_hat_0006 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.scholar_hat_0004 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.scholar_hat_0007 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.scholar_hat_0008 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.ranger_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.unchained_hat_0007 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.adept_hat_0007 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0013 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.slayer_hat_0008 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.slayer_hat_0000 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.slayer_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.es_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.knight_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.mercenary_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.mercenary_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.mercenary_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.waywatcher_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.knight_hat_0006 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.knight_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.dr_helmet_0008 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.zealot_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.bountyhunter_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.shade_hat_0002 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.shade_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.maidenguard_hat_0001 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "ww_mask_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.ww_hood_0004 = {
	bw_adept = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_wood_elf_to_bright_wizard",
	},
	dr_ranger = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_wood_elf_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_wood_elf_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "hat_skinned_no_j_spine2",
		transformation_function = "vanilla_wood_elf_to_empire_soldier",
	},
}

configs.knight_hat_0004 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.huntsman_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.huntsman_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_empire_soldier_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_empire_soldier_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_empire_soldier_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_empire_soldier_to_witch_hunter",
	},
}

configs.bountyhunter_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.slayer_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.ironbreaker_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "dr_beard_no_j_spine2",
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.unchained_hat_0000 = {
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
	},
	we_waywatcher = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}

configs.zealot_hat_0005 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.slayer_hat_0003 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.zealot_hat_0009 = {
	bw_adept = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_witch_hunter_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_witch_hunter_to_wood_elf",
	},
	dr_ranger = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	dr_slayer = {
		transformation_function = "vanilla_witch_hunter_to_dwarf_ranger",
	},
	es_mercenary = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_witch_hunter_to_empire_soldier",
	},
}

configs.slayer_hat_0007 = {
	bw_adept = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_scholar = {
		attachment_node_linking = "hat_no_a_hat",
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	bw_unchained = {
		transformation_function = "vanilla_dwarf_ranger_to_bright_wizard",
	},
	we_waywatcher = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_maidenguard = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	we_shade = {
		transformation_function = "vanilla_dwarf_ranger_to_wood_elf",
	},
	wh_captain = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_bountyhunter = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	wh_zealot = {
		transformation_function = "vanilla_dwarf_ranger_to_witch_hunter",
	},
	es_mercenary = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_huntsman = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
	es_knight = {
		transformation_function = "vanilla_dwarf_ranger_to_empire_soldier",
	},
}

configs.scholar_hat_0005 = {
	we_waywatcher = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_maidenguard = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	we_shade = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_wood_elf",
	},
	dr_ranger = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_ironbreaker = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	dr_slayer = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_dwarf_ranger",
	},
	wh_captain = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_bountyhunter = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	wh_zealot = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_witch_hunter",
	},
	es_mercenary = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_huntsman = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
	es_knight = {
		attachment_node_linking = "bw_gate_no_j_shoulder_level",
		transformation_function = "vanilla_bright_wizard_to_empire_soldier",
	},
}


-- Attachment Linkings
-- ##############################################

attachments.hat_no_a_hat = {
	slot_hat = {
		{
			target = 0,
			source = "j_head"
		}
	}
}

attachments.hat_skinned_long_no_a_hat = {
	slot_hat = {
		{
			target = 0,
			source = "j_head"
		},
		{
			target = "j_spine1",
			source = "j_spine1"
		},
		{
			target = "j_spine2",
			source = "j_spine2"
		},
		{
			target = "j_neck",
			source = "j_neck"
		},
		{
			target = "j_head",
			source = "j_head"
		},
		{
			target = "j_leftshoulder",
			source = "j_leftshoulder"
		},
		{
			target = "j_rightshoulder",
			source = "j_rightshoulder"
		}
	}
}

attachments.hat_skinned_no_j_spine2 = {
	slot_hat = {
		{
			target = 0,
			source = "j_spine"
		},
		{
			target = "j_spine2",
			source = "j_spine"
		},
		{
			target = "j_neck",
			source = "j_neck"
		},
		{
			target = "j_head",
			source = "j_head"
		},
		{
			target = "j_leftshoulder",
			source = "j_leftshoulder"
		},
		{
			target = "j_rightshoulder",
			source = "j_rightshoulder"
		}
	}
}

attachments.hat_skinned_long_no_j_spine2_no_j_spine1 = {
	slot_hat = {
		{
			target = 0,
			source = "a_hat"
		},
		{
			target = "j_spine1",
			source = "j_spine"
		},
		{
			target = "j_spine2",
			source = "j_spine"
		},
		{
			target = "j_neck",
			source = "j_neck"
		},
		{
			target = "j_head",
			source = "j_head"
		},
		{
			target = "j_leftshoulder",
			source = "j_leftshoulder"
		},
		{
			target = "j_rightshoulder",
			source = "j_rightshoulder"
		}
	}
}

attachments.dr_beard_no_j_spine2 = {
	slot_hat = {
		{
			target = 0,
			source = "j_head",
		},
		{
			target = "j_spine2",
			source = "j_spine",
		}
	}
}

attachments.ww_mask_no_j_spine2 = {
	slot_hat = {
		{
			target = 0,
			source = "j_spine",
		},
		{
			target = "j_spine2",
			source = "j_spine",
		},
		{
			target = "j_neck",
			source = "j_neck",
		},
		{
			target = "j_head",
			source = "j_head",
		}
	}
}

attachments.bw_gate_no_j_shoulder_level = {
	slot_hat = {
		target = 0,
		source = "j_spine",
	}
}

attachments.bw_gate_facemask_no_j_shoulder_level = {
	slot_hat = {
		{
			target = 0,
			source = "j_spine",
		},
		{
			target = "j_head",
			source = "j_head",
		}
	}
}


-- Transformation Functions
-- ##############################################

transformations.vanilla_bright_wizard_to_wood_elf = function(unit)

end

transformations.vanilla_bright_wizard_to_dwarf_ranger = function(unit)

end

transformations.vanilla_bright_wizard_to_witch_hunter = function(unit)

end

transformations.vanilla_bright_wizard_to_empire_soldier = function(unit)

end

transformations.vanilla_wood_elf_to_bright_wizard = function(unit)

end

transformations.vanilla_wood_elf_to_dwarf_ranger = function(unit)

end

transformations.vanilla_wood_elf_to_witch_hunter = function(unit)

end

transformations.vanilla_wood_elf_to_empire_soldier = function(unit)

end

transformations.vanilla_dwarf_ranger_to_bright_wizard = function(unit)

end

transformations.vanilla_dwarf_ranger_to_wood_elf = function(unit)

end

transformations.vanilla_dwarf_ranger_to_witch_hunter = function(unit)

end

transformations.vanilla_dwarf_ranger_to_empire_soldier = function(unit)

end

transformations.vanilla_witch_hunter_to_bright_wizard = function(unit)

end

transformations.vanilla_witch_hunter_to_wood_elf = function(unit)

end

transformations.vanilla_witch_hunter_to_dwarf_ranger = function(unit)

end

transformations.vanilla_witch_hunter_to_empire_soldier = function(unit)

end

transformations.vanilla_empire_soldier_to_bright_wizard = function(unit)

end

transformations.vanilla_empire_soldier_to_wood_elf = function(unit)

end

transformations.vanilla_empire_soldier_to_dwarf_ranger = function(unit)

end

transformations.vanilla_empire_soldier_to_witch_hunter = function(unit)

end

-- ##############################################
-- ##############################################
