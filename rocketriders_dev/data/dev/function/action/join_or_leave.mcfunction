execute unless predicate game:phase/match/play unless entity @n[tag=Selection,tag=EditedSettings] run return run tellraw @s {color:"red",text:"The match has not started yet."}

# Leave
execute if predicate game:phase/match/play if predicate custom:team/any_playing_team run return run trigger LeaveMidgame
execute if predicate game:phase/match/play if predicate custom:team/spectator run return run trigger leaveSpec
execute unless predicate game:phase/match/play if predicate custom:team/any_playing_team if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run return run tag @s add LeaveTeams

# Join
function custom:team/join_lobby
gamemode adventure @s[gamemode=!adventure]
function custom:update_inventory
function custom:update_armor
execute if score $blue_team_count global > $yellow_team_count global run return run tp @s -79.5 205.0 94.5
tp @s -79.5 205.0 62.5
