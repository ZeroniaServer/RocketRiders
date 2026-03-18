data modify storage rocketriders:assets assets set value {}

# init and save cutouts
# Make sure that each length is minimum 1 and maximum 48
data modify storage rocketriders:main assets merge value {asset_id:"base_detail/arch",asset_type:"team_directional",x_length:21,y_length:7,z_length:5}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/cannon",asset_type:"team_directional",x_length:5,y_length:7,z_length:5}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/cannon_bottom",asset_type:"team_directional",x_length:9,y_length:9,z_length:9}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/platform",asset_type:"team_directional",x_length:7,y_length:5,z_length:9}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/slime_pad",asset_type:"team_directional",x_length:9,y_length:9,z_length:9}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_bottom",asset_type:"team_directional",x_length:9,y_length:16,z_length:22}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_middle_left",asset_type:"team_directional",x_length:21,y_length:12,z_length:23}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_middle_right",asset_type:"team_directional",x_length:32,y_length:12,z_length:23}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_side",asset_type:"team_directional",x_length:14,y_length:8,z_length:14}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_top",asset_type:"team_directional",x_length:29,y_length:11,z_length:19}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/tower",asset_type:"team_directional",x_length:9,y_length:12,z_length:9}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"flag/stage_1",asset_type:"team",x_length:5,y_length:2,z_length:2}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"flag/stage_2",asset_type:"team",x_length:5,y_length:2,z_length:2}
function game:assets/__load/load with storage rocketriders:main assets
function game:assets/__load/load with storage rocketriders:main assets

fill -161 184 -161 -161 185 -161 air strict

# save palettes
function game:assets/update_palettes
