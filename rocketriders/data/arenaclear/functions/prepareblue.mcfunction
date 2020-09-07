##Prepares Smart Arena Clear entities for blue missiles from global coordinate storage
summon area_effect_cloud 0 0 0 {Tags:[ArenaClearBlue],Duration:2000000000}

execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:bmissilepos x[0]
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:bmissilepos y[0]
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:bmissilepos z[0]
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] at @s run tp @s ~2 ~-8 ~-3
execute as @e[type=area_effect_cloud,tag=ArenaClearBlue,tag=!checked,limit=1] run tag @s add checked

data remove storage rocketriders:bmissilepos x[0]
data remove storage rocketriders:bmissilepos y[0]
data remove storage rocketriders:bmissilepos z[0]

scoreboard players remove @s[scores={bMissileCount=1..}] bMissileCount 1

execute if entity @s[scores={bMissileCount=1..}] run function arenaclear:prepareblue

execute if entity @s[scores={bMissileCount=0}] run data modify storage rocketriders:bmissilepos x set value []
execute if entity @s[scores={bMissileCount=0}] run data modify storage rocketriders:bmissilepos y set value []
execute if entity @s[scores={bMissileCount=0}] run data modify storage rocketriders:bmissilepos z set value []