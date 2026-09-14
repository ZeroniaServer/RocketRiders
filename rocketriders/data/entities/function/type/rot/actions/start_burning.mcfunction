execute unless predicate entities:type/rot/brain run return 0

execute if entity @s[tag=rot.burning] run return 0
tag @s add rot.burning
execute at @s unless block ~ ~ ~ #custom:non_solid if block ~ ~1 ~ #custom:air run setblock ~ ~1 ~ minecraft:fire
