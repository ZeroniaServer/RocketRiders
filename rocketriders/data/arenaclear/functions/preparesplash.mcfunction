##Prepares Smart Arena Clear entities for Splashes from global coordinate storage
#Summon new AEC entity
summon area_effect_cloud 0 0 0 {Tags:[SmartClearAECsplash],Duration:1}

#Set position from global storage
execute as @e[predicate=custom:indimension,type=area_effect_cloud,tag=SmartClearAECsplash,tag=!checked,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:splashpos x[0]
execute as @e[predicate=custom:indimension,type=area_effect_cloud,tag=SmartClearAECsplash,tag=!checked,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:splashpos y[0]
execute as @e[predicate=custom:indimension,type=area_effect_cloud,tag=SmartClearAECsplash,tag=!checked,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:splashpos z[0]

#Mark AEC as checked (won't be affected on next iteration)
execute as @e[predicate=custom:indimension,type=area_effect_cloud,tag=SmartClearAECsplash,tag=!checked,limit=1] run tag @s add checking
execute as @e[predicate=custom:indimension,type=area_effect_cloud,tag=SmartClearAECsplash,tag=checking,limit=1] at @s if entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=SmartClearAECsplash,tag=!checking,tag=!checked,limit=1,distance=..1] run kill @s
execute as @e[predicate=custom:indimension,type=area_effect_cloud,tag=SmartClearAECsplash,tag=checking,limit=1] run tag @s add checked
execute as @e[predicate=custom:indimension,type=area_effect_cloud,tag=SmartClearAECsplash,tag=checking,limit=1] run tag @s remove checking

#Remove this set of coordinates in preparation for the next one
data remove storage rocketriders:splashpos x[0]
data remove storage rocketriders:splashpos y[0]
data remove storage rocketriders:splashpos z[0]

#Remove 1 from counter
scoreboard players remove @s[scores={splashCount=1..}] splashCount 1

#Recursion condition - as long as there's still coords stored, keep going
execute if entity @s[scores={splashCount=1..}] run function arenaclear:preparesplash

#End condition - clear arrays
execute if entity @s[scores={splashCount=0}] run data remove storage rocketriders:splashpos x
execute if entity @s[scores={splashCount=0}] run data remove storage rocketriders:splashpos y
execute if entity @s[scores={splashCount=0}] run data remove storage rocketriders:splashpos z