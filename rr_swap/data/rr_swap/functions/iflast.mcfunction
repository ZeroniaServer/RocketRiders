execute as @e[type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_swap:arenaclear/areaclear
execute if entity @e[type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove swapLast
tag @e[type=marker,tag=PlacerClear] add Cleared