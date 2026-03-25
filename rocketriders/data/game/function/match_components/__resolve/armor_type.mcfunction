scoreboard players set $armor_type.enum match_components 0
execute if data storage rocketriders:match components{armor_type:"crusade_mode"} run scoreboard players set $armor_type.enum match_components 1
execute if data storage rocketriders:match components{armor_type:"swap_mode"} run scoreboard players set $armor_type.enum match_components 2

execute if score $armor_type.enum match_components matches 0 run data modify storage rocketriders:match components.armor_type set value "generic"
execute if score $armor_type.enum match_components matches 0 run scoreboard players reset $armor_type.enum match_components
