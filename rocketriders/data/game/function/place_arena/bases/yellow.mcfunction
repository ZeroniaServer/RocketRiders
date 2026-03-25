execute unless predicate game:modifiers/hardcore/on run function game:place_arena/bases/yellow_template with storage rocketriders:teams yellow.block_palette
execute unless predicate game:modifiers/hardcore/on if predicate game:match_components/arena/checkered_yellow_base_front run function game:place_arena/checkered_yellow_base_front with storage rocketriders:teams yellow.block_palette

execute if predicate game:modifiers/hardcore/on run function game:place_arena/bases/yellow_template_hardcore with storage rocketriders:teams yellow.block_palette
execute if predicate game:modifiers/hardcore/on if predicate game:match_components/arena/checkered_yellow_base_front run function game:place_arena/checkered_yellow_base_front_hardcore with storage rocketriders:teams yellow.block_palette
