##Utility function for joining Yellow team
tag @s[team=!Yellow] add JoinYellow
execute unless predicate game:game_rules/disable_team_balancing/on run function game:joinwarn
tag @s add tryJoinYellow