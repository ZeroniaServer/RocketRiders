# Kill body
execute on vehicle run kill @s[predicate=entities:type/stinging_shield_projectile/body]

## If impact_utilities is OFF
execute unless predicate game:game_rules/impact_utilities/on unless predicate {condition:"minecraft:entity_scores",entity:"this",scores:{entity.age:{min:{type:"minecraft:sum",summands:[-5,{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$stinging_shield_flight_duration"},score:"match_components"}]}}}} run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield hit the ground before it could deploy"}

## If impact_utilities is ON
execute at @s run tp ~ ~2 ~

execute positioned as @s if predicate custom:near_void run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to the void"}
execute positioned as @s if predicate custom:near_any_spawn_zone run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to a spawnpoint"}
execute positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to the roof"}
execute positioned as @s if predicate entities:stinging_shield_blocked_by_portal unless predicate game:game_rules/snipe_portals/on run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to a portal"}
execute positioned as @s if predicate entities:stinging_shield_blocked_by_portal if predicate game:game_rules/snipe_portals/on run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to your own portal"}
execute positioned as @s if function custom:location/is_near_flag_base positioned as @s run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to a flag"}
execute positioned as @s unless predicate entities:stinging_shield_can_be_deployed run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy"}

# Deploy
execute positioned as @s run function entities:type/stinging_shield_projectile/actions/deploy
