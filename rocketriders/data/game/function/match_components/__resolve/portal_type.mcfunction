scoreboard players set $portal_type.enum match_components 0
execute if data storage rocketriders:match components{portal_type:"none"} run scoreboard players set $portal_type.enum match_components 1
execute if data storage rocketriders:match components{portal_type:"small"} run scoreboard players set $portal_type.enum match_components 2

execute if score $portal_type.enum match_components matches 0 run data modify storage rocketriders:match components.portal_type set value "normal"
execute if score $portal_type.enum match_components matches 0 run scoreboard players reset $portal_type.enum match_components
