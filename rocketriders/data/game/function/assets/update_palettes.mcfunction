data modify storage rocketriders:main assets set value {}
data modify storage rocketriders:main assets.blue_front set from storage rocketriders:teams blue.block_palette.front
data modify storage rocketriders:main assets.blue_middle set from storage rocketriders:teams blue.block_palette.middle
data modify storage rocketriders:main assets.blue_back set from storage rocketriders:teams blue.block_palette.back
data modify storage rocketriders:main assets.blue_detail set from storage rocketriders:teams blue.block_palette.detail
data modify storage rocketriders:main assets.blue_flag set from storage rocketriders:teams blue.block_palette.flag
data modify storage rocketriders:main assets.blue_front_glazed_terracotta set from storage rocketriders:teams blue.block_palette.front_glazed_terracotta
data modify storage rocketriders:main assets.blue_back_stained_glass_pane set from storage rocketriders:teams blue.block_palette.back_stained_glass_pane
data modify storage rocketriders:main assets.blue_shield_center_stained_glass set from storage rocketriders:teams blue.block_palette.shield_center_stained_glass
data modify storage rocketriders:main assets.blue_shield_accent_stained_glass set from storage rocketriders:teams blue.block_palette.shield_accent_stained_glass

data modify storage rocketriders:main assets.yellow_front set from storage rocketriders:teams yellow.block_palette.front
data modify storage rocketriders:main assets.yellow_middle set from storage rocketriders:teams yellow.block_palette.middle
data modify storage rocketriders:main assets.yellow_back set from storage rocketriders:teams yellow.block_palette.back
data modify storage rocketriders:main assets.yellow_detail set from storage rocketriders:teams yellow.block_palette.detail
data modify storage rocketriders:main assets.yellow_flag set from storage rocketriders:teams yellow.block_palette.flag
data modify storage rocketriders:main assets.yellow_front_glazed_terracotta set from storage rocketriders:teams yellow.block_palette.front_glazed_terracotta
data modify storage rocketriders:main assets.yellow_back_stained_glass_pane set from storage rocketriders:teams yellow.block_palette.back_stained_glass_pane
data modify storage rocketriders:main assets.yellow_shield_center_stained_glass set from storage rocketriders:teams yellow.block_palette.shield_center_stained_glass
data modify storage rocketriders:main assets.yellow_shield_accent_stained_glass set from storage rocketriders:teams yellow.block_palette.shield_accent_stained_glass

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/arch"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/cannon"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/cannon_bottom"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/platform"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/slime_pad"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_bottom"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_middle_left"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_middle_right"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_side"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/spikes_top"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."base_detail/tower"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."flag/stage_1"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."flag/stage_2"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets

data modify storage rocketriders:main assets merge from storage rocketriders:assets assets."shield"
execute positioned -160 184 -160 run function game:assets/__update_palettes/update with storage rocketriders:main assets
