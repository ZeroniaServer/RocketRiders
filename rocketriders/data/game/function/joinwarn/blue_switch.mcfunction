tag @s remove JoinBlue

## Reason
# Teams are balanced
execute if predicate game:teams/playing_teams_are_balanced unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Teams Balanced!"}
execute if predicate game:teams/playing_teams_are_balanced run tag @s add cannotJoin
# Yellow team does not exist
execute if predicate game:gamemode_components/one_team unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Cannot Switch Team!"}
execute if predicate game:gamemode_components/one_team run tag @s add cannotJoin
# Any other reason
execute unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {"text":"Cannot Switch Team!","color":"red","bold":true}
tag @s add cannotJoin

## Resolution
execute if predicate game:gamemode_components/one_team run data modify storage rocketriders:joinwarn subtitle set value {"text":"Feel free to stay where you are or spectate instead.","color":"gray","bold":false}
data modify storage rocketriders:joinwarn subtitle set value {"text":"Stay where you are to keep the match fair.","color":"gray","bold":false}
