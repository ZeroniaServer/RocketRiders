#> Extra for Hypersonic
execute unless score @s[tag=!strict] entity.age matches 2.. run return run scoreboard players add @s entity.age 1

#Blue
execute unless predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraBlue,tag=!strict] run setblock ~ ~-4 ~9 tnt
execute unless predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraBlue,tag=!strict] run fill ~ ~-6 ~9 ~1 ~-6 ~9 tnt
execute unless predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraBlue,tag=strict] run setblock ~ ~-4 ~9 tnt strict
execute unless predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraBlue,tag=strict] run fill ~ ~-6 ~9 ~1 ~-6 ~9 tnt strict

execute if predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraBlue,tag=!strict] run setblock ~ ~-4 ~9 tnt[unstable=true]
execute if predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraBlue,tag=!strict] run fill ~ ~-6 ~9 ~1 ~-6 ~9 tnt[unstable=true]
execute if predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraBlue,tag=strict] run setblock ~ ~-4 ~9 tnt[unstable=true] strict
execute if predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraBlue,tag=strict] run fill ~ ~-6 ~9 ~1 ~-6 ~9 tnt[unstable=true] strict

#Yellow
execute unless predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraYellow,tag=!strict] run setblock ~ ~-4 ~-10 tnt
execute unless predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraYellow,tag=!strict] run fill ~ ~-6 ~-10 ~-1 ~-6 ~-10 tnt
execute unless predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraYellow,tag=strict] run setblock ~ ~-4 ~-10 tnt strict
execute unless predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraYellow,tag=strict] run fill ~ ~-6 ~-10 ~-1 ~-6 ~-10 tnt strict

execute if predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraYellow,tag=!strict] run setblock ~ ~-4 ~-10 tnt[unstable=true]
execute if predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraYellow,tag=!strict] run fill ~ ~-6 ~-10 ~-1 ~-6 ~-10 tnt[unstable=true]
execute if predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraYellow,tag=strict] run setblock ~ ~-4 ~-10 tnt[unstable=true] strict
execute if predicate game:modifiers/unstable_tnt/on if entity @s[tag=hyperExtraYellow,tag=strict] run fill ~ ~-6 ~-10 ~-1 ~-6 ~-10 tnt[unstable=true] strict

kill