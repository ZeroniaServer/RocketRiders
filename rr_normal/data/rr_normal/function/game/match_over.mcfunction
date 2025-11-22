clear @a[x=0,predicate=custom:team/any_playing_team] #custom:clear
clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{id:"nova_rocket"}|custom_data~{id:"booster_rocket"}]
execute unless predicate game:game_rules/disable_tying/on if entity @s[scores={endtimer=101},tag=!BothWon] run function game:endstats
execute if predicate game:game_rules/disable_tying/on if entity @s[scores={endtimer=1},tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats