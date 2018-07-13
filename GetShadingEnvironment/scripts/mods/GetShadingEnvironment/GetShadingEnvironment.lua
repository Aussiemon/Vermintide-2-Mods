--[[
	author: Aussiemon
	
	-----
 
	Copyright 2018 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	Takes the variables of the current shading environment and writes a .shading_environment file out of them.
--]]

local mod = get_mod("GetShadingEnvironment")

-- ##########################################################
-- ################## Variables #############################

-- Environment variables (and types) used in a VT shading env:
mod.env_variable_list = {

	ambient_diffuse_fade = "vector3",
	ambient_diffuse_fade_type = "integer",
	ambient_tint = "vector3",
	
	ao_enabled = "scalar",
	ao_intensity = "scalar",
	ao_quality = "scalar",
	ao_radius = "scalar",
	
	bloom_enabled = "scalar",
	bloom_lens_dirt_amount = "scalar",
	bloom_threshold_offset_falloff = "vector3",
	bloom_tint = "vector3",
	
	color_grading_enabled = "scalar",
	--color_grading_map = "resource", -- Can't currently retrieve
	
	custom_fog_blend = "vector3",
	custom_fog_blend_color = "vector3",
	custom_fog_blend_direction = "vector3",
	custom_fog_blend_enabled = "scalar",
	
	dof_enabled = "scalar",
	dof_focal_distance = "scalar",
	dof_focal_far_scale = "scalar",
	dof_focal_near_scale = "scalar",
	dof_focal_region = "scalar",
	dof_focal_region_end = "scalar",
	dof_focal_region_start = "scalar",
	
	emissive_particle_intensity = "scalar",
	
	exposure = "scalar",
	
	eye_adaptation_enabled = "scalar",
	eye_adaptation_speed_min_max = "vector3",
	eye_intensity = "scalar",
	
	fog_color = "vector3",
	fog_depth_range = "vector2",
	fog_enabled = "scalar",
	fog_sun_blend = "vector3",
	fog_type = "integer",
	
	--global_diffuse_map = "resource", -- Can't currently retrieve
	--global_lens_dirt_map = "resource", -- Can't currently retrieve
	global_roughness_multiplier = "scalar",
	--global_specular_map = "resource", -- Can't currently retrieve
	
	heatmap_world_extents = "vector2",
	heatmap_world_position = "vector2",
	
	height_fog_offset_falloff = "vector2",
	
	lens_quality_enabled = "scalar",
	lens_quality_properties = "vector3",
	
	light_shaft_enabled = "scalar",
	light_shaft_settings = "vector2",
	light_shaft_weigth = "scalar",
	
	local_shadow_map_bias = "vector3",
	
	motion_blur_amount = "scalar",
	motion_blur_enabled = "scalar",
	
	offscreen_target_projection = "scalar",
	
	outline_color_alpha = "vector3",
	outline_color_blue = "vector3",
	outline_color_green = "vector3",
	outline_color_red = "vector3",
	outline_enabled = "integer",
	outline_multiplier_alpha = "scalar",
	outline_multiplier_blue = "scalar",
	outline_multiplier_green = "scalar",
	outline_multiplier_red = "scalar",
	--outline_thickness = "vector4", -- Can't currently retrieve
	
	secondary_sun_blend = "vector3",
	secondary_sun_color = "vector3",
	secondary_sun_direction = "vector3",
	secondary_sun_enabled = "scalar",
	
	--skydome_cloud_map = "resource", -- Can't currently retrieve
	skydome_cloud_speed_scale = "vector2",
	skydome_fog_height_falloff = "vector2",
	skydome_intensity = "scalar",
	--skydome_map = "resource", -- Can't currently retrieve
	skydome_tint_color = "vector3",
	skydome_u_offset = "scalar",
	
	ssm_center = "vector3",
	ssm_constant_update_enabled = "scalar",
	ssm_enabled = "scalar",
	ssm_near_far = "vector2",
	ssm_radius = "scalar",
	ssm_rotation = "scalar",
	ssm_shadow_map_bias = "vector3",
	
	ssr_enabled = "scalar",
	ssr_ray_bending_enabled = "scalar",
	ssr_screen_edge_threshold = "scalar",
	ssr_surface_thickness_threshold = "vector2",
	
	sun_color = "vector3",
	sun_direction = "vector3",
	sun_enabled = "scalar",
	
	sun_shadow_map_bias = "vector3",
	sun_shadow_slice_depth_ranges = "vector2_array",
	sun_shadows_enabled = "scalar",
	
	temporal_effects_enabled = "scalar",
	
	vignette_color = "vector3",
	vignette_enabled = "scalar",
	vignette_scale_falloff_opacity = "vector3",
	
	wind_amount = "vector3"
}

mod.env_variable_order = {
	"ambient_diffuse_fade",
	"ambient_diffuse_fade_type",
	"ambient_tint",
	"ao_enabled",
	"ao_intensity",
	"ao_quality",
	"ao_radius",
	"bloom_enabled",
	"bloom_lens_dirt_amount",
	"bloom_threshold_offset_falloff",
	"bloom_tint",
	"color_grading_enabled",
	--"color_grading_map", -- Can't currently retrieve
	"custom_fog_blend",
	"custom_fog_blend_color",
	"custom_fog_blend_direction",
	"custom_fog_blend_enabled",
	"dof_enabled",
	"dof_focal_distance",
	"dof_focal_far_scale",
	"dof_focal_near_scale",
	"dof_focal_region",
	"dof_focal_region_end",
	"dof_focal_region_start",
	"emissive_particle_intensity",
	"exposure",
	"eye_adaptation_enabled",
	"eye_adaptation_speed_min_max",
	"eye_intensity",
	"fog_color",
	"fog_depth_range",
	"fog_enabled",
	"fog_sun_blend",
	"fog_type",
	--"global_diffuse_map", -- Can't currently retrieve
	--"global_lens_dirt_map", -- Can't currently retrieve
	"global_roughness_multiplier",
	--"global_specular_map", -- Can't currently retrieve
	"heatmap_world_extents",
	"heatmap_world_position",
	"height_fog_offset_falloff",
	"lens_quality_enabled",
	"lens_quality_properties",
	"light_shaft_enabled",
	"light_shaft_settings",
	"light_shaft_weigth",
	"local_shadow_map_bias",
	"motion_blur_amount",
	"motion_blur_enabled",
	"offscreen_target_projection",
	"outline_color_alpha",
	"outline_color_blue",
	"outline_color_green",
	"outline_color_red",
	"outline_enabled",
	"outline_multiplier_alpha",
	"outline_multiplier_blue",
	"outline_multiplier_green",
	"outline_multiplier_red",
	--"outline_thickness", -- Can't currently retrieve
	"secondary_sun_blend",
	"secondary_sun_color",
	"secondary_sun_direction",
	"secondary_sun_enabled",
	--"skydome_cloud_map", -- Can't currently retrieve
	"skydome_cloud_speed_scale",
	"skydome_fog_height_falloff",
	"skydome_intensity",
	--"skydome_map", -- Can't currently retrieve
	"skydome_tint_color",
	"skydome_u_offset",
	"ssm_center",
	"ssm_constant_update_enabled",
	"ssm_enabled",
	"ssm_near_far",
	"ssm_radius",
	"ssm_rotation",
	"ssm_shadow_map_bias",
	"ssr_enabled",
	"ssr_ray_bending_enabled",
	"ssr_screen_edge_threshold",
	"ssr_surface_thickness_threshold",
	"sun_color",
	"sun_direction",
	"sun_enabled",
	"sun_shadow_map_bias",
	"sun_shadow_slice_depth_ranges",
	"sun_shadows_enabled",
	"temporal_effects_enabled",
	"vignette_color",
	"vignette_enabled",
	"vignette_scale_falloff_opacity",
	"wind_amount"
}

mod:command("get_shading_environment", "export current shading environment", function() mod:begin_script() end)

local Managers = Managers
local ShadingEnvironment = ShadingEnvironment
local World = World

local io = io
local math = math
local pairs = pairs
local string = string

-- ##########################################################
-- ################## Functions #############################

-- Get scalar from shading environment and format for file
mod.get_scalar = function(shading_env, variable_name)
	local scalar = ShadingEnvironment.scalar(shading_env, variable_name)
	return string.format("%.7f",scalar) .. "\n\t\t\t"
end

-- Get integer from shading environment and format for file
mod.get_integer = function(shading_env, variable_name)
	local scalar = ShadingEnvironment.scalar(shading_env, variable_name)
	local rounded_value = math.floor(scalar + 0.5)
	return string.format("%.1f",rounded_value) .. "\n\t\t\t"
end

-- Get vector2 from shading environment and format for file
mod.get_vector2 = function(shading_env, variable_name)
	local vector2 = ShadingEnvironment.vector2(shading_env, variable_name)
	
	local return_string = "nil" .. "\n\t\t\t"
	if vector2 then
		return_string = "[\n\t\t\t\t" .. string.format("%.7f",vector2.x) .. "\n\t\t\t\t" .. string.format("%.7f",vector2.y) .. "\n\t\t\t]\n\t\t\t"
	end
	
	return return_string
end

-- Get vector3 from shading environment and format for file
mod.get_vector3 = function(shading_env, variable_name)
	local vector3 = ShadingEnvironment.vector3(shading_env, variable_name)
	
	local return_string = "nil" .. "\n\t\t\t"
	if vector3 then
		return_string = "[\n\t\t\t\t" .. string.format("%.7f",vector3.x) .. "\n\t\t\t\t" .. string.format("%.7f",vector3.y) .. "\n\t\t\t\t" .. string.format("%.7f",vector3.z) .. "\n\t\t\t]\n\t\t\t"
	end
	
	return return_string
end

-- Get array_scalar from shading environment and format for file
mod.get_scalar_array = function(shading_env, variable_name)
	local num_elements = ShadingEnvironment.array_elements(shading_env, variable_name)
	local return_string = "nil\n\t\t\t"
	
	if num_elements and num_elements > 0 then
		return_string = "[\n\t\t\t\t"
		for i = 1, num_elements do
			local element = ShadingEnvironment.array_scalar(shading_env, variable_name, i-1)
			return_string = return_string .. string.format("%.7f",element)
			
			if i < num_elements then
				return_string = return_string .. "\n\t\t\t\t"
			else
				return_string = return_string .. "\n\t\t\t]\n\t\t\t"
			end
		end
	end
	
	return return_string
end

-- Get array_vector2 from shading environment and format for file
mod.get_vector2_array = function(shading_env, variable_name)
	local num_elements = ShadingEnvironment.array_elements(shading_env, variable_name)
	local return_string = "nil\n\t\t\t"
	
	if num_elements and num_elements > 0 then
		return_string = "[\n\t\t\t\t"
		for i = 1, num_elements do
			local element = ShadingEnvironment.array_vector2(shading_env, variable_name, i-1)
			return_string = return_string .. string.format("%.7f",element.x) .. "\n\t\t\t\t" .. string.format("%.7f",element.y)
			
			if i < num_elements then
				return_string = return_string .. "\n\t\t\t\t"
			else
				return_string = return_string .. "\n\t\t\t]\n\t\t\t"
			end
		end
	end
	
	return return_string
end

-- Get array_vector3 from shading environment and format for file
mod.get_vector3_array = function(shading_env, variable_name)
	local num_elements = ShadingEnvironment.array_elements(shading_env, variable_name)
	local return_string = "nil\n\t\t\t"
	
	if num_elements and num_elements > 0 then
		return_string = "[\n\t\t\t\t"
		for i = 1, num_elements do
			local element = ShadingEnvironment.array_vector3(shading_env, variable_name, i-1)
			return_string = "[\n\t\t\t\t" .. string.format("%.7f",element.x) .. "\n\t\t\t\t" .. string.format("%.7f",element.y) .. "\n\t\t\t\t" .. string.format("%.7f",element.z) .. "\n\t\t\t]\n\t\t\t"
			
			if i < num_elements then
				return_string = return_string .. "\n\t\t\t\t"
			else
				return_string = return_string .. "\n\t\t\t]\n\t\t\t"
			end
		end
	end
	
	return return_string
end

mod.get_nothing = function(shading_env, variable_name)
	return "unknown" .. "\n\t\t\t"
end

-- Map values to functions
mod.get_value = {
	integer = mod.get_integer,
	scalar = mod.get_scalar,
	vector2 = mod.get_vector2,
	vector3 = mod.get_vector3,
	vector4 = mod.get_nothing,
	resource = mod.get_nothing,
	scalar_array = mod.get_scalar_array,
	vector2_array = mod.get_vector2_array,
	vector3_array = mod.get_vector3_array
}

mod.begin_script = function(self)
	mod:pcall(function()
		mod:echo("Starting shading environment creation...")
		
		local world_manager = Managers.world
		if not world_manager then return end
		
		local level_world = world_manager.world(world_manager, "level_world")
		if level_world and World.has_data(level_world, "shading_environment") then
		
			-- Start creating the .shading_environment file
			local shading_env = World.get_data(level_world, "shading_environment")
			
			mod.shading_environment_counter = mod.shading_environment_counter or 1
			local level_key = "environment"
			if Managers and Managers.state and Managers.state.game_mode then
				level_key = Managers.state.game_mode:level_key() or "environment"
			end
			
			local file_path = "../".. level_key .. "_" .. tostring(mod.shading_environment_counter) .. ".shading_environment"
			local file = io.open(file_path, "w+")
			
			if not file then return end
			file:write("\nsettings = {\n\tdefault = {\n\t\teditor_variables = {\n\t\t}\n\t\tvariable_weights = {\n\t\t}\n\t\tvariables = {\n\t\t\t")
			
			for _,key in pairs(mod.env_variable_order) do
				file:write(key)
				local print_value = " = " .. mod.get_value[mod.env_variable_list[key]](shading_env,key)
				file:write(print_value)
			end
			
			file:write("\n\t\t}\n\t}\n}\ntemplate = \"core/stingray_renderer/environments/outdoor.shading_environment_template\"\n")
			
			io.close(file)
			
			mod.shading_environment_counter = mod.shading_environment_counter + 1
			mod:echo("..." .. file_path .. " created in your Vermintide game folder.")
		else
			mod:echo("...Failed. No shading environment found.")
		end
	end)
end

-- ##########################################################
-- ################### Callback #############################

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################
