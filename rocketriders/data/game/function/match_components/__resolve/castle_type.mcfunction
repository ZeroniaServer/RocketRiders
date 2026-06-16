scoreboard players set $castle_type.enum match_components 0
execute if data storage rocketriders:match components{castle_type:"deepslate"} run scoreboard players set $castle_type.enum match_components 1

execute if score $castle_type.enum match_components matches 0 run data modify storage rocketriders:match components.castle_type set value "normal"
execute if score $castle_type.enum match_components matches 0 run scoreboard players reset $castle_type.enum match_components
