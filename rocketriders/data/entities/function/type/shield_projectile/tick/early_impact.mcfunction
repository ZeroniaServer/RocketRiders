# Kill body
execute on vehicle run kill @s[predicate=entities:type/shield_projectile/body]

## If impact_utilities is OFF
execute unless predicate game:game_rules/impact_utilities/on unless predicate {condition:"minecraft:entity_scores",entity:"this",scores:{entity.age:{min:{type:"minecraft:sum",summands:[-5,{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$shield_flight_duration"},score:"match_components"}]}}}} run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield hit the ground before it could deploy"}

scoreboard players set $too_close var 0
#execute if score $too_close var matches 0 if score @s entity.age matches ..6 on origin positioned ~ ~-1.5 ~ if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{y:{max:2.5},horizontal:{max:3.5}}}} run scoreboard players set $too_close var 1
execute if score $too_close var matches 0 if score @s entity.age matches ..6 on origin if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{y:{max:4},horizontal:{max:8}}}} if predicate custom:location/near_canopy_block run scoreboard players set $too_close var 1
execute if score $too_close var matches 1 run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield hit the ground too close to a Canopy"}

## If impact_utilities is ON
execute if predicate custom:near_void run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield failed to deploy; it was too close to the void"}
execute if predicate custom:near_any_spawn_zone run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield failed to deploy; it was too close to a spawnpoint"}
execute if predicate custom:near_or_above_roof run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield failed to deploy; it was too close to the roof"}
execute if predicate entities:shield_blocked_by_portal unless predicate game:game_rules/snipe_portals/on run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield failed to deploy; it was too close to a portal"}
execute if predicate entities:shield_blocked_by_portal if predicate game:game_rules/snipe_portals/on run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield failed to deploy; it was too close to your own portal"}
execute if function custom:location/is_near_flag_base run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield failed to deploy; it was too close to a flag"}
execute unless predicate entities:shield_can_be_deployed run return run function entities:type/shield_projectile/actions/break_with_reason {message:"Shield failed to deploy"}

# Deploy
function entities:type/shield_projectile/actions/deploy
