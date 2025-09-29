##Utility function for joining Blue team
execute unless predicate game:game_rules/disable_team_balancing/on as @e[x=0,limit=1,type=armor_stand,tag=Selection] run function everytick:team_balance
tag @s[team=!Blue] add JoinBlue
function game:joinwarn
tag @s add tryJoinBlue
team join Blue @s[tag=JoinBlue]