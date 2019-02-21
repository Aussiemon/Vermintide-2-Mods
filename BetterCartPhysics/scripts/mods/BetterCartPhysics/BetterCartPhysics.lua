--[[
	author: Aussiemon
	
	-----
 
	Copyright 2019 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	Allows players to ride carts / payloads, and tightens up their strange push physics.
--]]

local mod = get_mod("BetterCartPhysics")

-- ##########################################################
-- ################## Variables #############################

mod.x_box_scalar = 1.1
mod.y_box_scalar = 1.1
mod.z_box_scalar = 1.1
mod.neg_x_box_scalar = 1.1
mod.neg_y_box_scalar = 1.1
mod.neg_z_box_scalar = 1.2

mod.carry_speed_scalar = 1.0
mod.carry_z_scalar = 0.5

mod.push_speed_scalar = 0.1

local Matrix4x4 = Matrix4x4
local POSITION_LOOKUP = POSITION_LOOKUP
local ScriptUnit = ScriptUnit
local Unit = Unit
local Vector3 = Vector3

local PayloadExtension = PayloadExtension

-- ##########################################################
-- ################## Functions #############################

mod.point_is_inside_payload_box = function (self, pos, oobb_pose, oobb_radius)
	local to_local_matrix = Matrix4x4.inverse(oobb_pose)
	local local_pos = Matrix4x4.transform(to_local_matrix, pos)
	
	-- Check for intersection
	if (local_pos.x > (-oobb_radius[1] * mod.neg_x_box_scalar) 
			and local_pos.x < (oobb_radius[1] * mod.x_box_scalar)
			and local_pos.y > (-oobb_radius[2] * mod.neg_y_box_scalar) 
			and local_pos.y < (oobb_radius[2] * mod.y_box_scalar)
			and local_pos.z > (-oobb_radius[3] * mod.neg_z_box_scalar) 
			and local_pos.z < (oobb_radius[3] * mod.z_box_scalar)) then
		
		-- Check for carry or push
		if local_pos.z > (oobb_radius[3] * mod.carry_z_scalar) then 
			return "carry"
		else
			return "push"
		end
	else
		return false
	end
end

-- ##########################################################
-- #################### Hooks ###############################

mod:hook_origin(PayloadExtension, "_push_player", function (self, player_unit, abs_speed, ...)
	
	-- Acquire positions
	local payload_unit = self._unit
	local pose, half_extents = Unit.box(payload_unit, true)
	local player_pos = POSITION_LOOKUP[player_unit]

	-- If the bounding box is intersected by the player
	local box_check_result = mod:point_is_inside_payload_box(player_pos, pose, half_extents)
	if box_check_result then
		
		-- Get velocity of push or carry
		local direction, speed
		if box_check_result == "carry" then
			local movement = self._spline_curve:movement()
			
			direction = movement:current_tangent_direction()
			speed = movement:speed() * mod.carry_speed_scalar
		else
			local payload_pos = POSITION_LOOKUP[payload_unit]
			local payload_pos_flat = Vector3.flat(payload_pos)
			local player_pos_flat = Vector3.flat(player_pos)
			
			direction = Vector3.normalize(player_pos_flat - payload_pos_flat)
			speed = abs_speed * mod.push_speed_scalar
		end
		
		-- Apply velocity to player
		local pushed_velocity = direction * speed
		local locomotion_extension = ScriptUnit.extension(player_unit, "locomotion_system")
		locomotion_extension:add_external_velocity(pushed_velocity, speed)
	end
end)

-- ##########################################################
-- ################### Callback #############################

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
