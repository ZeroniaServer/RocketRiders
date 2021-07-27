clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
execute if entity @s[scores={endtimer=1}] run function game:endstats
kill @e[type=armor_stand,tag=Bot]