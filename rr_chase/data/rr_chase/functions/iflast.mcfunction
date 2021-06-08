execute as @e[tag=ArenaClearChecker,type=marker] at @s run function rr_chase:arenaclear/areaclear
tag @e[tag=PlacerClear,type=marker] add Cleared
execute if entity @e[tag=PlacerClear,type=marker] run tag @s remove chaseLast