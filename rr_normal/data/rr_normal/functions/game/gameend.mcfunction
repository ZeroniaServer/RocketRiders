clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
execute as @s[scores={endtimer=1},tag=doTying,tag=!tyingOff] run schedule function game:endstats 80t append
execute as @s[scores={endtimer=1},tag=!doTying] run function game:endstats
tag @s add normalLast