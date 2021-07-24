execute as @e[type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_normal:arenaclear/areaclear
execute if entity @e[type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove normalLast
tag @e[type=marker,tag=PlacerClear] add Cleared