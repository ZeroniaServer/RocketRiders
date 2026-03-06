# Teams are balanced
execute if predicate game:teams/playing_teams_are_balanced run return run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Teams Balanced!"}

# Yellow team does not exist
execute if predicate game:match_components/one_team run return run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Cannot Switch Team!"}

# Any other reason
data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Cannot Switch Team!"}
