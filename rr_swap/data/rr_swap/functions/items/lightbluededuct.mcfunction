execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]

#dark
execute if data entity @s {Item:{id:"minecraft:skeleton_horse_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:parrot_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:mooshroom_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:silverfish_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:egg",tag:{icbm:1b}}} if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:snowball"}} if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] run function items:deduct

#light
execute if data entity @s {Item:{id:"minecraft:turtle_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:magma_cube_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:drowned_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:vex_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:blaze_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if data entity @s {Item:{id:"minecraft:enderman_spawn_egg"}} if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] run function items:deduct

scoreboard players reset $tempuuid playerUUID