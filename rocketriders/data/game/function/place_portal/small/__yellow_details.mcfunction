$execute if predicate game:arena_details/portal/glass_rim run fill 2 43 67 22 57 67 $(feature)_stained_glass_pane[east=true,west=true] replace #custom:air strict
$execute if predicate game:arena_details/portal/glass_cover run fill 2 43 66 22 57 68 $(feature)_stained_glass replace #custom:air_and_glass strict
execute if predicate game:arena_details/portal/end_stone_cover run fill 2 43 66 22 57 68 end_stone replace #custom:air_and_glass strict
execute if predicate game:arena_details/portal/hole_in_one run function game:place_hole_in_one/small/yellow
