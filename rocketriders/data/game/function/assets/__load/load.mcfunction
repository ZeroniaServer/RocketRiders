execute store result score $fixed_opposite_corner_x var run data get storage rocketriders:main assets.x_length
execute store result storage rocketriders:main assets.fixed_opposite_corner_x int 1 run scoreboard players remove $fixed_opposite_corner_x var 161

execute store result score $fixed_opposite_corner_y var run data get storage rocketriders:main assets.y_length
execute store result storage rocketriders:main assets.fixed_opposite_corner_y int 1 run scoreboard players add $fixed_opposite_corner_y var 183

execute store result score $fixed_opposite_corner_z var run data get storage rocketriders:main assets.z_length
execute store result storage rocketriders:main assets.fixed_opposite_corner_z int 1 run scoreboard players remove $fixed_opposite_corner_z var 161

$data modify storage rocketriders:assets assets."$(asset_id)" set from storage rocketriders:main assets

$function game:assets/__load/types/$(asset_type) with storage rocketriders:main assets
