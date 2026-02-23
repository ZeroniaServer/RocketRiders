##Warns players based on which team they try to join via joinpads if the team is full/imbalanced
data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Cannot Join Team!"}
data modify storage rocketriders:joinwarn subtitle set value ""

## Attempting to join during an invalid phase
execute unless predicate game:joinable_match_phase run return run function game:joinwarn/match_not_joinable

execute if predicate custom:team/blue if entity @s[tag=JoinBlue] run return run function game:joinwarn/already_on_that_team
execute if predicate custom:team/yellow if entity @s[tag=JoinYellow] run return run function game:joinwarn/already_on_that_team
execute if predicate custom:team/spectator if entity @s[tag=JoinSpec] run return run function game:joinwarn/already_on_that_team

## Try to switch team
execute if predicate custom:team/yellow if entity @s[tag=JoinBlue] run return run execute unless predicate game:teams/yellow_player_can_switch_to_blue run function game:joinwarn/blue_switch
execute if predicate custom:team/blue if entity @s[tag=JoinYellow] run return run execute unless predicate game:teams/blue_player_can_switch_to_yellow run function game:joinwarn/yellow_switch

## Try to join during a joinable phase
execute if entity @s[tag=JoinBlue] run return run execute unless predicate game:teams/blue_is_joinable run function game:joinwarn/blue
execute if entity @s[tag=JoinYellow] run return run execute unless predicate game:teams/yellow_is_joinable run function game:joinwarn/yellow
execute if entity @s[tag=JoinSpec] run return run execute unless predicate game:teams/spectator_is_joinable run function game:joinwarn/spectator
