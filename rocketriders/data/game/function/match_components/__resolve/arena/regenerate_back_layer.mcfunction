scoreboard players set $arena/regenerate_back_layer.blue match_components 0
execute unless data storage rocketriders:match components."arena/regenerate_back_layer"{} store result score $arena/regenerate_back_layer.blue match_components run data get storage rocketriders:match components."arena/regenerate_back_layer"
execute if data storage rocketriders:match components."arena/regenerate_back_layer".blue store result score $arena/regenerate_back_layer.blue match_components run data get storage rocketriders:match components."arena/regenerate_back_layer".blue
execute unless score $arena/regenerate_back_layer.blue match_components matches 1 run scoreboard players reset $arena/regenerate_back_layer.blue match_components

scoreboard players set $arena/regenerate_back_layer.yellow match_components 0
execute unless data storage rocketriders:match components."arena/regenerate_back_layer"{} store result score $arena/regenerate_back_layer.yellow match_components run data get storage rocketriders:match components."arena/regenerate_back_layer"
execute if data storage rocketriders:match components."arena/regenerate_back_layer".yellow store result score $arena/regenerate_back_layer.yellow match_components run data get storage rocketriders:match components."arena/regenerate_back_layer".yellow
execute unless score $arena/regenerate_back_layer.yellow match_components matches 1 run scoreboard players reset $arena/regenerate_back_layer.yellow match_components

data modify storage rocketriders:match components."arena/regenerate_back_layer" set value {blue:false,yellow:false}
execute store success storage rocketriders:match components."arena/regenerate_back_layer".blue byte 1 if score $arena/regenerate_back_layer.blue match_components matches 1
execute store success storage rocketriders:match components."arena/regenerate_back_layer".yellow byte 1 if score $arena/regenerate_back_layer.yellow match_components matches 1
