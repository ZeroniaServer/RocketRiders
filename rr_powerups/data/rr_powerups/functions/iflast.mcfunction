execute as @e[type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_powerups:arenaclear/areaclear
execute if entity @e[type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove powerupsLast
tag @e[type=marker,tag=PlacerClear] add Cleared