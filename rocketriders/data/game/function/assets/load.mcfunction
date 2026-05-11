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

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"ant"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"ant",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"auxiliary"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"auxiliary",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"blade"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"blade",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"broadsword"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"broadsword",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"bullet"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"bullet",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"catapult"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"catapult",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"chronullifier"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"chronullifier",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"citadel"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"citadel",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"duplex"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"duplex",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"elder_guardian"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"elder_guardian",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"gemini"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"gemini",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"hurricane"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"hurricane",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"hypersonic"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"hypersonic",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"juggerbuster"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"juggerbuster",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"lifter"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"lifter",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"rifter"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"rifter",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"slasher"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"slasher",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"thunderbolt"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"thunderbolt",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"tomatwo"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"tomatwo",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

data modify storage rocketriders:assets assets append value {asset_type:"missile",name:"warhead"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]
data modify storage rocketriders:assets assets append value {asset_type:"missile_display",name:"warhead",__static:true}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:assets assets[-1]

# update palettes (do so instantly if /reload is ran in the middle of a match)
function game:assets/refresh
execute if predicate game:phase/match run schedule clear game:assets/__refresh/loop_queue
execute if predicate game:phase/match run function game:assets/__refresh/loop_load
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=!player]

# do not repeat assets that only need to be loaded once when the world starts
data remove storage rocketriders:assets assets[{__static:true}]
