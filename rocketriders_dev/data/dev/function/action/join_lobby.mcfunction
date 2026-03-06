execute if predicate custom:team/lobby run return run tellraw @s {color:"red",text:"You are already in the lobby."}

execute if predicate game:phase/match/play if predicate custom:team/any_playing_team run return run trigger LeaveMidgame
execute if predicate game:phase/match/play if entity @s[predicate=custom:team/spectator] run return run trigger leaveSpec
execute if predicate game:phase/staging/queue if predicate custom:team/any_arena_team run return run tag @s add LeaveTeams

execute if predicate custom:team/any_playing_team unless predicate game:match_components/one_team run tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," left the ",{score:{name:"@s",objective:"text.team_name_lowercase"}}," team!"]
execute if predicate custom:team/any_playing_team if predicate game:match_components/one_team run tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," left the match!"]
execute if predicate custom:team/spectator run tellraw @a[x=0] ["",{selector:"@s"},{color:"gray",text:" is no longer spectating the match!"}]

function custom:team/join_lobby
gamemode adventure @s[gamemode=!adventure]
function custom:update_inventory
function custom:update_armor
execute if predicate custom:in_arena positioned -42.5 211.0 78.5 rotated 90 0 run function custom:teleport_with_sound
