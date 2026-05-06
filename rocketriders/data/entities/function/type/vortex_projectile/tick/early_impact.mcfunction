execute positioned as @s unless block ~ ~ ~ #custom:vortices_ignore run function entities:type/vortex_projectile/tick/early_impact/move_out_of_block

execute positioned as @s unless predicate entities:vortex_can_be_deployed run return run function entities:type/vortex_projectile/actions/break_with_reason {message:"Vortex failed to deploy"}
execute positioned as @s if function custom:location/is_near_flag_base run return run function entities:type/vortex_projectile/actions/break_with_reason {message:"Vortex failed to deploy; it was too close to a flag"}

execute positioned as @s unless predicate game:game_rules/impact_utilities/on if predicate {condition:"minecraft:entity_scores",entity:"this",scores:{entity.age:{min:{type:"minecraft:sum",summands:[-5,{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$vortex_flight_duration"},score:"match_components"}]}}}} run return run function entities:type/vortex_projectile/actions/deploy
execute positioned as @s if predicate game:game_rules/impact_utilities/on run return run function entities:type/vortex_projectile/actions/deploy

# 6.25% chance of creating a feathered vortex landmine
execute positioned as @s if predicate game:match_components/no_feathered_vortices run return run function entities:type/vortex_projectile/actions/break_with_reason {message:"Vortex hit the ground before it could deploy"}
execute positioned as @s unless predicate {condition:"minecraft:random_chance",chance:0.0625} run return run function entities:type/vortex_projectile/actions/break_with_reason {message:"Vortex hit the ground before it could deploy"}
execute positioned as @s if entity @e[limit=1,distance=..1.5,tag=vortex.feathered,predicate=entities:type/vortex/brain,predicate=!entities:vortex_has_max_arms] run return run function entities:type/vortex_projectile/actions/deploy
execute positioned as @s align xyz if entity @e[limit=1,dx=0,predicate=entities:type/vortex/brain] run return run function entities:type/vortex_projectile/actions/break_with_reason {message:"Vortex hit the ground before it could deploy"}
tag @s add vortex.feathered
execute positioned as @s run function entities:type/vortex_projectile/actions/deploy
