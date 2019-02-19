--[[
	author: Aussiemon and bi

	-----

	Copyright 2018 Aussiemon and Bi

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

	-----

	Provides better UI scaling for higher-resolution displays.
--]]

local mod = get_mod("HiDefUIScaling")

-- ##########################################################
-- ################## Variables #############################

local scale = mod:get("scale")

local AccomodateViewport = AccomodateViewport
local Application = Application
local RESOLUTION_LOOKUP = RESOLUTION_LOOKUP
local UIResolution = UIResolution
local UIResolutionWidthFragments = UIResolutionWidthFragments
local UIResolutionHeightFragments = UIResolutionHeightFragments
local UPDATE_RESOLUTION_LOOKUP = UPDATE_RESOLUTION_LOOKUP

local _G = _G
local math = math

-- ##########################################################
-- ################## Functions #############################

mod.UIResolutionScale = function (self, width, height)
	local width_scale, height_scale
	
	if width > UIResolutionWidthFragments() and height > UIResolutionHeightFragments() then
		local max_scaling_factor = math.max((((scale or 4) + 1) / 100), 1)

		-- Changed to allow scaling up to quadruple the original max scale (1 -> 4)
		width_scale = math.min(width / UIResolutionWidthFragments(), max_scaling_factor)
		height_scale = math.min(height / UIResolutionHeightFragments(), max_scaling_factor)
	else
		width_scale = w / UIResolutionWidthFragments()
		height_scale = h / UIResolutionHeightFragments()
	end
	
	return math.min(width_scale, height_scale)
end

-- ##########################################################
-- #################### Hooks ###############################

mod:hook_origin(_G, "UPDATE_RESOLUTION_LOOKUP", function (force_update, optional_scale_multiplier, ...)
	local resolution_lookup = RESOLUTION_LOOKUP

	local w, h = Application.resolution()
	local resolution_modified = w ~= resolution_lookup.res_w or h ~= resolution_lookup.res_h
	
	local scale = mod:UIResolutionScale(w, h)
	if optional_scale_multiplier then
		scale = scale * optional_scale_multiplier
	end

	local scale_modified = false
	if resolution_lookup.scale ~= scale then
		scale_modified = true
	end

	if resolution_modified or scale_modified or force_update then
		resolution_lookup.res_w = w
		resolution_lookup.res_h = h

		AccomodateViewport()

		resolution_lookup.scale = scale
		resolution_lookup.inv_scale = 1 / scale
	end

	resolution_lookup.modified = resolution_modified or force_update
end)

-- ##########################################################
-- ################### Callback #############################

mod.on_setting_changed = function ()
	-- There's only one setting for this mod, so don't check for changed setting_id
	scale = mod:get("scale")
	UPDATE_RESOLUTION_LOOKUP(true)
end

mod.on_enabled = function ()
	UPDATE_RESOLUTION_LOOKUP(true)
end

mod.on_disabled = function ()
	UPDATE_RESOLUTION_LOOKUP(true)
end

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
