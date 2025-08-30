execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]

#dark
execute if items entity @s contents *[custom_data~{id:"missile/bullet"}] if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"missile/duplex"}] if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"missile/auxiliary"}] if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"missile/warhead"}] if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"icbm"}] if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"shield"}] if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run function items:deduct

#light
execute if items entity @s contents *[custom_data~{id:"missile/hypersonic"}] if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"missile/broadsword"}] if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"missile/hurricane"}] if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"missile/thunderbolt"}] if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"cluster_fireball"}] if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct
execute if items entity @s contents *[custom_data~{id:"obsidian_shield"}] if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run function items:deduct

scoreboard players reset $tempuuid playerUUID