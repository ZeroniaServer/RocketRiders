execute unless entity @s[predicate=entities:type/canopy] run return fail

execute if entity @s[tag=!canopy.forgotten_origin] on origin run attribute @s minecraft:safe_fall_distance modifier remove rocketriders:canopy_teleporting
execute if entity @s[tag=!canopy.forgotten_origin] on origin run attribute @s minecraft:jump_strength modifier remove rocketriders:canopy_teleporting
execute if entity @s[tag=!canopy.forgotten_origin] on origin run attribute @s minecraft:movement_speed modifier remove rocketriders:canopy_teleporting
execute if entity @s[tag=!canopy.forgotten_origin] on origin run attribute @s minecraft:gravity modifier remove rocketriders:canopy_teleporting

fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves
execute if block ~ ~ ~ oak_wood run setblock ~ ~ ~ air destroy
execute if block ~ ~1 ~ oak_wood run setblock ~ ~1 ~ air destroy
fill ~-3 ~-3 ~-3 ~3 ~2 ~3 air replace moving_piston{blockState:{Name:"minecraft:oak_wood"}}
execute if block ~1 ~1 ~ #minecraft:banners run setblock ~1 ~1 ~ air destroy
execute if block ~-1 ~1 ~ #minecraft:banners run setblock ~-1 ~1 ~ air destroy
execute if block ~ ~1 ~1 #minecraft:banners run setblock ~ ~1 ~1 air destroy
execute if block ~ ~1 ~-1 #minecraft:banners run setblock ~ ~1 ~-1 air destroy
kill @s
