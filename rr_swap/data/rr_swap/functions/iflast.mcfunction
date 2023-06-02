execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_swap:arenaclear/areaclear
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove swapLast
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=!Cleared] if data storage rocketriders:storage Tags summon marker run function rr_swap:clearlast
tag @e[predicate=custom:indimension,type=marker,tag=PlacerClear] add Cleared