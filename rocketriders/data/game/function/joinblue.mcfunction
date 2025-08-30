##Utility function for joining Blue team
tag @s[team=!Blue] add JoinBlue
execute unless predicate game:config/disable_balancing run function game:joinwarn
tag @s add tryJoinBlue