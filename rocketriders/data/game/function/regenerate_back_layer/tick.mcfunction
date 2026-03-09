execute unless predicate game:modifiers/hardcore/on run scoreboard players set $back_layer_depth var 5
execute if predicate game:modifiers/hardcore/on run scoreboard players set $back_layer_depth var 1
scoreboard players set $width var 53

scoreboard players operation $x_offset var = $match_time global
scoreboard players operation $x_offset var /= $back_layer_depth var
execute store result storage rocketriders:main regenerate_back_layer.x_offset int 1 run scoreboard players operation $x_offset var %= $width var

scoreboard players operation $z_offset var = $match_time global
execute store result storage rocketriders:main regenerate_back_layer.z_offset int 1 run scoreboard players operation $z_offset var %= $back_layer_depth var

scoreboard players set $fill_column var 1
execute if score $x_offset var matches 49..51 if score $z_offset var matches 1..3 if predicate game:arena_details/castle run scoreboard players set $fill_column var 0
execute if score $x_offset var matches 1..3 if score $z_offset var matches 1..3 if predicate game:arena_details/castle run scoreboard players set $fill_column var 0
execute if score $fill_column var matches 1 run function game:regenerate_back_layer/offset with storage rocketriders:main regenerate_back_layer

# Flag support pads
execute if score $x_offset var matches 2..6 if predicate game:match_components/has_flags if predicate game:modifiers/hardcore/on run function game:regenerate_back_layer/flag_support_pads_blue with storage rocketriders:teams blue.arena_base_blocks
execute if score $x_offset var matches 2..6 if predicate game:match_components/has_flags if predicate game:modifiers/hardcore/on run function game:regenerate_back_layer/flag_support_pads_yellow with storage rocketriders:teams yellow.arena_base_blocks

execute if score $x_offset var matches 46..50 if predicate game:match_components/has_flags if predicate game:modifiers/hardcore/on run function game:regenerate_back_layer/flag_support_pads_blue with storage rocketriders:teams blue.arena_base_blocks
execute if score $x_offset var matches 46..50 if predicate game:match_components/has_flags if predicate game:modifiers/hardcore/on run function game:regenerate_back_layer/flag_support_pads_yellow with storage rocketriders:teams yellow.arena_base_blocks
