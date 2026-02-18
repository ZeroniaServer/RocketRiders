##Checks if the match should enter the "Both Teams Win" state or tiebreaker.
execute if predicate game:game_rules/disable_tying/on unless entity @s[tag=SMSwitch] run function game:winboth
execute unless predicate game:game_rules/disable_tying/on unless entity @s[tag=SMSwitch] run function game:set_phase/match.play.tie_breaker
execute unless predicate game:game_rules/disable_tying/on unless entity @s[tag=SMSwitch] run tag @s add BothWon