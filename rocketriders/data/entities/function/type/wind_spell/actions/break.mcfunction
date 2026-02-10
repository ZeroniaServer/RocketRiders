execute at @s run particle minecraft:gust_emitter_small
execute at @s run playsound minecraft:entity.wind_charge.wind_burst player @a[predicate=custom:in_arena] ~ ~ ~

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/wind_spell]
execute on passengers run kill @s[predicate=entities:type/wind_spell]
kill @s[predicate=entities:type/wind_spell]
