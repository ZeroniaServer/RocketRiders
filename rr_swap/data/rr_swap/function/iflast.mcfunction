execute as @e[x=0,type=marker,tag=ArenaClearChecker,tag=!Cleared] at @s run function rr_swap:arenaclear/areaclear
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove swapLast
tag @e[x=0,type=marker,tag=PlacerClear] add Cleared