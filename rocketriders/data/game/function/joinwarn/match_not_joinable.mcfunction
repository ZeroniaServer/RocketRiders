data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Cannot Join Team!"}
execute if entity @s[tag=JoinSpec] run data modify storage rocketriders:joinwarn title set value {bold:true,color:"red",text:"Cannot Spectate!"}

tag @s remove JoinBlue
tag @s remove JoinYellow
tag @s remove JoinSpec

execute if predicate game:phase/staging/configuration unless predicate rr:has_voting run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Wait until game settings are confirmed first."}
execute if predicate game:phase/staging/configuration if predicate rr:has_voting run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Wait until voting has concluded first."}
execute if predicate game:phase/match/closing run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Wait until a new game has started."}
execute if predicate game:phase/match if predicate game:match_components/lock_playing_teams_during_match if predicate game:teams/spectator_is_joinable run return run data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to spectate instead."}
data modify storage rocketriders:joinwarn subtitle set value {color:"gray",text:"Feel free to explore the lobby while you wait!"}
