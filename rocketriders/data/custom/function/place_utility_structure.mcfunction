# arguments: template, x_length, y_length, z_length, rules

$data modify storage rocketriders:main place_utility_structure set value {template:"$(template)",x_length:$(x_length),y_length:$(y_length),z_length:$(z_length),rules:$(rules)}

execute store result score $fixed_opposite_corner_x var run data get storage rocketriders:main place_utility_structure.x_length
execute store result score $fixed_opposite_corner_y var run data get storage rocketriders:main place_utility_structure.y_length
execute store result score $fixed_opposite_corner_z var run data get storage rocketriders:main place_utility_structure.z_length
execute unless score $fixed_opposite_corner_x var matches 0..48 run return fail
execute unless score $fixed_opposite_corner_y var matches 0..48 run return fail
execute unless score $fixed_opposite_corner_z var matches 0..48 run return fail
execute store result storage rocketriders:main place_utility_structure.fixed_opposite_corner_x int 1 run scoreboard players remove $fixed_opposite_corner_x var 160
execute store result storage rocketriders:main place_utility_structure.fixed_opposite_corner_y int 1 run scoreboard players add $fixed_opposite_corner_y var 184
execute store result storage rocketriders:main place_utility_structure.fixed_opposite_corner_z int 1 run scoreboard players remove $fixed_opposite_corner_z var 160

execute if data storage rocketriders:main place_utility_structure.rules.blocks_that_require_air run data modify storage rocketriders:main place_utility_structure.blocks_that_require_air set from storage rocketriders:main place_utility_structure.rules.blocks_that_require_air
execute if data storage rocketriders:main place_utility_structure.rules.blocks_that_require_air align xyz run function custom:__impl__/place_utility_structure/blocks_that_require_air_before with storage rocketriders:main place_utility_structure
execute align xyz run function custom:__impl__/place_utility_structure/do_place with storage rocketriders:main place_utility_structure
execute if data storage rocketriders:main place_utility_structure.rules.blocks_that_require_air align xyz run function custom:__impl__/place_utility_structure/blocks_that_require_air_after with storage rocketriders:main place_utility_structure
return 1
