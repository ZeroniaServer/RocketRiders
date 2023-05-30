##Identify egg as a Vortex & apply custom name to the egg
execute store result score $tempuuid playerUUID run data get entity @s Owner[0]
execute as @a[predicate=custom:indimension,predicate=custom:matches_uuid] store result score @s UUIDTracker run data get entity @s UUID[0]
execute as @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] at @s run setblock ~ 174 ~ oak_sign
execute as @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] at @s run setblock ~ 174 ~ oak_sign
execute as @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] at @s run data merge block ~ 174 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[team=Yellow,predicate=custom:matches_uuid]"},{"text":"\'s Vortex"}]'}
execute as @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] at @s run data merge block ~ 174 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[team=Blue,predicate=custom:matches_uuid]"},{"text":"\'s Vortex"}]'}
execute if entity @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] run tag @s[tag=!YellowVortex,tag=!BlueVortex] add YellowVortex
execute if entity @s[tag=YellowVortex] store result score @s UUIDTracker run scoreboard players get @p[team=Yellow,predicate=custom:matches_uuid] UUIDTracker
execute if entity @s[tag=YellowVortex] at @p[team=Yellow,predicate=custom:matches_uuid] run data modify entity @s CustomName set from block ~ 174 ~ Text2
execute if entity @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] run tag @s[tag=!YellowVortex,tag=!BlueVortex] add BlueVortex
execute if entity @s[tag=BlueVortex] store result score @s UUIDTracker run scoreboard players get @p[team=Blue,predicate=custom:matches_uuid] UUIDTracker
execute if entity @s[tag=BlueVortex] at @p[team=Blue,predicate=custom:matches_uuid] run data modify entity @s CustomName set from block ~ 174 ~ Text2
execute as @a[predicate=custom:indimension,team=Yellow,predicate=custom:matches_uuid] at @s run fill ~ 173 ~ ~ 175 ~ air replace oak_sign
execute as @a[predicate=custom:indimension,team=Blue,predicate=custom:matches_uuid] at @s run fill ~ 173 ~ ~ 175 ~ air replace oak_sign
scoreboard players reset $tempuuid playerUUID