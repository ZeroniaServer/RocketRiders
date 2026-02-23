##Utility function for joining Spectator team
tag @s[predicate=!custom:team/spectator] add JoinSpec
function game:joinwarn_title
tag @s add tryJoinSpec
execute if entity @s[tag=JoinSpec] run function custom:team/join_spectator
