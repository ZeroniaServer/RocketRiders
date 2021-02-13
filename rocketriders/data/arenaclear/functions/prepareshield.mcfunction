##Prepares Shields to be cleared from global coordinate storage
#Summon new AEC entity
summon area_effect_cloud 0 0 0 {Tags:[ClearShields],Duration:2000000000}

#Set position from global storage
execute as @e[type=area_effect_cloud,tag=ClearShields,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:shieldpos x[0]
execute as @e[type=area_effect_cloud,tag=ClearShields,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:shieldpos y[0]
execute as @e[type=area_effect_cloud,tag=ClearShields,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:shieldpos z[0]

#Remove necessary blocks
execute as @e[tag=ClearShields,type=area_effect_cloud,limit=1] at @s run fill ~-3 ~-3 ~ ~3 ~3 ~ air
kill @e[tag=ClearShields,type=area_effect_cloud,limit=1]

#Remove this set of coordinates in preparation for the next one
data remove storage rocketriders:shieldpos x[0]
data remove storage rocketriders:shieldpos y[0]
data remove storage rocketriders:shieldpos z[0]

#Remove 1 from counter
scoreboard players remove @s[scores={shieldCount=1..}] shieldCount 1

#Recursion condition - as long as there's still coords stored, keep going
execute if entity @s[scores={shieldCount=1..}] run function arenaclear:prepareshield

#End condition - clear arrays
execute if entity @s[scores={shieldCount=0}] run data modify storage rocketriders:shieldpos x set value []
execute if entity @s[scores={shieldCount=0}] run data modify storage rocketriders:shieldpos y set value []
execute if entity @s[scores={shieldCount=0}] run data modify storage rocketriders:shieldpos z set value []