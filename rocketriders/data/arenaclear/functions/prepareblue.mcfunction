##Prepares Smart Arena Clear entities for blue missiles from global coordinate storage
#Summon new AEC entity
summon area_effect_cloud 0 0 0 {Tags:[ArenaClearBlue],Duration:2000000000}

#Set position from global storage
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:bmissilepos x[0]
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:bmissilepos y[0]
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:bmissilepos z[0]

#Extra offset for superspeed clears
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] at @s run tp @s ~2 ~-8 ~-3

#Mark AEC as checked (won't be affected on next iteration)
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] run tag @s add checked

#Remove this set of coordinates in preparation for the next one
data remove storage rocketriders:bmissilepos x[0]
data remove storage rocketriders:bmissilepos y[0]
data remove storage rocketriders:bmissilepos z[0]

#Remove 1 from counter
scoreboard players remove @s[scores={bMissileCount=1..}] bMissileCount 1

#Recursion condition - as long as there's still missile coords stored, keep going
execute if entity @s[scores={bMissileCount=1..}] run function arenaclear:prepareblue

#End condition - clear arrays
execute if entity @s[scores={bMissileCount=0}] run data modify storage rocketriders:bmissilepos x set value []
execute if entity @s[scores={bMissileCount=0}] run data modify storage rocketriders:bmissilepos y set value []
execute if entity @s[scores={bMissileCount=0}] run data modify storage rocketriders:bmissilepos z set value []