kill @s

gamerule minecraft:freeze_damage true
execute unless predicate game:modifiers/no_fall/on unless predicate game:modifiers/yes_fall/on on origin run damage @s 5 minecraft:ender_pearl
execute unless predicate game:modifiers/no_fall/on if predicate game:modifiers/yes_fall/on on origin run damage @s 10 minecraft:ender_pearl
gamerule minecraft:freeze_damage false
