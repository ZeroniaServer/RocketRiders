tag @s remove JoinYellow

## Reason
function game:joinwarn/yellow.reason

## Resolution
execute if predicate game:teams/blue_is_joinable unless predicate game:gamemode_components/red_for_blue run return run data modify storage rocketriders:joinwarn subtitle set value [{color:"dark_aqua",text:"Join "},{bold:true,color:"blue",text:"Blue"}," instead."]
execute if predicate game:teams/blue_is_joinable if predicate game:gamemode_components/red_for_blue run return run data modify storage rocketriders:joinwarn subtitle set value [{color:"dark_aqua",text:"Join "},{bold:true,color:"dark_red",text:"Red"}," instead."]

execute if predicate game:teams/spectator_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to spectate instead."}

data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to explore the lobby while you wait!"}
