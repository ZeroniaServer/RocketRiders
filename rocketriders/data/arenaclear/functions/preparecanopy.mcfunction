##Prepares Canopies to be cleared from global coordinate storage
#Summon new AEC entity
summon area_effect_cloud 0 0 0 {Tags:[Platform],Duration:2000000000}

#Set position from global storage
execute as @e[type=area_effect_cloud,tag=Platform,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:canopypos x[0]
execute as @e[type=area_effect_cloud,tag=Platform,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:canopypos y[0]
execute as @e[type=area_effect_cloud,tag=Platform,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:canopypos z[0]

#Remove necessary blocks
execute as @e[tag=Platform,type=area_effect_cloud,limit=1] at @s run fill ~-3 ~ ~-3 ~3 ~ ~3 air replace #minecraft:leaves
execute as @e[tag=Platform,type=area_effect_cloud,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ air
kill @e[tag=Platform,type=area_effect_cloud,limit=1]

#Remove this set of coordinates in preparation for the next one
data remove storage rocketriders:canopypos x[0]
data remove storage rocketriders:canopypos y[0]
data remove storage rocketriders:canopypos z[0]

#Remove 1 from counter
scoreboard players remove @s[scores={canopyCount=1..}] canopyCount 1

#Recursion condition - as long as there's still coords stored, keep going
execute if entity @s[scores={canopyCount=1..}] run function arenaclear:preparecanopy

#End condition - clear arrays
execute if entity @s[scores={canopyCount=0}] run data modify storage rocketriders:canopypos x set value []
execute if entity @s[scores={canopyCount=0}] run data modify storage rocketriders:canopypos y set value []
execute if entity @s[scores={canopyCount=0}] run data modify storage rocketriders:canopypos z set value []