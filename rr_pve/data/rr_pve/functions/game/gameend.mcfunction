clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data={nova:1b}]
execute if entity @s[scores={endtimer=1}] run function game:endstats
kill @e[x=0,type=armor_stand,tag=Bot]