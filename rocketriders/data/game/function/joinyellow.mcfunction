##Utility function for joining Yellow team
execute unless predicate game:game_rules/disable_team_balancing/on as @e[x=0,limit=1,type=armor_stand,tag=Selection] run function everytick:team_balance
tag @s[team=!Yellow] add JoinYellow
function game:joinwarn
tag @s add tryJoinYellow
team join Yellow @s[tag=JoinYellow]
function everytick:team_count
