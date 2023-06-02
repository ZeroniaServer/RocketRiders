execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_pve:arenaclear/areaclear
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove pveLast
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=!Cleared] if data storage rocketriders:storage Tags summon marker run function rr_pve:clearlast
tag @e[predicate=custom:indimension,type=marker,tag=PlacerClear] add Cleared