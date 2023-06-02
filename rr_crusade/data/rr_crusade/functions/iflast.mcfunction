execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_crusade:arenaclear/areaclear
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove crusadeLast
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=!Cleared] if data storage rocketriders:storage Tags summon marker run function rr_crusade:clearlast
tag @e[predicate=custom:indimension,type=marker,tag=PlacerClear] add Cleared