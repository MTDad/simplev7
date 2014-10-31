Simple V7 for Minetest Game on Mapgen v7 by MTDad v. 1.0
License: WTFPL
Depends: Default (Minetest Game)
Minetest Version: Should work from 0.4.8 to 0.4.10

This mod simply creates a biome system somewhat like that found in Minetest Game on Mapgen v6, but On Mapgen v7.
The purpose of this was to cater to those longing for a vanilla minetest game on v7, or those without the means or desire to reconcile their favorite mods with the other v7 mods available. Default nodes are used, so mobs, animals and plants can spawn.

There are two new biomes:
	Dune: sand dunes, dotted with swaths of grass, mostly included to break up the scenery using default nodes.
	Mountain/Alpine: snow above 40 nodes in height, mostly included because I wanted to see snowcaps on the hills.

The mountain biome has its own "snowtree", which is really just a deformed default tree. If you harvest it you get default wood, leaves and saplings.
If you plant a default sapling on a snowblock it will grow as the "snowtree" form.

Caveats:
Biomes tend to be stupid big or stupid small. Sometimes downright monstrous.
Every Jungletree looks the same, every Appletree looks the same. When replanted however, normal variable looking trees will grow.

As an option moretrees jungle and beech trees can be substituted. They will however, spawn as saplings at mapgen. Be sure to enable moretrees and plantlife, then modify line 3 of simplev7/init.lua by changing false to true. This will also place palmtrees on warm beaches.

v6 mods that rely on perlin noise for the v6 biome system won't work properly without modification. Plantlife still gets lots of plants down, they just may not be in the right spot. Pyramids, however, really struggles. The following can be inserted AFTER line 103 of pyramids/init.lua;

----------------------------------------------
if minetest.get_modpath("simplev7") ~= nil then
	perl1 = {SEED1 = 5349, OCTA1 = 3, PERS1 = 0.7, SCAL1 = 500}
end
----------------------------------------------

such that the complete section looks like this;

----------------------------------------------
local perl1 = {SEED1 = 9130, OCTA1 = 3,	PERS1 = 0.5, SCAL1 = 250} -- Values should match minetest mapgen V6 desert noise.
if minetest.get_modpath("simplev7") ~= nil then
	perl1 = {SEED1 = 5349, OCTA1 = 3, PERS1 = 0.7, SCAL1 = 500}
end
----------------------------------------------

This will allow pyramids to find some desert sand.

The astute will notice those are the v7 Heat Noise Parameters, (5349, 3, 0.7, 500)
The Humidity for those inclined to tinker are (842, 3, 0.55, 500)

Installation:
Simply download, unpack and rename folder "simplev7", then place it in your mods folder.

To use:
Start minetest, create a Minetest Game world using Mapgen v7, and enable simplev7 for it.

Have Fun.

