data modify storage rocketriders:assets assets set value {}

data modify storage rocketriders:main assets.blue_front set from storage rocketriders:teams blue.block_palette.front
data modify storage rocketriders:main assets.blue_middle set from storage rocketriders:teams blue.block_palette.middle
data modify storage rocketriders:main assets.blue_back set from storage rocketriders:teams blue.block_palette.back
data modify storage rocketriders:main assets.blue_detail set from storage rocketriders:teams blue.block_palette.detail
data modify storage rocketriders:main assets.blue_back_panes set from storage rocketriders:teams blue.block_palette.back_panes
data modify storage rocketriders:main assets.blue_main_color set from storage rocketriders:teams blue.color_palette.main
data modify storage rocketriders:main assets.yellow_front set from storage rocketriders:teams yellow.block_palette.front
data modify storage rocketriders:main assets.yellow_middle set from storage rocketriders:teams yellow.block_palette.middle
data modify storage rocketriders:main assets.yellow_back set from storage rocketriders:teams yellow.block_palette.back
data modify storage rocketriders:main assets.yellow_detail set from storage rocketriders:teams yellow.block_palette.detail
data modify storage rocketriders:main assets.yellow_back_panes set from storage rocketriders:teams yellow.block_palette.back_panes
data modify storage rocketriders:main assets.yellow_main_color set from storage rocketriders:teams yellow.color_palette.main

# init and save cutouts
# Make sure that each length is minimum 1 and maximum 48
data modify storage rocketriders:main assets merge value {asset_id:"base_detail/arch",x_length:21,y_length:7,z_length:5}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/cannon",x_length:5,y_length:7,z_length:5}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/cannon_bottom",x_length:9,y_length:9,z_length:9}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/platform",x_length:7,y_length:5,z_length:9}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/slime_pad",x_length:9,y_length:9,z_length:9}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_bottom",x_length:9,y_length:16,z_length:22}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_middle_left",x_length:21,y_length:12,z_length:23}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_middle_right",x_length:32,y_length:12,z_length:23}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_side",x_length:14,y_length:8,z_length:14}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/spikes_top",x_length:29,y_length:11,z_length:19}
function game:assets/__load/load with storage rocketriders:main assets

data modify storage rocketriders:main assets merge value {asset_id:"base_detail/tower",x_length:9,y_length:12,z_length:9}
function game:assets/__load/load with storage rocketriders:main assets

fill -161 184 -161 -161 185 -161 air strict

# save palettes
function game:assets/update_palettes
