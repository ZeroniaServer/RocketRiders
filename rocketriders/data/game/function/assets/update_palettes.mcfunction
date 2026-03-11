data modify storage rocketriders:main assets set value {}
data modify storage rocketriders:main assets.blue_front set from storage rocketriders:teams blue.block_palette.front
data modify storage rocketriders:main assets.blue_middle set from storage rocketriders:teams blue.block_palette.middle
data modify storage rocketriders:main assets.blue_back set from storage rocketriders:teams blue.block_palette.back
data modify storage rocketriders:main assets.blue_detail set from storage rocketriders:teams blue.block_palette.detail
data modify storage rocketriders:main assets.blue_flag set from storage rocketriders:teams blue.block_palette.flag
data modify storage rocketriders:main assets.blue_back_stained_glass_pane set from storage rocketriders:teams blue.block_palette.back_stained_glass_pane
data modify storage rocketriders:main assets.blue_main_color set from storage rocketriders:teams blue.color_palette.main
data modify storage rocketriders:main assets.yellow_front set from storage rocketriders:teams yellow.block_palette.front
data modify storage rocketriders:main assets.yellow_middle set from storage rocketriders:teams yellow.block_palette.middle
data modify storage rocketriders:main assets.yellow_back set from storage rocketriders:teams yellow.block_palette.back
data modify storage rocketriders:main assets.yellow_detail set from storage rocketriders:teams yellow.block_palette.detail
data modify storage rocketriders:main assets.yellow_flag set from storage rocketriders:teams yellow.block_palette.flag
data modify storage rocketriders:main assets.yellow_back_stained_glass_pane set from storage rocketriders:teams yellow.block_palette.back_stained_glass_pane
data modify storage rocketriders:main assets.yellow_main_color set from storage rocketriders:teams yellow.color_palette.main

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/arch"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/cannon"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/cannon_bottom"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/platform"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/slime_pad"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_bottom"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_middle_left"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_middle_right"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_side"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_top"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/tower"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."flag/stage_1"
function game:assets/__load/save_palettes with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."flag/stage_2"
function game:assets/__load/save_palettes with storage rocketriders:main assets
