clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
execute as @s[scores={endtimer=1}] run function game:endstats
kill @e[tag=Bot,type=armor_stand]
tag @s add pveLast