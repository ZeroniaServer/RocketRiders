
#Canopy deploy animation/sounds
execute if score @s entity.age matches 0..49 if score $dust CmdData matches 1 run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~ ~ 1 0 1 0.1 10
execute if score @s entity.age matches 0 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 4.. run setblock ~ ~ ~ oak_wood[axis=y]
execute if score @s entity.age matches 4.. run setblock ~ ~ ~-1 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 4.. run setblock ~ ~ ~1 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 4 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 9.. run setblock ~ ~ ~-2 birch_leaves[persistent=true] replace
execute if score @s entity.age matches 9.. run setblock ~ ~ ~2 birch_leaves[persistent=true] replace
execute if score @s entity.age matches 9 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 14.. run setblock ~ ~ ~-3 jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 14.. run setblock ~ ~ ~3 jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 14 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 19.. run setblock ~1 ~ ~-1 jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. run setblock ~1 ~ ~-2 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. run setblock ~-1 ~ ~1 jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. run setblock ~-1 ~ ~2 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 19 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 24.. run setblock ~1 ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. run setblock ~2 ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. run setblock ~-1 ~ ~ spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. run setblock ~-2 ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. run setblock ~1 ~ ~-3 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 24.. run setblock ~-1 ~ ~3 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 24 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 29.. run setblock ~1 ~ ~1 jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. run setblock ~2 ~ ~1 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. run setblock ~-1 ~ ~-1 jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. run setblock ~-2 ~ ~-1 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 29 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 34.. run setblock ~-1 ~ ~-2 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 34.. run setblock ~1 ~ ~2 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 34 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 39.. run setblock ~2 ~ ~-1 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 39.. run setblock ~-2 ~ ~1 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 39 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 44.. run setblock ~2 ~ ~-2 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 44.. run setblock ~-2 ~ ~2 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 44 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 0.6

execute if score @s entity.age matches 49.. run setblock ~2 ~ ~2 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 49.. run setblock ~-2 ~ ~-2 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 49.. run setblock ~3 ~ ~-1 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 49.. run setblock ~-3 ~ ~1 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 49 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 0.6

execute if score @s entity.age matches 54.. run setblock ~1 ~ ~3 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 54.. run setblock ~-1 ~ ~-3 oak_leaves[persistent=true] replace
execute if score @s entity.age matches 54.. run setblock ~3 ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 54.. run setblock ~-3 ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 54 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 0

execute if score @s entity.age matches 55.. run setblock ~3 ~ ~1 oak_leaves[persistent=true]
execute if score @s entity.age matches 55.. run setblock ~-3 ~ ~-1 oak_leaves[persistent=true]
execute if score @s entity.age matches 55.. run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~2 ~ 1 1 1 1 300

execute if score @s entity.age matches 57 run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute if score @s entity.age matches 57 run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute if score @s entity.age matches 57 run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute if score @s entity.age matches 57 run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves
execute if score @s entity.age matches 57 run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

tag @s[scores={entity.age=57..}] add canopy.animated
