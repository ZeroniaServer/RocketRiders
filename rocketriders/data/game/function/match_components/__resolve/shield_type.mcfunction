scoreboard players set $shield_type.enum match_components 0
execute if data storage rocketriders:match components{shield_type:"checkered"} run scoreboard players set $shield_type.enum match_components 1
execute if data storage rocketriders:match components{shield_type:"classic"} run scoreboard players set $shield_type.enum match_components 2

execute if score $shield_type.enum match_components matches 0 run data modify storage rocketriders:match components.shield_type set value "normal"
execute if score $shield_type.enum match_components matches 0 run scoreboard players reset $shield_type.enum match_components
