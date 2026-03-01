# Joining while team is full
execute if predicate game:teams/yellow_is_full run return run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Team Full!"}

# Joining while team is imbalanced
execute if predicate game:teams/yellow_is_imbalanced run return run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Team Imbalanced!"}

# Any other reason
data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Cannot Join Team!"}
