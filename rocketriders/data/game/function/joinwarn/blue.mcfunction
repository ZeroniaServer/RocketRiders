tag @s remove JoinBlue

## Reason
# Joining while team is full
execute if predicate game:teams/blue_is_full unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {"text":"Team Full!","color":"red","bold":true}
execute if predicate game:teams/blue_is_full run tag @s add cannotJoin
# Joining while team is imbalanced
execute if predicate game:teams/blue_is_imbalanced unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {"text":"Team Imbalanced!","color":"red","bold":true}
execute if predicate game:teams/blue_is_imbalanced run tag @s add cannotJoin
# Joining while joinpad not joinable for some other reason
execute unless entity @s[tag=cannotJoin] run data modify storage rocketriders:joinwarn title set value {"text":"Cannot Join Team!","color":"red","bold":true}
tag @s add cannotJoin

## Resolution
execute if predicate game:teams/yellow_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value [{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if predicate game:teams/spectator_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value {"text":"Feel free to spectate instead.","color":"gray","bold":false}
data modify storage rocketriders:joinwarn subtitle set value {"text":"Feel free to explore the lobby while you wait!","color":"gray","bold":false}
