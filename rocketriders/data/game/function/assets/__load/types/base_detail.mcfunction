execute store result score $fixed_opposite_corner_x var run data get storage rocketriders:assets assets[-1].x_length
execute store result storage rocketriders:assets assets[-1].fixed_opposite_corner_x int 1 run scoreboard players remove $fixed_opposite_corner_x var 161

execute store result score $fixed_opposite_corner_y var run data get storage rocketriders:assets assets[-1].y_length
execute store result storage rocketriders:assets assets[-1].fixed_opposite_corner_y int 1 run scoreboard players add $fixed_opposite_corner_y var 183

execute store result score $fixed_opposite_corner_z var run data get storage rocketriders:assets assets[-1].z_length
execute store result storage rocketriders:assets assets[-1].fixed_opposite_corner_z int 1 run scoreboard players remove $fixed_opposite_corner_z var 161
