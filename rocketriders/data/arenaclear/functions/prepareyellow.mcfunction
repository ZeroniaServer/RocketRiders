##Prepares Smart Arena Clear entities for yellow missiles from global coordinate storage
summon area_effect_cloud 0 0 0 {Tags:[ArenaClearYellow],Duration:2000000000}

execute as @e[type=area_effect_cloud,tag=ArenaClearYellow,tag=!checked,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:ymissilepos x[0]
execute as @e[type=area_effect_cloud,tag=ArenaClearYellow,tag=!checked,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:ymissilepos y[0]
execute as @e[type=area_effect_cloud,tag=ArenaClearYellow,tag=!checked,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:ymissilepos z[0]
execute as @e[type=area_effect_cloud,tag=ArenaClearYellow,tag=!checked,limit=1] at @s run tp @s ~2 ~-8 ~-3
execute as @e[type=area_effect_cloud,tag=ArenaClearYellow,tag=!checked,limit=1] run tag @s add checked

data remove storage rocketriders:ymissilepos x[0]
data remove storage rocketriders:ymissilepos y[0]
data remove storage rocketriders:ymissilepos z[0]

scoreboard players remove @s[scores={yMissileCount=1..}] yMissileCount 1

execute if entity @s[scores={yMissileCount=1..}] run function arenaclear:prepareyellow

execute if entity @s[scores={yMissileCount=0}] run data modify storage rocketriders:ymissilepos x set value []
execute if entity @s[scores={yMissileCount=0}] run data modify storage rocketriders:ymissilepos y set value []
execute if entity @s[scores={yMissileCount=0}] run data modify storage rocketriders:ymissilepos z set value []