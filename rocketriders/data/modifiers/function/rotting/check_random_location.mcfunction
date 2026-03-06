execute store result storage rocketriders:main rotting.x int 1 run random value -22..46

execute unless predicate game:match_components/lower_void store result storage rocketriders:main rotting.y int 1 run random value 0..180
execute if predicate game:match_components/lower_void store result storage rocketriders:main rotting.y int 1 run random value -20..180

execute unless predicate game:modifiers/hardcore/on store result storage rocketriders:main rotting.z int 1 run random value -40..40
execute if predicate game:modifiers/hardcore/on store result storage rocketriders:main rotting.z int 1 run random value -52..52

function modifiers:rotting/check_location with storage rocketriders:main rotting
