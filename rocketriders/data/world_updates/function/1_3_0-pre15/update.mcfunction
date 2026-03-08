# fix modification room
place template world_updates:1_3_0-pre15/modification_room -72 189 67 none none 1 0 strict
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns

# change lobby team color to gray
team modify rocketriders.sort_200.lobby color gray

# limit playing team sizes on ck and realms
execute if predicate rr:server_mode/realms run scoreboard players set $max_players config 10
execute if predicate rr:server_mode/cubekrowd_voting run scoreboard players set $max_players config 12
execute if predicate rr:server_mode/cubekrowd_duels run scoreboard players set $max_players config 2
execute if predicate rr:server_mode/cubekrowd_custom run scoreboard players set $max_players config 20

# rename gamemode_components to match_components
scoreboard objectives remove gamemode_components
scoreboard objectives add match_components dummy
function game:match_components/reset

# remove unused scoreboard objectives
scoreboard objectives remove PlayerCap
