execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["[assets] Loading assets..."]}
data modify storage rocketriders:assets assets set value []

# Make sure that each length is minimum 1 and maximum 48
data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"arch",x_length:21,y_length:7,z_length:5}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"cannon",x_length:5,y_length:7,z_length:5}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"cannon_bottom",x_length:9,y_length:9,z_length:9}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"platform",x_length:7,y_length:5,z_length:9}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"slime_pad",x_length:9,y_length:9,z_length:9}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"spikes_bottom",x_length:9,y_length:16,z_length:22}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"spikes_middle_left",x_length:21,y_length:12,z_length:23}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"spikes_middle_right",x_length:32,y_length:12,z_length:23}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"spikes_side",x_length:14,y_length:8,z_length:14}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"spikes_top",x_length:29,y_length:11,z_length:19}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"base_detail",name:"tower",x_length:9,y_length:12,z_length:9}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"flag"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"shield"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"castles"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"canopy"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

execute if data storage rocketriders:assets load_missile_assets[0] run function game:assets/__load/missiles_loop
data remove storage rocketriders:assets load_missile_assets

data modify storage rocketriders:assets assets append value {asset_type:"pegasus"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["[assets] Loaded assets!"]}

# update palettes (do so instantly if /reload is ran in the middle of a match)
function game:assets/refresh
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["[assets] Instantly generating assets upon data pack load."]}
schedule clear game:assets/__refresh/loop_queue
function game:assets/__refresh/loop_load
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=!player]

# do not repeat assets that only need to be loaded once when the world starts
data remove storage rocketriders:assets assets[{__static:true}]
