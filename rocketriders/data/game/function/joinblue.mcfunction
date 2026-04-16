##Utility function for joining Blue team
tag @s[predicate=!custom:team/blue] add JoinBlue
function game:joinwarn_title
tag @s add tryJoinBlue
execute if entity @s[tag=JoinBlue] run function custom:player/team/join_blue
function everytick:team_count
