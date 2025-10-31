##Utility function for joining Blue team
execute unless predicate game:game_rules/disable_team_balancing/on run function everytick:team_balance
tag @s[predicate=!custom:team/blue] add JoinBlue
function game:joinwarn
tag @s add tryJoinBlue
execute if entity @s[tag=JoinBlue] run function custom:team/join_blue
function everytick:team_count
