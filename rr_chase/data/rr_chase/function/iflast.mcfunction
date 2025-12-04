execute as @e[x=0,type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_chase:arenaclear/areaclear
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove chaseLast
tag @e[x=0,type=marker,tag=PlacerClear] add Cleared