--[[
	author: Aussiemon
	
	-----
 
	Copyright 2018 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	Turns Skarrik Spinemanglr's voice into Krench, the true Clan Fester warlord.
--]]

local mod = get_mod("Krenchmanglr")

-- ##########################################################
-- ################## Variables #############################

-- Play_ect_special_lunge_attack_vo
-- Play_enemy_chieftain_attack_vce
-- Play_enemy_chieftain_hurt_vce
-- Play_enemy_combat_stormvermin_champion_special_attack_hit
-- Play_enemy_stormvermin_champion_charge_up
-- Play_enemy_stormvermin_champion_electric_floor
-- Play_enemy_stormvermin_champion_hit_ground
-- Play_enemy_stormvermin_champion_jump
-- Play_enemy_stormvermin_champion_special_swing_heavy
-- Play_enemy_stormvermin_champion_swing
-- Play_enemy_stormvermin_champion_swing_electric
-- Play_enemy_stormvermin_champion_thrust_attack

mod.banters = {
	"ect_gameplay_banter_01",
	"ect_gameplay_banter_03",
	"ect_gameplay_banter_04",
	"ect_gameplay_banter_05",
	"ect_gameplay_banter_06",
	"ect_gameplay_banter_07",
	"ect_gameplay_banter_08",
}

mod.event_replace_table = {
	-- VCE
	Play_ewl_grunts_hurt = "Play_enemy_chieftain_hurt_vce",
	Play_ewl_grunts_swing = "Play_enemy_chieftain_attack_vce",
	Play_ewl_grunts_swing_heavy = "Play_enemy_chieftain_attack_vce",
	
	-- Taunt Replies
	ewl_level_skaven_stronghold_taunt_reply_01 = "random",
	ewl_level_skaven_stronghold_taunt_reply_02 = "random",
	ewl_level_skaven_stronghold_taunt_reply_03 = "random",
	ewl_level_skaven_stronghold_taunt_reply_04 = "random",
	ewl_level_skaven_stronghold_taunt_reply_05 = "random",

	-- Combat Sounds
	Play_enemy_skaven_warlord_combat_spear_heavy_swing = "Play_enemy_stormvermin_champion_special_swing_heavy",
	Play_enemy_skaven_warlord_combat_spear_swing = "Play_enemy_stormvermin_champion_swing",
	Play_enemy_skaven_warlord_combat_sword_1h_heavy_swing = "Play_enemy_stormvermin_champion_swing_electric",
	Play_enemy_skaven_warlord_combat_sword_1h_swing = "Play_enemy_stormvermin_champion_swing",

	-- Banters
	ewl_gameplay_banter_01 = "ect_gameplay_banter_01",
	ewl_gameplay_banter_02 = "random",
	ewl_gameplay_banter_03 = "ect_gameplay_banter_03",
	ewl_gameplay_banter_04 = "ect_gameplay_banter_04",
	ewl_gameplay_banter_05 = "ect_gameplay_banter_05",
	ewl_gameplay_banter_06 = "ect_gameplay_banter_06",
	ewl_gameplay_banter_07 = "ect_gameplay_banter_07",
	ewl_gameplay_banter_08 = "ect_gameplay_banter_08",

	-- Summoning Allies
	ewl_gameplay_summoning_skaven_01 = "ect_gameplay_summoning_skaven_01",
	ewl_gameplay_summoning_skaven_02 = "ect_gameplay_summoning_skaven_02",
	ewl_gameplay_summoning_skaven_03 = "ect_gameplay_summoning_skaven_03",
	ewl_gameplay_summoning_skaven_04 = "ect_gameplay_summoning_skaven_04",
	ewl_gameplay_summoning_skaven_05 = "ect_gameplay_summoning_skaven_05",
	ewl_gameplay_summoning_skaven_06 = "ect_gameplay_summoning_skaven_06",
	ewl_gameplay_summoning_skaven_07 = "ect_gameplay_summoning_skaven_07",
	ewl_gameplay_summoning_skaven_08 = "ect_gameplay_summoning_skaven_08",
}

local World = World
local WwiseWorld = WwiseWorld

local math = math

-- ##########################################################
-- ################## Functions #############################

local get_event_name = function(event_name)
	event_name = mod.event_replace_table[event_name] or event_name
	if event_name == "random" then
		event_name = mod.banters[math.random(#mod.banters)]
	end
	return event_name
end

-- ##########################################################
-- #################### Hooks ###############################

mod:hook(WwiseWorld, "trigger_event", function (func, self, event_name, ...)
	
	-- Replace sound event_name
	event_name = get_event_name(event_name)
	
	-- Original function
	local result = func(self, event_name, ...)
	return result
end)

-- ##########################################################
-- ################### Callback #############################

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
