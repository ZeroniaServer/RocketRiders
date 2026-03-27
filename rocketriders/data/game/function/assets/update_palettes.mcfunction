data modify storage rocketriders:assets palette set value {}

data modify storage rocketriders:assets palette.blue_front set from storage rocketriders:teams blue.block_palette.front
data modify storage rocketriders:assets palette.blue_middle set from storage rocketriders:teams blue.block_palette.middle
data modify storage rocketriders:assets palette.blue_back set from storage rocketriders:teams blue.block_palette.back
data modify storage rocketriders:assets palette.blue_detail set from storage rocketriders:teams blue.block_palette.detail
data modify storage rocketriders:assets palette.blue_flag set from storage rocketriders:teams blue.block_palette.flag
data modify storage rocketriders:assets palette.blue_front_glazed_terracotta set from storage rocketriders:teams blue.block_palette.front_glazed_terracotta
data modify storage rocketriders:assets palette.blue_back_stained_glass_pane set from storage rocketriders:teams blue.block_palette.back_stained_glass_pane
data modify storage rocketriders:assets palette.blue_shield_center_stained_glass set from storage rocketriders:teams blue.block_palette.shield_center_stained_glass
data modify storage rocketriders:assets palette.blue_shield_accent_stained_glass set from storage rocketriders:teams blue.block_palette.shield_accent_stained_glass

data modify storage rocketriders:assets palette.yellow_front set from storage rocketriders:teams yellow.block_palette.front
data modify storage rocketriders:assets palette.yellow_middle set from storage rocketriders:teams yellow.block_palette.middle
data modify storage rocketriders:assets palette.yellow_back set from storage rocketriders:teams yellow.block_palette.back
data modify storage rocketriders:assets palette.yellow_detail set from storage rocketriders:teams yellow.block_palette.detail
data modify storage rocketriders:assets palette.yellow_flag set from storage rocketriders:teams yellow.block_palette.flag
data modify storage rocketriders:assets palette.yellow_front_glazed_terracotta set from storage rocketriders:teams yellow.block_palette.front_glazed_terracotta
data modify storage rocketriders:assets palette.yellow_back_stained_glass_pane set from storage rocketriders:teams yellow.block_palette.back_stained_glass_pane
data modify storage rocketriders:assets palette.yellow_shield_center_stained_glass set from storage rocketriders:teams yellow.block_palette.shield_center_stained_glass
data modify storage rocketriders:assets palette.yellow_shield_accent_stained_glass set from storage rocketriders:teams yellow.block_palette.shield_accent_stained_glass

data modify storage rocketriders:assets remaining_assets set value []
data modify storage rocketriders:assets remaining_assets append from storage rocketriders:assets assets[]
data modify storage rocketriders:assets remaining_assets[] merge from storage rocketriders:assets palette

execute store result score $assets_refresh_max global if data storage rocketriders:assets assets[]
scoreboard players set $assets_refresh_progress global 0
schedule function game:assets/__refresh/loop_queue 1t
