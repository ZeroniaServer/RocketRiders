# arguments: asset_id, x_length, y_length, z_length

# Validate at least 1x1x1 and within 48x48x48
$scoreboard players set $x_length var $(x_length)
$scoreboard players set $y_length var $(y_length)
$scoreboard players set $z_length var $(z_length)
execute unless score $x_length var matches 1..48 run return fail
execute unless score $y_length var matches 1..48 run return fail
execute unless score $z_length var matches 1..48 run return fail

# Save structures
$data modify storage rocketriders:main assets set value {asset_id:"$(asset_id)",x_length:$(x_length),y_length:$(y_length),z_length:$(z_length)}

scoreboard players set $fixed_opposite_corner_x var -160
scoreboard players operation $fixed_opposite_corner_x var += $x_length var
execute store result storage rocketriders:main assets.fixed_opposite_corner_x int 1 run scoreboard players remove $fixed_opposite_corner_x var 1

scoreboard players set $fixed_opposite_corner_y var 184
scoreboard players operation $fixed_opposite_corner_y var += $y_length var
execute store result storage rocketriders:main assets.fixed_opposite_corner_y int 1 run scoreboard players remove $fixed_opposite_corner_y var 1

scoreboard players set $fixed_opposite_corner_z var -160
scoreboard players operation $fixed_opposite_corner_z var += $z_length var
execute store result storage rocketriders:main assets.fixed_opposite_corner_z int 1 run scoreboard players remove $fixed_opposite_corner_z var 1

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
function game:assets/__load/save_structures with storage rocketriders:main assets
fill -161 184 -161 -161 185 -161 air strict

#
$data modify storage rocketriders:assets assets."$(asset_id)" set value {structure_prefix:"game:asset/$(asset_id)/",x_length:$(x_length),y_length:$(y_length),z_length:$(z_length)}
