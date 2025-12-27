execute store success score $chickens_were_spawned var if entity @e[limit=1,distance=..2,type=chicken,predicate=custom:is_baby]
execute if score $chickens_were_spawned var matches 1 as @e[distance=..2,type=chicken,predicate=custom:is_baby] run function custom:kill_mob_discretely

execute positioned as @s unless block ~ ~ ~ #custom:vortices_ignore run function entities:vortex_projectile/tick/early_impact/move_out_of_block
execute positioned as @s unless predicate entities:vortex_can_be_deployed run return run function entities:vortex_projectile/actions/break

execute positioned as @s if predicate game:game_rules/impact_utilities/on run return run function entities:vortex_projectile/tick/early_impact/deploy

# Chance of creating a feathered vortex if chickens were spawned
execute positioned as @s if predicate game:gamemode_components/no_feathered_vortices run return run function entities:vortex_projectile/actions/break
execute positioned as @s if score $chickens_were_spawned var matches 0 run return run function entities:vortex_projectile/actions/break
execute positioned as @s if entity @e[limit=1,distance=..1.5,tag=vortex.feathered,predicate=entities:type/vortex/brain,predicate=!entities:vortex_has_max_arms] run return run function entities:vortex_projectile/actions/deploy
execute positioned as @s align xyz if entity @e[limit=1,dx=0,predicate=entities:type/vortex/brain] run return run function entities:vortex_projectile/actions/break
execute positioned as @s unless predicate {condition:"minecraft:random_chance",chance:0.5} run return run function entities:vortex_projectile/actions/break
tag @s add vortex.feathered
execute positioned as @s run function entities:vortex_projectile/actions/deploy
