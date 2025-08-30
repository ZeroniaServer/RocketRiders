clear @a[x=0,predicate=custom:on_blue_or_yellow_team] #custom:clear
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] crossbow[custom_data~{id:"nova_rocket"}]
execute if entity @s[scores={endtimer=1}] run function game:endstats
kill @e[x=0,type=armor_stand,tag=Bot]