##Utility function for joining Yellow team
tag @s[predicate=!custom:team/yellow] add JoinYellow
function game:joinwarn_title
tag @s add tryJoinYellow
execute if entity @s[tag=JoinYellow] run function custom:team/join_yellow
function everytick:team_count
