# Redirect function to the brain
execute unless entity @s[predicate=entities:type/canopy/brain] run return run execute on vehicle if entity @s[predicate=entities:type/canopy/brain] positioned as @s run return run function entities:canopy/actions/poof

function entities:canopy/execute_as_passengers {run:"damage @s[tag=nova_rocket.enemy_canopy_occupant] 1000000 player_explosion by @e[limit=1,type=creeper,tag=explosion,tag=!old_explosion]"}
execute at @s positioned ~ ~2 ~ as @e[limit=1,tag=nova_rocket.explode.this,predicate=entities:type/nova_rocket] run function entities:nova_rocket/actions/firework_large

execute at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 air replace #leaves
execute at @s positioned ~ ~2 ~ run particle minecraft:cloud ~ ~1.5 ~ 2 0.5 2 0.1 50
execute at @s run particle minecraft:explosion_emitter
execute at @s positioned ~ ~2 ~ run particle minecraft:explosion_emitter

function entities:canopy/actions/kill
