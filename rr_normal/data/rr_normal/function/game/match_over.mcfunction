execute unless predicate game:game_rules/disable_tying/on if entity @s[scores={endtimer=101},tag=!BothWon] run function game:endstats
execute if predicate game:game_rules/disable_tying/on if entity @s[scores={endtimer=1},tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats