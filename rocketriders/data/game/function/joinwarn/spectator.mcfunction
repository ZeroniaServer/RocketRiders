tag @s remove JoinSpec

## Reason
function game:joinwarn/spectator.reason

## Resolution
execute if predicate game:teams/any_playing_team_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to join a team instead."}

data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to explore the lobby while you wait!"}
