execute as @e[tag=ArenaClearChecker,type=area_effect_cloud] at @s run function rr_chase:arenaclear/areaclear
tag @e[tag=PlacerClear,type=area_effect_cloud] add Cleared
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run tag @s remove chaseLast