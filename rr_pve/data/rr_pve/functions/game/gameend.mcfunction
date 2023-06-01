clear @a[predicate=custom:indimension,team=Blue] #custom:clear
clear @a[predicate=custom:indimension,team=Blue] crossbow{nova:1b}
execute if entity @s[scores={endtimer=1}] run function game:endstats
kill @e[predicate=custom:indimension,type=armor_stand,tag=Bot]