execute as @e[type=marker,tag=ArenaClearChecker] at @s run function rr_powerups:arenaclear/areaclear
tag @e[type=marker,tag=PlacerClear] add Cleared
execute if entity @e[type=marker,tag=PlacerClear] run tag @s remove powerupsLast