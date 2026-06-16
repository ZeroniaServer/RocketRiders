scoreboard players set $arena/regenerate_floor.blue match_components 0
execute unless data storage rocketriders:match components."arena/regenerate_floor"{} store result score $arena/regenerate_floor.blue match_components run data get storage rocketriders:match components."arena/regenerate_floor"
execute if data storage rocketriders:match components."arena/regenerate_floor".blue store result score $arena/regenerate_floor.blue match_components run data get storage rocketriders:match components."arena/regenerate_floor".blue
execute unless score $arena/regenerate_floor.blue match_components matches 1 run scoreboard players reset $arena/regenerate_floor.blue match_components

scoreboard players set $arena/regenerate_floor.yellow match_components 0
execute unless data storage rocketriders:match components."arena/regenerate_floor"{} store result score $arena/regenerate_floor.yellow match_components run data get storage rocketriders:match components."arena/regenerate_floor"
execute if data storage rocketriders:match components."arena/regenerate_floor".yellow store result score $arena/regenerate_floor.yellow match_components run data get storage rocketriders:match components."arena/regenerate_floor".yellow
execute unless score $arena/regenerate_floor.yellow match_components matches 1 run scoreboard players reset $arena/regenerate_floor.yellow match_components

data modify storage rocketriders:match components."arena/regenerate_floor" set value {blue:false,yellow:false}
execute store success storage rocketriders:match components."arena/regenerate_floor".blue byte 1 if score $arena/regenerate_floor.blue match_components matches 1
execute store success storage rocketriders:match components."arena/regenerate_floor".yellow byte 1 if score $arena/regenerate_floor.yellow match_components matches 1
