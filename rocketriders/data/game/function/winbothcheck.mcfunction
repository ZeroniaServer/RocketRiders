##Checks if the match should enter the "Both Teams Win" state or tiebreaker.
execute unless predicate game:game_rules/tie_window_length/non_zero unless entity @s[tag=SMSwitch] run function game:winboth
execute if predicate game:game_rules/tie_window_length/non_zero unless entity @s[tag=SMSwitch] run function game:set_phase/match.play.tie_breaker
execute if predicate game:game_rules/tie_window_length/non_zero unless entity @s[tag=SMSwitch] run tag @s add BothWon
