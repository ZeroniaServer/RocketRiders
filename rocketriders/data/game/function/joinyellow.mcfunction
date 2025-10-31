##Utility function for joining Yellow team
execute unless predicate game:game_rules/disable_team_balancing/on run function everytick:team_balance
tag @s[predicate=!custom:team/yellow] add JoinYellow
function game:joinwarn
tag @s add tryJoinYellow
execute if entity @s[tag=JoinYellow] run function custom:team/join_yellow
function everytick:team_count
