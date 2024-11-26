local string m = "quartz_glass_stl:"



	local function makeglassblock(modpathname, blockname) 
		core.register_node(m .. modpathname, {
			description = blockname,
			tiles = {modpathname .. ".png"},
			groups = {cracky = 1, spaceship = 1},
			use_texture_alpha = "blend", -- thanks theidealist and minetest game
			drawtype = "glasslike",
			paramtype = "light",
			sunlight_propagates = true,
		})
	end
	makeglassblock("aventurine_glass", "Aventurine Tinted Glass")
	makeglassblock("citrine_glass", "Citrine Tinted Glass")
	makeglassblock("rose_glass", "Rose Quartz Tinted Glass")
	makeglassblock("clearquartz_glass", "Clear-Quartz Tinted Glass")
	makeglassblock("amethyst_glass", "Amethyst Tinted Glass")
	
	makeglassblock("blue_quartz_glass", "Blue Quartz Glass")

local function defglass(glassinput, glassoutput)
	core.register_craft({
		output = glassoutput,
		recipe = {
		{glassinput, glassinput, glassinput},
		{glassinput, "stl_decor:glass", glassinput},
		{glassinput, glassinput, glassinput}
		}
	})
end

defglass("stl_core:quartz1", m .. "amethyst_glass 8")
defglass("stl_core:quartz2", m .. "citrine_glass 8")
defglass("stl_core:quartz3", m .. "clearquartz_glass 8")
defglass("stl_core:quartz4", m .. "rose_glass 8")
defglass("stl_core:quartz5", m .. "aventurine_glass 8")
defglass("stl_decor:glass", m .. "blue_quartz_glass 9")