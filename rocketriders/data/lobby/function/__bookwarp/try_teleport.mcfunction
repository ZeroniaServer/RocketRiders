execute if score @s LobbyWarp matches 1 run return run tp @s -43 211 78 90 0

execute if score @s LobbyWarp matches 2 unless predicate rr:has_modification_room run tellraw @s [{"text":"That is not a valid input!","color":"red"}]
execute if score @s LobbyWarp matches 2 unless predicate rr:has_modification_room run return fail
execute if score @s LobbyWarp matches 2 if predicate game:game_rules/lock_modification_room/on run tellraw @s {color:"red",text:"You do not have access to the Modification Room!"}
execute if score @s LobbyWarp matches 2 if predicate game:game_rules/lock_modification_room/on run return fail
execute if score @s LobbyWarp matches 2 unless predicate lobby:open_modification_room run return run tp @s -64 202 78 -90 0
execute if score @s LobbyWarp matches 2 if predicate lobby:open_modification_room run return run tp @s -64 191 78 90 0

execute if score @s LobbyWarp matches 3 run return run tp @s -78 204 64 135 0
execute if score @s LobbyWarp matches 4 run return run tp @s -78 204 92 45 0
execute if score @s LobbyWarp matches 5 run return run tp @s -80 201 78 90 0
execute if score @s LobbyWarp matches 6 run return run tp @s 11 204 78 -90 60
execute if score @s LobbyWarp matches 7 run return run tp @s 65 205 -3 0 0

tellraw @s {color:"red",text:"That is not a valid input."}
return fail
