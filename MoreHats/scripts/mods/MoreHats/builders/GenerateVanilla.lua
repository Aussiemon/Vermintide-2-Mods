--[[
	author: Aussiemon
	
	-----
 
	Copyright 2018 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	Outputs a MoreHats addon file for the vanilla hats in Vermintide.
--]]

--[[
	
	Vermintide 2:
	--------------------------------
	Pyromancer has no a_hat
	
	Kruber has no j_spine1, j_spine2
	
	Only Sienna has j_shoulder_level
	
	j_spine = true,
	j_shoulder_level = true,
	j_neck = true,
	j_spine2 = true,
	j_head = true,
	a_hat = true,
	j_leftshoulder = true,
	j_rightshoulder = true,
	j_spine1 = true,
	
--]]


-- Configuration Variables --

local careers = {
	"bw_adept",
	"bw_scholar",
	"bw_unchained",
	
	"we_waywatcher",
	"we_maidenguard",
	"we_shade",
	
	"dr_ranger",
	"dr_ironbreaker",
	"dr_slayer",
	
	"wh_captain",
	"wh_bountyhunter",
	"wh_zealot",
	
	"es_mercenary",
	"es_huntsman",
	"es_knight",
}

local archetypes = {
	"bright_wizard",
	"wood_elf",
	"dwarf_ranger",
	"witch_hunter",
	"empire_soldier",
}

local attachment_linkings = {
	"hat_no_a_hat",
	"hat_skinned_long_no_a_hat",
	"hat_skinned_no_j_spine2",
	"hat_skinned_long_no_j_spine2_no_j_spine1",
	"dr_beard_no_j_spine2",
	"ww_mask_no_j_spine2",
	"bw_gate_no_j_shoulder_level",
	"bw_gate_facemask_no_j_shoulder_level"
}

local career_to_archetype_map = {
	bw_adept = "bright_wizard",
	bw_scholar = "bright_wizard",
	bw_unchained = "bright_wizard",
	
	we_waywatcher = "wood_elf",
	we_maidenguard = "wood_elf",
	we_shade = "wood_elf",
	
	dr_ranger = "dwarf_ranger",
	dr_ironbreaker = "dwarf_ranger",
	dr_slayer = "dwarf_ranger",
	
	wh_captain = "witch_hunter",
	wh_bountyhunter = "witch_hunter",
	wh_zealot = "witch_hunter",
	
	es_mercenary = "empire_soldier",
	es_huntsman = "empire_soldier",
	es_knight = "empire_soldier",
}

local special_attachments_per_character = {
	hat = {
		bw_scholar = "hat_no_a_hat"
	},
	hat_skinned = {
		es_huntsman = "hat_skinned_no_j_spine2",
		es_knight = "hat_skinned_no_j_spine2",
		es_mercenary = "hat_skinned_no_j_spine2",
	},
	hat_skinned_long = {
		bw_scholar = "hat_skinned_long_no_a_hat",
		es_huntsman = "hat_skinned_long_no_j_spine2_no_j_spine1",
		es_knight = "hat_skinned_long_no_j_spine2_no_j_spine1",
		es_mercenary = "hat_skinned_long_no_j_spine2_no_j_spine1",
	},
	dr_beard = {
		es_huntsman = "dr_beard_no_j_spine2",
		es_knight = "dr_beard_no_j_spine2",
		es_mercenary = "dr_beard_no_j_spine2",
	},
	ww_mask = {
		es_huntsman = "ww_mask_no_j_spine2",
		es_knight = "ww_mask_no_j_spine2",
		es_mercenary = "ww_mask_no_j_spine2",
	},
	es_hat_skinned = {
		-- Wearable by all characters
	},
	bw_gate = {
		we_waywatcher = "bw_gate_no_j_shoulder_level",
		we_maidenguard = "bw_gate_no_j_shoulder_level",
		we_shade = "bw_gate_no_j_shoulder_level",
		
		dr_ranger = "bw_gate_no_j_shoulder_level",
		dr_ironbreaker = "bw_gate_no_j_shoulder_level",
		dr_slayer = "bw_gate_no_j_shoulder_level",
		
		wh_captain = "bw_gate_no_j_shoulder_level",
		wh_bountyhunter = "bw_gate_no_j_shoulder_level",
		wh_zealot = "bw_gate_no_j_shoulder_level",
		
		es_mercenary = "bw_gate_no_j_shoulder_level",
		es_huntsman = "bw_gate_no_j_shoulder_level",
		es_knight = "bw_gate_no_j_shoulder_level",
	},
	bw_gate_facemask = {
		we_waywatcher = "bw_gate_facemask_no_j_shoulder_level",
		we_maidenguard = "bw_gate_facemask_no_j_shoulder_level",
		we_shade = "bw_gate_facemask_no_j_shoulder_level",
		
		dr_ranger = "bw_gate_facemask_no_j_shoulder_level",
		dr_ironbreaker = "bw_gate_facemask_no_j_shoulder_level",
		dr_slayer = "bw_gate_facemask_no_j_shoulder_level",
		
		wh_captain = "bw_gate_facemask_no_j_shoulder_level",
		wh_bountyhunter = "bw_gate_facemask_no_j_shoulder_level",
		wh_zealot = "bw_gate_facemask_no_j_shoulder_level",
		
		es_mercenary = "bw_gate_facemask_no_j_shoulder_level",
		es_huntsman = "bw_gate_facemask_no_j_shoulder_level",
		es_knight = "bw_gate_facemask_no_j_shoulder_level",
	},
}

local attachment_linking_template_map = {
	wh_hats = "hat",
	wh_hats_skinned = "hat_skinned",
	wh_z_hats_tattoo_00 = "hat",
	wh_z_hats_tattoo_01 = "hat",
	wh_z_hats_tattoo_02 = "hat",
	wh_z_hats_tattoo_03 = "hat",
	wh_z_hats_tattoo_04 = "hat",
	wh_z_hats_tattoo_05 = "hat",
	
	ww_hoods = "hat_skinned",
	ww_full_face = "hat_skinned",
	ww_half_masks = "ww_mask",
	ww_masks = "ww_mask",
	ww_helmet = "hat",
	ww_helmet_skinned = "hat_skinned",
	ww_helmet_mask = "ww_mask",
	
	es_hats = "hat",
	es_hats_no_ear = "hat",
	es_hats_no_beard = "hat",
	es_hats_skinned = "es_hat_skinned",
	es_hats_no_ears_skinned = "es_hat_skinned",
	es_hats_no_beard_skinned = "es_hat_skinned",
	
	dr_helmets = "hat",
	dr_helmets_skinned_long = "hat_skinned_long",
	dr_helmets_no_ear = "hat",
	dr_helmets_beard_ears = "dr_beard",
	dr_hair_tattoo_00 = "hat",
	dr_hair_tattoo_01 = "hat",
	dr_hair_tattoo_02 = "hat",
	dr_hair_tattoo_03 = "hat",
	dr_hair_tattoo_04 = "hat",
	dr_hair_tattoo_05 = "hat",
	dr_hair_nose_big_tattoo_00 = "hat",
	dr_hair_nose_big_tattoo_01 = "hat",
	dr_hair_nose_big_tattoo_02 = "hat",
	dr_hair_nose_big_tattoo_03 = "hat",
	dr_hair_nose_big_tattoo_04 = "hat",
	dr_hair_nose_big_tattoo_05 = "hat",
	
	bw_gates = "bw_gate",
	bw_hat = "hat",
	bw_gates_facemask = "bw_gate_facemask",
	bw_gates_no_breastplate = "bw_gate",
	bw_gates_facemask_no_breastplate = "bw_gate_facemask"
}

local function_prefix = "vanilla"


-- Writing Functions --

local io = io
local math = math
local pairs = pairs
local type = type
local tostring = tostring

local output_path = "vanilla_hats.lua"
local indentation_counter = 0

local function write_line(message)
	for i = 1, indentation_counter do
		message = "\t" .. message
	end
	
	local file = io.open(output_path, "a+")
	if not file then
		return
	end
	
	if type(message) ~= "string" then
		message = tostring(message)
	end
	
	file:write(message .. "\n")
	io.close(file)
end

local function indent()
	indentation_counter = indentation_counter + 1
end

local function outdent()
	indentation_counter = math.max(indentation_counter - 1, 0)
end


-- Data Functions --

local ItemMasterList = ItemMasterList
local AttachmentNodeLinking = AttachmentNodeLinking
local print = print

local function process_hat(item)
	local template = item.template
	local can_wield = item.can_wield
	
	local hat_archetype
	for key, value in pairs(can_wield) do
		hat_archetype = career_to_archetype_map[can_wield[key]]
		break
	end
	
	for i = 1, #careers do
		repeat
			local career = careers[i]
			local career_found = false
			
			-- Search for matching can_wield career entry
			for key, value in pairs(can_wield) do
				if can_wield[key] == career then
					career_found = true
					break
				end
			end
			
			-- Add profile for career
			if not career_found then
				
				-- Check for entries to write in advance
				local attachment_node_linking
				local template_attachments = special_attachments_per_character[attachment_linking_template_map[template]]
				if template_attachments then
					attachment_node_linking = template_attachments[career]
				end
				local this_archetype = career_to_archetype_map[career]
				if not this_archetype then
					print(career .. " not found.")
				end
				
				-- Continue early if there's nothing to write
				if not attachment_node_linking and not (this_archetype and this_archetype ~= hat_archetype) then
					break
				end
				
				write_line(career .. " = {")
				indent()
					
				-- Attachment linking
				if template_attachments then
					
					local attachment_node_linking = template_attachments[career]
					if attachment_node_linking then
						write_line("attachment_node_linking = \"" .. attachment_node_linking .. "\",")
					end
					
				else
					print("Missing template: " .. template)
				end
				
				-- Transformation function
				if this_archetype ~= hat_archetype then
					local transformation_function = function_prefix .. "_" .. hat_archetype .. "_to_" .. this_archetype
					write_line("transformation_function = \"" .. transformation_function .. "\",")
				end
					
				outdent()
				write_line("},")
			end
		until true
	end
end


-- Execute Script

-- Clear file
local file = io.open(output_path, "w+")
io.close(file)

write_line("-- ##############################################")
write_line("-- ##############################################")

write_line("\nMORE_HATS_ADDONS = MORE_HATS_ADDONS or {")
indent()
write_line("configs = {},")
write_line("transformations = {}")
outdent()
write_line("}\n")

write_line("local addons = MORE_HATS_ADDONS")
write_line("local configs = addons.configs")
write_line("local transformations = addons.transformations\n")
write_line("local attachments = AttachmentNodeLinking\n")

write_line("-- Item Configurations")
write_line("-- ##############################################\n")

-- Process items
for key, item in pairs(ItemMasterList) do
	if item.slot_type == "hat" then
	
		write_line("configs." .. key .. " = {")
		indent()
		
		process_hat(item)
		
		outdent()
		write_line("}\n")
	end
end

write_line("\n-- Attachment Linkings")
write_line("-- ##############################################\n")

-- Create blank attachment linking tables
for i = 1, #attachment_linkings do
	local attachment_linking = attachment_linkings[i]
	write_line("attachments." .. attachment_linking .. " = {\n")
	write_line("}\n")
end

write_line("\n-- Transformation Functions")
write_line("-- ##############################################\n")

-- Create blank function definitions for transformations
for i = 1, #archetypes do
	local archetype_first = archetypes[i]
	for j = 1, #archetypes do
		if i ~= j then
			local archetype_second = archetypes[j]
			
			local transformation_function = function_prefix .. "_" .. archetype_first .. "_to_" .. archetype_second
			write_line("transformations." .. transformation_function .. " = function(unit)\n")
			write_line("end\n")
		end
	end
end

write_line("-- ##############################################")
write_line("-- ##############################################")
