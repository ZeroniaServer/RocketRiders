execute if predicate custom:is_on_fire run return 1

execute if predicate custom:entity/touching_water run return fail
execute unless predicate game:modifiers/hobbits/on at @s run return run function custom:__impl__/player_is_burning/normal
execute if predicate game:modifiers/hobbits/on at @s run return run function custom:__impl__/player_is_burning/hobbit
