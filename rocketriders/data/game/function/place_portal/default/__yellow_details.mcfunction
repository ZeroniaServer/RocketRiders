$execute if predicate game:arena_details/portal/glass_rim run fill -11 59 74 35 36 74 $(feature)_stained_glass_pane[east=true,west=true] replace #custom:air strict
$execute if predicate game:arena_details/portal/glass_cover run fill -11 59 73 35 36 75 $(feature)_stained_glass replace #custom:air strict
execute if predicate game:arena_details/portal/end_stone_cover run fill -11 59 73 35 36 75 end_stone replace #custom:air strict
execute if predicate game:arena_details/portal/hole_in_one run function game:place_hole_in_one/default/yellow
