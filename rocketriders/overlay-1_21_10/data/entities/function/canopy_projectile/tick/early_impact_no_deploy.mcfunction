kill @s

gamerule freezeDamage true
execute unless predicate game:modifiers/no_fall_damage/on on origin run damage @s 5 minecraft:ender_pearl
gamerule freezeDamage false
