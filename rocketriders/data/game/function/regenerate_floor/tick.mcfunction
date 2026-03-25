execute unless predicate game:modifiers/hardcore/on unless predicate game:arena_details/castle run scoreboard players set $depth var 15
execute unless predicate game:modifiers/hardcore/on if predicate game:arena_details/castle run scoreboard players set $depth var 10
execute if predicate game:modifiers/hardcore/on run scoreboard players set $depth var 3

scoreboard players set $middle_depth var 5
execute if predicate game:modifiers/hardcore/on run scoreboard players set $middle_depth var 1
scoreboard players set $front_depth var 10
execute if predicate game:modifiers/hardcore/on run scoreboard players set $front_depth var 2

execute unless predicate game:arena_details/castle run scoreboard players set $width var 53
execute if predicate game:arena_details/castle run scoreboard players set $width var 43

scoreboard players operation $x_offset var = $match_time global
scoreboard players operation $x_offset var /= $depth var
execute store result storage rocketriders:main regenerate_floor.x_offset int 1 run scoreboard players operation $x_offset var %= $width var

scoreboard players operation $z_offset var = $match_time global
execute store result storage rocketriders:main regenerate_floor.z_offset int 1 run scoreboard players operation $z_offset var %= $depth var

execute unless predicate game:arena_details/castle positioned -13.5 63.5 ~ run function game:regenerate_floor/offset with storage rocketriders:main regenerate_floor
execute if predicate game:arena_details/castle positioned -8.5 63.5 ~ run function game:regenerate_floor/offset with storage rocketriders:main regenerate_floor
