data modify storage rocketriders:assets assets append value {asset_type:"missile"}
data modify storage rocketriders:assets assets[-1].name set from storage rocketriders:assets load_missile_assets[-1]
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile_display",__static:true}
data modify storage rocketriders:assets assets[-1].name set from storage rocketriders:assets load_missile_assets[-1]
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data remove storage rocketriders:assets load_missile_assets[-1]
execute if data storage rocketriders:assets load_missile_assets[0] run function game:assets/__load/missiles_loop
