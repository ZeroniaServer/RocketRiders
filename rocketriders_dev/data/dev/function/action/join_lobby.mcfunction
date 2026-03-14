execute if predicate custom:team/lobby run return run tellraw @s {color:"red",text:"You are already in the lobby."}

execute if predicate custom:team/any_arena_team run return run trigger leave

function custom:team/join_lobby
gamemode adventure @s[gamemode=!adventure]
function custom:update_inventory
function custom:update_armor
execute if predicate custom:in_arena positioned -42.5 211.0 78.5 rotated 90 0 run function custom:teleport_with_sound
