tag @s remove JoinBlue

## Reason
function game:joinwarn/blue.reason

## Resolution
execute if predicate game:teams/yellow_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value [{score:{name:"#yellow",objective:"text.accent_color"}},"Join ",[{bold:true,score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," instead."]

execute if predicate game:teams/spectator_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to spectate instead."}

data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to explore the lobby while you wait!"}
