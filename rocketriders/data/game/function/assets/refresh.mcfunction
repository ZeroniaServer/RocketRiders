execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["[assets] Started generating assets..."]}
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

execute unless predicate game:arena_details/top/arch run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"arch"}]
execute unless predicate game:arena_details/bottom/cannon run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"cannon"}]
execute unless predicate game:arena_details/top_sides/cannons run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"cannon_bottom"}]
execute unless predicate game:arena_details/top_sides/platform run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"platform"}]
execute unless predicate game:arena_details/bottom/slime_pad unless predicate game:arena_details/middle/slime_pads run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"slime_pad"}]
execute unless predicate game:arena_details/bottom/spikes run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"spikes_bottom"}]
execute unless predicate game:arena_details/middle/spikes run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"spikes_middle_left"}]
execute unless predicate game:arena_details/middle/spikes run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"spikes_middle_right"}]
execute unless predicate game:arena_details/top_sides/spikes run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"spikes_side"}]
execute unless predicate game:arena_details/top/castle run data remove storage rocketriders:assets remaining_assets[{asset_type:"castles"}]
execute unless predicate game:arena_details/top/spikes run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"spikes_top"}]
execute unless predicate game:arena_details/top/towers run data remove storage rocketriders:assets remaining_assets[{asset_type:"base_detail",name:"tower"}]
execute unless predicate game:match_components/winner_pegasus run data remove storage rocketriders:assets remaining_assets[{asset_type:"pegasus"}]
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] if entity @s[tag=!chaseEnabled,predicate=!game:match_components/has_flags] run data remove storage rocketriders:assets remaining_assets[{asset_type:"flag"}]

execute store result score $assets_refresh_max global if data storage rocketriders:assets remaining_assets[]
scoreboard players set $assets_refresh_progress global 0
schedule function game:assets/__refresh/loop_queue 1t
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=!player]
