execute as @e[x=0,type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_powerups:arenaclear/areaclear
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove powerupsLast
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=!Cleared] if data storage rocketriders:storage Tags summon marker run function rr_powerups:clearlast
tag @e[x=0,type=marker,tag=PlacerClear] add Cleared