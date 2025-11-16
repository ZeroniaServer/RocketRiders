execute if predicate custom:is_on_fire run return 1

execute unless predicate game:modifiers/hobbits/on at @s run return run function custom:__impl__/is_in_or_on_fire/normal
execute if predicate game:modifiers/hobbits/on at @s run return run function custom:__impl__/is_in_or_on_fire/hobbit
