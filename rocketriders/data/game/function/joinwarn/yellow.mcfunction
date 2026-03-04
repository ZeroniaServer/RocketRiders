tag @s remove JoinYellow

## Reason
function game:joinwarn/yellow.reason

## Resolution
execute if predicate game:teams/blue_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value [{score:{name:"#blue",objective:"text.accent_color"}},"Join ",[{bold:true,score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," instead."]

execute if predicate game:teams/spectator_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to spectate instead."}

data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to explore the lobby while you wait!"}
