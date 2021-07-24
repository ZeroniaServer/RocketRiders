execute as @e[type=marker,tag=ArenaClearChecker] at @s run function rr_ctf:arenaclear/areaclear
execute if entity @e[type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove ctfLast
tag @e[type=marker,tag=PlacerClear] add Cleared
