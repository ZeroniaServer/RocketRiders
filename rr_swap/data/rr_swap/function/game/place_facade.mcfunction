execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run return fail

execute store result score $swap_side global run random value 0..1

#Pregame queue
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -89 201 63 -101 195 62 black_stained_glass
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -89 201 60 -101 195 61 black_concrete
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -89 201 94 -101 195 93 white_stained_glass
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -89 201 95 -101 195 96 white_concrete
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark unless predicate game:match_components/red_for_blue run fill -89 201 65 -101 195 64 blue_stained_glass
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark if predicate game:match_components/red_for_blue run fill -89 201 65 -101 195 64 red_stained_glass

execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark unless predicate game:match_components/red_for_blue run fill -89 201 65 -101 195 64 light_blue_stained_glass
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark if predicate game:match_components/red_for_blue run fill -89 201 65 -101 195 64 pink_stained_glass
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -89 201 62 -101 195 63 white_stained_glass
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -89 201 60 -101 195 61 white_concrete
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -89 201 96 -101 195 95 black_concrete
execute unless predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -89 201 94 -101 195 93 orange_stained_glass

#Hardcore pregame queue
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -89 201 61 -101 195 61 black_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -89 201 60 -101 195 60 black_concrete
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -89 201 95 -101 195 95 white_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:blue_team_is_dark run fill -89 201 96 -101 195 96 white_concrete

execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark unless predicate game:match_components/red_for_blue run fill -89 201 62 -101 195 62 light_blue_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark if predicate game:match_components/red_for_blue run fill -89 201 62 -101 195 62 pink_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -89 201 61 -101 195 61 white_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -89 201 60 -101 195 60 white_concrete
execute if predicate game:modifiers/hardcore/on if predicate rr_swap:yellow_team_is_dark run fill -89 201 96 -101 195 96 black_concrete
