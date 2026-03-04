#Canopy deploy animation/sounds
execute if score @s entity.age matches 0..49 if predicate custom:periodic_tick/3 run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~ ~ 1 0 1 0.1 10
execute if score @s entity.age matches 0 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 4.. positioned ~ ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_wood[axis=y]
execute if score @s entity.age matches 4 positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 4 positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 4.. positioned ~ ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 4.. positioned ~ ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 4 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 9 positioned ~ ~ ~-2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 9 positioned ~ ~ ~2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 9.. positioned ~ ~ ~-2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 9.. positioned ~ ~ ~2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 9 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 14 positioned ~ ~ ~-3 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 14 positioned ~ ~ ~3 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 14.. positioned ~ ~ ~-3 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 14.. positioned ~ ~ ~3 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 14 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 19 positioned ~1 ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 19 positioned ~1 ~ ~-2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 19 positioned ~-1 ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 19 positioned ~-1 ~ ~2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 19.. positioned ~1 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. positioned ~1 ~ ~-2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. positioned ~-1 ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. positioned ~-1 ~ ~2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 19 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 24 positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 24 positioned ~2 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 24 positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 24 positioned ~-2 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 24 positioned ~1 ~ ~-3 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 24 positioned ~-1 ~ ~3 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 24.. positioned ~1 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. positioned ~2 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. positioned ~-1 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. positioned ~-2 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. positioned ~1 ~ ~-3 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. positioned ~-1 ~ ~3 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 24 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 29 positioned ~1 ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 29 positioned ~2 ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 29 positioned ~-1 ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 29 positioned ~-2 ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 29.. positioned ~1 ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. positioned ~2 ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. positioned ~-1 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. positioned ~-2 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 29 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 34 positioned ~-1 ~ ~-2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 34 positioned ~1 ~ ~2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 34.. positioned ~-1 ~ ~-2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 34.. positioned ~1 ~ ~2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 34 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 39 positioned ~2 ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 39 positioned ~-2 ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 39.. positioned ~2 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 39.. positioned ~-2 ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 39 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 44 positioned ~2 ~ ~-2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 44 positioned ~-2 ~ ~2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 44.. positioned ~2 ~ ~-2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 44.. positioned ~-2 ~ ~2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 44 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 0.6

execute if score @s entity.age matches 49 positioned ~2 ~ ~2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 49 positioned ~-2 ~ ~-2 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 49 positioned ~3 ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 49 positioned ~-3 ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 49.. positioned ~2 ~ ~2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 49.. positioned ~-2 ~ ~-2 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 49.. positioned ~3 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 49.. positioned ~-3 ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 49 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 0.6

execute if score @s entity.age matches 54 positioned ~1 ~ ~3 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 54 positioned ~-1 ~ ~-3 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 54 positioned ~3 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 54 positioned ~-3 ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 54.. positioned ~1 ~ ~3 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 54.. positioned ~-1 ~ ~-3 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true] replace
execute if score @s entity.age matches 54.. positioned ~3 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 54.. positioned ~-3 ~ ~ unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 54 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 0

execute if score @s entity.age matches 55 positioned ~3 ~ ~1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 55 positioned ~-3 ~ ~-1 if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if score @s entity.age matches 55.. positioned ~3 ~ ~1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true]
execute if score @s entity.age matches 55.. positioned ~-3 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ oak_leaves[persistent=true]
execute if score @s entity.age matches 55.. run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~2 ~ 1 1 1 1 300

execute if score @s entity.age matches 57 run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute if score @s entity.age matches 57 run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute if score @s entity.age matches 57 run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute if score @s entity.age matches 57 run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves
execute if score @s entity.age matches 57 positioned ~-1 ~ ~-1 unless block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ jungle_leaves[persistent=false,distance=1]

execute if score @s entity.age matches 4..57 align xyz positioned ~-3.001 ~-0.001 ~-3.001 as @e[dx=6.002,dy=0.002,dz=6.002,type=marker,tag=obsidianshield] positioned as @s if block ~ ~ ~ #minecraft:leaves run function custom:__impl__/place_utility_structure/replace_glass_pane

tag @s[scores={entity.age=57..}] add canopy.animated
