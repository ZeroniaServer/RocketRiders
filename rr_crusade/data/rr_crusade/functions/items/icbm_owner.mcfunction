##Marks ICBM with appropriate tags based on owner
execute store result score $tempuuid playerUUID run data get entity @s Owner[0]
execute as @a[predicate=custom:matches_uuid] store result score @s UUIDTracker run data get entity @s UUID[0]
execute if entity @a[team=Yellow,predicate=custom:matches_uuid] run tag @s[tag=!YellowICBM,tag=!BlueICBM] add YellowICBM
execute if entity @s[tag=YellowICBM] run scoreboard players operation @s UUIDTracker = @p[team=Yellow,predicate=custom:matches_uuid] UUIDTracker
execute if entity @a[team=Blue,predicate=custom:matches_uuid] run tag @s[tag=!YellowICBM,tag=!BlueICBM] add BlueICBM
execute if entity @s[tag=BlueICBM] run scoreboard players operation @s UUIDTracker = @p[team=Blue,predicate=custom:matches_uuid] UUIDTracker
tag @s add ICBM
scoreboard players reset $tempuuid playerUUID