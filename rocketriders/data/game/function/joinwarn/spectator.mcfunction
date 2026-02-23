tag @s remove JoinSpec

## Reason
# Joining while joinpad not joinable for some other reason
execute unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {"text":"Cannot Spectate!","color":"red","bold":true}
tag @s add cannotJoin

## Resolution
execute if predicate game:teams/any_playing_team_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value {"text":"Feel free to join a team instead.","color":"gray","bold":false}
data modify storage rocketriders:joinwarn subtitle set value {"text":"Feel free to explore the lobby while you wait!","color":"gray","bold":false}
