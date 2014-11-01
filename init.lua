-- Simple V7 for Minetest Game in Mapgen v7 by MTDad

submoretrees = true
-- set this to true if you want to replace the default trees with moretrees versions.

minetest.register_biome({
	name = "forest",
	node_top = "default:dirt_with_grass",		depth_top = 1,
	node_filler = "default:dirt",			depth_filler = 3,
	height_min = 2,					height_max =40,
	heat_point = 50,				humidity_point = 80,
})

minetest.register_biome({
	name = "meadow",
	node_top = "default:dirt_with_grass",		depth_top = 1,
	node_filler = "default:dirt",			depth_filler = 3,
	height_min = 2,					height_max = 40,
	heat_point = 50,				humidity_point = 30,
})

minetest.register_biome({
	name = "beach",
	node_top = "default:sand",			depth_top = 2,
	height_min = -500,				height_max = 2,
	heat_point = 40,				humidity_point = 50,
})

minetest.register_biome({
	name = "tropical_beach",
	node_top = "default:sand",			depth_top = 5,
	height_min = -500, 				height_max = 3,
	heat_point = 80.0,				humidity_point = 50,
})

minetest.register_biome({
	name = "jungle",
	node_top = "default:dirt_with_grass",		depth_top = 1,
	node_filler = "default:dirt",			depth_filler = 3,
	height_min = 2,					height_max = 40,
	heat_point = 80,				humidity_point = 80,
})

minetest.register_biome({
	name = "desert",
	node_top = "default:desert_sand",		depth_top = 3,
	node_filler = "default:desert_stone",		depth_filler = 57,
	height_min = 2,					height_max = 40,
	heat_point = 80,				humidity_point = 20,
})

minetest.register_biome({
	name = "mountain",
	node_top = "default:snowblock",			depth_top = 1,
	node_filler = "default:dirt_with_snow",		depth_filler = 1,
	height_min = 41,				height_max = 80,
})

minetest.register_biome({
	name = "alpine",
	node_top = "default:snowblock",			depth_top = 1,
	node_filler = "default:dirt_with_snow",		depth_filler = 1,
	height_min = 81,				height_max = 300,
})

minetest.register_biome({
	name = "dune",
	node_top = "default:sand",			depth_top = 3,
	node_filler = "default:dirt",			depth_filler = 2,
	height_min = 1,					height_max = 30,
	heat_point = 10,				humidity_point = 10,
})

minetest.register_biome({
	name = "prairie",
	node_top = "default:dirt_with_grass",		depth_top = 1,
	node_filler = "default:dirt",			depth_filler = 4,
	height_min = 10,				height_max = 40,
	heat_point = 40,				humidity_point = 20,
})

minetest.register_biome({
	name = "papyrus",
	node_top = "default:dirt_with_grass",		depth_top = 1,
	node_filler = "default:dirt",			depth_filler = 2,
	height_min = 1,					height_max = 1,
	heat_point = 60,				humidity_point = 50,
})

if submoretrees and minetest.get_modpath("moretrees") ~= nil then

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.027,
	biomes = {"forest"},
	decoration = "moretrees:beech_sapling_ongen",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on ="default:dirt_with_grass",
	sidelen = 80,
	fill_ratio = 0.003,
	biomes = {"meadow"},
	decoration = "moretrees:beech_sapling_ongen",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.013,
	biomes = {"jungle"},
	decoration = {"moretrees:jungletree_sapling_ongen"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:sand",
	sidelen = 16,
	fill_ratio = 0.027,
	spawn_by = "default:water_source",		num_spawn_by = 2,
	biomes = {"tropical_beach"},
	decoration = "moretrees:palm_sapling_ongen",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_with_grass",
	sidelen = 80,
	fill_ratio = 0.003,
	biomes = {"jungle"},
	decoration = {"moretrees:rubber_tree_sapling_ongen"},
})

else

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.037,
	biomes = {"forest"},
	flags = "place_center_x, place_center_z",
	schematic = minetest.get_modpath("simplev7").."/schematics/appletree.mts",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass", "default:dirt"},
	sidelen = 80,
	fill_ratio = 0.003,
	biomes = {"meadow"},
	flags = "place_center_x, place_center_z",
	schematic = minetest.get_modpath("simplev7").."/schematics/appletree.mts",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.057,
	biomes = {"jungle"},
	flags = "place_center_x, place_center_z",
	schematic = minetest.get_modpath("simplev7").."/schematics/jungletree.mts",
})

end

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:snowblock",
	sidelen = 16,
	fill_ratio = 0.047,
	flags = "place_center_x, place_center_z",
	biomes = {"mountain"},
	schematic = minetest.get_modpath("simplev7").."/schematics/snowtreeongen.mts",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.17,
	biomes = {"jungle"},
	decoration = {"default:junglegrass"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:sand",
	sidelen = 16,
	noise_params = {offset = 0, scale = 1, spread = {x = 80, y = 80, z = 80}, seed = 983240, octaves = 4, persist = 0.55},
	biomes = {"dune"},
	decoration = "default:grass_5",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.17,
	biomes = {"papyrus"},
	schematic = minetest.get_modpath("simplev7").."/schematics/papyrus.mts",
})

minetest.register_abm({
	nodenames = "default:sapling",
	interval = 40,
	chance = 20,
	action = function(pos, node)
		if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name ~= "default:snowblock" then
			return
		end
		minetest.remove_node(pos)
		pos.x = pos.x-3
		pos.z = pos.z-3
		minetest.place_schematic(pos, minetest.get_modpath("simplev7").."/schematics/snowtree.mts", 0, {}, false)
	end,
})

