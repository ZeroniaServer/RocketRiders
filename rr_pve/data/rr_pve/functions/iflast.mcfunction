execute as @e[type=marker,tag=ArenaClearChecker] at @s run function rr_pve:arenaclear/areaclear
execute if entity @e[type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove pveLast
tag @e[type=marker,tag=PlacerClear] add Cleared
