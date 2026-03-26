data modify storage rocketriders:assets assets set value {}

# init and save cutouts
# Make sure that each length is minimum 1 and maximum 48
data modify storage rocketriders:main assets merge value {asset_id:"base_detail/arch",asset_type:"team_directional",x_length:21,y_length:7,z_length:5}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/cannon",asset_type:"team_directional",x_length:5,y_length:7,z_length:5}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/cannon_bottom",asset_type:"team_directional",x_length:9,y_length:9,z_length:9}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/platform",asset_type:"team_directional",x_length:7,y_length:5,z_length:9}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/slime_pad",asset_type:"team_directional",x_length:9,y_length:9,z_length:9}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_bottom",asset_type:"team_directional",x_length:9,y_length:16,z_length:22}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_middle_left",asset_type:"team_directional",x_length:21,y_length:12,z_length:23}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_middle_right",asset_type:"team_directional",x_length:32,y_length:12,z_length:23}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_side",asset_type:"team_directional",x_length:14,y_length:8,z_length:14}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_top",asset_type:"team_directional",x_length:29,y_length:11,z_length:19}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/tower",asset_type:"team_directional",x_length:9,y_length:12,z_length:9}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"flag/stage_1",asset_type:"flag",stage:"1"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"flag/stage_2",asset_type:"flag",stage:"2"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"shield",asset_type:"shield"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"castle_pathways",asset_type:"castle_pathways"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"canopy",asset_type:"canopy"}
execute positioned -160 184 -160 run function game:assets/__load/load with storage rocketriders:main assets

fill -161 184 -161 -161 185 -161 air strict

# save palettes
function game:assets/update_palettes
