# Teams are balanced
execute if predicate game:teams/playing_teams_are_balanced run return run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Teams Balanced!"}

# Any other reason
data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Cannot Switch Team!"}
