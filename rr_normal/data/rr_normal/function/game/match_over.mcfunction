clear @a[x=0,predicate=custom:team/any_playing_team] #custom:clear
clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{id:"nova_rocket"}]
clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{id:"booster_rocket"}]
execute if entity @s[scores={endtimer=101},tag=doTying,tag=!tyingOff,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats