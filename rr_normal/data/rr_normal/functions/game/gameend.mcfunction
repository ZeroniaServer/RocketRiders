clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
execute as @s[scores={endtimer=81},tag=doTying,tag=!tyingOff] run function game:endstats
execute as @s[scores={endtimer=1},tag=!doTying] run function game:endstats
tag @s add normalLast