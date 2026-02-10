execute at @s run particle minecraft:explosion
execute at @s run playsound minecraft:entity.generic.explode player @a[predicate=custom:in_arena] ~ ~ ~

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/fire_spell]
execute on passengers run kill @s[predicate=entities:type/fire_spell]
kill @s[predicate=entities:type/fire_spell]
