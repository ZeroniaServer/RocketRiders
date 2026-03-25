scoreboard players set $main_item.enum match_components 0
execute if data storage rocketriders:match components{main_item:"shooting_saber"} run scoreboard players set $main_item.enum match_components 1
execute if data storage rocketriders:match components{main_item:"piercing_pickaxe"} run scoreboard players set $main_item.enum match_components 2
execute if data storage rocketriders:match components{main_item:"crusade_kit_dependent"} run scoreboard players set $main_item.enum match_components 3
execute if data storage rocketriders:match components{main_item:"rocket_nomicon"} run scoreboard players set $main_item.enum match_components 4

execute if score $main_item.enum match_components matches 0 run data remove storage rocketriders:match components.main_item
execute if score $main_item.enum match_components matches 0 run scoreboard players reset $main_item.enum match_components
