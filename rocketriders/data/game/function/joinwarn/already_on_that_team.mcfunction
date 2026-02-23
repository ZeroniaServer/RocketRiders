tag @s remove JoinBlue
tag @s remove JoinYellow
tag @s remove JoinSpec

execute if predicate custom:team/blue run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Already On That Team!"}
execute if predicate custom:team/blue run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"You are already on the Blue team!"}

execute if predicate custom:team/yellow run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Already On That Team!"}
execute if predicate custom:team/yellow run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"You are already on the Yellow team!"}

execute if predicate custom:team/spectator run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Already Spectating!"}
execute if predicate custom:team/spectator run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"You are already spectating!"}
