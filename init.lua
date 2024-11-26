local string m = "quartz_glass_stl:"

	core.register_node(m .. "aventurine_glass", {
	description = "Aventurine Tinted Glass",
	tiles = {"aventurine_glass.png"},
	groups = {cracky = 1, spaceship = 1},
	use_texture_alpha = "blend", -- thanks theidealist and minetest game
	drawtype = "glasslike",
	})
	core.register_node(m .. "citrine_glass", {
	description = "Citrine Tinted Glass",
	tiles = {"citrine_glass.png"},
	groups = {cracky = 1, spaceship = 1},
	use_texture_alpha = "blend", -- thanks theidealist
	drawtype = "glasslike",
	})
	core.register_node(m .. "rose_glass", {
	description = "Rose Quartz Tinted Glass",
	tiles = {"rose_glass.png"},
	groups = {cracky = 1, spaceship = 1},
	use_texture_alpha = "blend", -- thanks theidealist
	drawtype = "glasslike",
	})
	core.register_node(m .. "clearquartz_glass", {
	description = "Clear-Quartz Tinted Glass",
	tiles = {"clearquartz_glass.png"},
	groups = {cracky = 1, spaceship = 1},
	use_texture_alpha = "blend", -- thanks theidealist
	drawtype = "glasslike",
	})
	core.register_node(m .. "amethyst_glass", {
	description = "Amethyst Tinted Glass",
	tiles = {"amethyst_glass.png"},
	groups = {cracky = 1, spaceship = 1},
	use_texture_alpha = "blend", -- thanks theidealist
	drawtype = "glasslike",
	})

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