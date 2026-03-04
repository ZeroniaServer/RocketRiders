#Canopy deploy animation/sounds
execute if score @s entity.age matches 0..49 if predicate custom:periodic_tick/3 run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~ ~ 1 0 1 0.1 10
execute if score @s entity.age matches 0 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 9 positioned ~ ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 9 positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 9 positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 9.. positioned ~ ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_wood[axis=y]
execute if score @s entity.age matches 9.. positioned ~ ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 9.. positioned ~ ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 9 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 19 positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 19 positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 19 positioned ~ ~ ~-2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 19 positioned ~ ~ ~2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 19.. positioned ~-1 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. positioned ~1 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. positioned ~ ~ ~-2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. positioned ~ ~ ~2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 19 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 29 positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 29 positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 29 positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 29 positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 29.. positioned ~-1 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. positioned ~-1 ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. positioned ~1 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. positioned ~1 ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 29 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 39 positioned ~-2 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 39 positioned ~2 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 39.. positioned ~-2 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 39.. positioned ~2 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 39 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 39.. run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~2 ~ 1 1 1 1 300

execute if score @s entity.age matches 45 run fill ~-1 ~ ~-1 ~1 ~ ~1 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute if score @s entity.age matches 45 run fill ~-1 ~ ~-1 ~1 ~ ~1 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute if score @s entity.age matches 45 run fill ~-1 ~ ~-1 ~1 ~ ~1 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute if score @s entity.age matches 45 run fill ~-1 ~ ~-1 ~1 ~ ~1 birch_leaves[persistent=false,distance=1] replace birch_leaves

execute if score @s entity.age matches 9..45 align xyz positioned ~-2.001 ~-0.001 ~-2.001 as @e[dx=4.002,dy=0.002,dz=4.002,type=marker,tag=obsidianshield] positioned as @s if block ~ ~ ~ #minecraft:leaves run function custom:__impl__/place_utility_structure/replace_glass_pane

tag @s[scores={entity.age=45..}] add canopy.animated
