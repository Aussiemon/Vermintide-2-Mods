--[[
	author: Aussiemon
	
	-----
 
	Copyright 2018 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	Plays relevant unused character-specific dialogue when a potion is consumed.
--]]

local mod = get_mod("PotionDialogue")

-- ##########################################################
-- ################## Variables #############################

mod.stances = {
	"offensive",
	"defensive"
}

mod.stance_equivalents_all = {
	-- Reduced
	damage_boost_potion_reduced = "offensive",
	speed_boost_potion_reduced = "defensive",
	cooldown_reduction_potion_reduced = "random",
	invulnerability_potion_reduced = "defensive",
	-- Normal
	damage_boost_potion = "offensive",
	speed_boost_potion = "defensive",
	cooldown_reduction_potion = "random",
	invulnerability_potion = "defensive",
	-- Increased
	damage_boost_potion_increased = "offensive",
	speed_boost_potion_increased = "defensive",
	cooldown_reduction_potion_increased = "random",
	invulnerability_potion_increased = "defensive"
}

mod.stance_equivalents_limited = {
	damage_boost_potion = "offensive",
	speed_boost_potion = "defensive",
	cooldown_reduction_potion = "random",
	invulnerability_potion = "defensive"
}

local FrameTable = FrameTable
local ScriptUnit = ScriptUnit
local Unit = Unit

local ActionPotion = ActionPotion

local math = math

-- ##########################################################
-- ################## Functions #############################

mod.trigger_potion_dialogue_event = function(self, action_extension)
	local current_action = action_extension.current_action
	local owner_unit = action_extension.owner_unit
	local buff_template = current_action.buff_template

	if buff_template and mod.stance_equivalents_all[buff_template] and Unit.alive(owner_unit) then
		local dialogue_input = ScriptUnit.extension_input(owner_unit, "dialogue_system")
		
		local event_data = FrameTable.alloc_table()
		event_data.stance_type = mod.stance_equivalents_all[buff_template]
		if event_data.stance_type == "random" then
			event_data.stance_type = mod.stances[(math.random(#mod.stances))]
		end

		dialogue_input:trigger_networked_dialogue_event("stance_triggered", event_data)
	end
end

-- ##########################################################
-- #################### Hooks ###############################

mod:hook_safe(ActionPotion, "finish", function (action_extension, reason, ...)
	
	-- Play dialogue events
	if reason == "action_complete" then
		mod:trigger_potion_dialogue_event(action_extension)
	end
end)

-- ##########################################################
-- ################### Callback #############################

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
