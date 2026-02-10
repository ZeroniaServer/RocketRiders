#Canopy deploy animation/sounds
execute if score @s entity.age matches 0..49 if predicate custom:periodic_tick/3 run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~ ~ 1 0 1 0.1 10
execute if score @s entity.age matches 0 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 9.. run setblock ~ ~ ~ oak_wood[axis=y]
execute if score @s entity.age matches 9.. run setblock ~ ~ ~-1 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 9.. run setblock ~ ~ ~1 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 9 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 19.. run setblock ~-1 ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. run setblock ~1 ~ ~ jungle_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. run setblock ~ ~ ~-2 birch_leaves[persistent=true] replace
execute if score @s entity.age matches 19.. run setblock ~ ~ ~2 birch_leaves[persistent=true] replace
execute if score @s entity.age matches 19 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 29.. run setblock ~-1 ~ ~-1 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. run setblock ~-1 ~ ~1 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. run setblock ~1 ~ ~-1 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 29.. run setblock ~1 ~ ~1 spruce_leaves[persistent=true] replace
execute if score @s entity.age matches 29 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 39.. run setblock ~-2 ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 39.. run setblock ~2 ~ ~ birch_leaves[persistent=true] replace
execute if score @s entity.age matches 39 run playsound block.grass.break master @a[x=0] ~ ~ ~ 2 1

execute if score @s entity.age matches 39.. run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~2 ~ 1 1 1 1 300

execute if score @s entity.age matches 45 run fill ~-1 ~ ~-1 ~1 ~ ~1 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute if score @s entity.age matches 45 run fill ~-1 ~ ~-1 ~1 ~ ~1 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute if score @s entity.age matches 45 run fill ~-1 ~ ~-1 ~1 ~ ~1 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute if score @s entity.age matches 45 run fill ~-1 ~ ~-1 ~1 ~ ~1 birch_leaves[persistent=false,distance=1] replace birch_leaves

tag @s[scores={entity.age=45..}] add canopy.animated
