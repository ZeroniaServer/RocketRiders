##Utility function for joining Blue team
tag @s[team=!Blue] add JoinBlue
execute unless predicate game:game_rules/disable_team_balancing/on run function game:joinwarn
tag @s add tryJoinBlue