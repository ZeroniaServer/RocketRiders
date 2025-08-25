execute store success score $chickens_were_spawned var if entity @e[limit=1,distance=..2,type=chicken,predicate=custom:is_baby]
execute if score $chickens_were_spawned var matches 1 as @e[distance=..2,type=chicken,predicate=custom:is_baby] run function custom:kill_mob_discretely

execute unless predicate entities:vortex_can_be_deployed run return run function entities:vortex_projectile/actions/break

execute if predicate game:game_rules/impact_utilities/on run return run function entities:vortex_projectile/actions/deploy

# Chance of creating a feathered vortex if chickens were spawned
execute if score $chickens_were_spawned var matches 0 run return run function entities:vortex_projectile/actions/break
execute align xyz if entity @e[limit=1,dx=0,predicate=entities:type/vortex/brain] run return run function entities:vortex_projectile/actions/break
execute unless predicate {condition:"minecraft:random_chance",chance:0.5} run return run function entities:vortex_projectile/actions/break
tag @s add vortex.feathered
function entities:vortex_projectile/actions/deploy
