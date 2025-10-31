clear @a[x=0,predicate=custom:team/any_playing_team] #custom:clear
clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{id:"nova_rocket"}]
clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{id:"booster_rocket"}]
execute if entity @s[scores={endtimer=1}] run function game:endstats
kill @e[x=0,type=armor_stand,tag=Bot]