execute if predicate game:phase/staging/configuration run return run tellraw @s {color:"red",text:"Teams are not open yet."}

# Leave
execute if predicate game:phase/match/play if predicate custom:team/any_playing_team run return run trigger LeaveMidgame
execute if predicate game:phase/match/play if predicate custom:team/spectator run return run trigger leaveSpec
execute if predicate game:phase/staging/queue if predicate custom:team/any_playing_team run return run tag @s add LeaveTeams

# Join
function custom:team/join_lobby
gamemode adventure @s[gamemode=!adventure]
function custom:update_inventory
function custom:update_armor
execute if score $blue_team_count global > $yellow_team_count global run return run tp @s -79.5 205.0 94.5
tp @s -79.5 205.0 62.5
