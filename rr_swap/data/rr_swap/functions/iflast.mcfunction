execute as @e[tag=ArenaClearChecker] at @s run function rr_swap:arenaclear/areaclear
tag @e[tag=PlacerClear] add Cleared
execute if entity @e[tag=PlacerClear] run tag @s remove swapLast