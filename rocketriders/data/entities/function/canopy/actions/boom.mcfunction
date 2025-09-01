# Redirect function to the brain
execute unless entity @s[predicate=entities:type/canopy/brain] run return run execute on vehicle if entity @s[predicate=entities:type/canopy/brain] positioned as @s run return run function entities:canopy/actions/kill

execute at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 air replace #leaves
execute at @s run particle minecraft:cloud ~ ~1.5 ~ 2 0.5 2 0.1 50
execute at @s run particle minecraft:explosion_emitter

function entities:canopy/actions/kill
