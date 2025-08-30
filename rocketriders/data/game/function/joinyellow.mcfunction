##Utility function for joining Yellow team
tag @s[team=!Yellow] add JoinYellow
execute unless predicate game:config/disable_balancing run function game:joinwarn
tag @s add tryJoinYellow