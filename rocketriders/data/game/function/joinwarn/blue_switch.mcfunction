tag @s remove JoinBlue

## Reason
function game:joinwarn/blue_switch.reason

## Resolution
execute if predicate game:gamemode_components/one_team run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to stay where you are or spectate instead."}

data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Stay where you are to keep the match fair."}
