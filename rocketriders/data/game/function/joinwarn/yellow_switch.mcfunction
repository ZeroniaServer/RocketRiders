tag @s remove JoinYellow

## Reason
# Teams are balanced
execute if predicate game:teams/playing_teams_are_balanced unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Teams Balanced!"}
execute if predicate game:teams/playing_teams_are_balanced run tag @s add cannotJoin
# Any other reason
execute unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {"text":"Cannot Switch Team!","color":"red","bold":true}
tag @s add cannotJoin

## Resolution
data modify storage rocketriders:joinwarn subtitle set value {"text":"Stay where you are to keep the match fair.","color":"gray","bold":false}
