execute unless entity @s[predicate=entities:type/canopy] run return fail

execute at @s run function entities:canopy/actions/kill
execute at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 air replace #leaves

execute at @s run particle minecraft:cloud ~ ~1.5 ~ 2 0.5 2 0.1 50
execute at @s run particle minecraft:explosion_emitter