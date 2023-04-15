##Marks ICBM with appropriate tags based on owner
execute store result score $tempuuid playerUUID run data get entity @s Owner[0]
execute store result score @s UUIDTracker run data get entity @s Owner[0]
execute if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] run tag @s[tag=!YellowICBM,tag=!BlueICBM] add YellowICBM
execute if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] run tag @s[tag=!YellowICBM,tag=!BlueICBM] add BlueICBM
tag @s add ICBM
scoreboard players reset $tempuuid playerUUID