execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]

#dark
execute if items entity @s contents skeleton_horse_spawn_egg if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents parrot_spawn_egg if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents mooshroom_spawn_egg if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents silverfish_spawn_egg if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents egg[custom_data~{icbm:1b}] if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents snowball if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct

#light
execute if items entity @s contents turtle_spawn_egg if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents magma_cube_spawn_egg if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents drowned_spawn_egg if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents vex_spawn_egg if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents blaze_spawn_egg if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents enderman_spawn_egg if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct

scoreboard players reset $tempuuid playerUUID