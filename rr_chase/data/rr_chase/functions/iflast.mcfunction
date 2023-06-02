execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_chase:arenaclear/areaclear
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove chaseLast
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=!Cleared] if data storage rocketriders:storage Tags summon marker run function rr_chase:clearlast
tag @e[predicate=custom:indimension,type=marker,tag=PlacerClear] add Cleared