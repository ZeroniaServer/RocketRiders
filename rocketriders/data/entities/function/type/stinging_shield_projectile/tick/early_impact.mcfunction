# Kill body
execute on vehicle run kill @s[predicate=entities:type/stinging_shield_projectile/body]

## If impact_utilities is OFF
execute unless predicate game:game_rules/impact_utilities/on unless predicate {condition:"minecraft:entity_scores",entity:"this",scores:{entity.age:{min:{type:"minecraft:sum",summands:[-5,{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$stinging_shield_flight_duration"},score:"match_components"}]}}}} run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield hit the ground before it could deploy"}

## If impact_utilities is ON
# Prevent deployment when out of bounds
execute if predicate custom:near_void run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to the void"}
execute if entity @s[y=175,dy=100] run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to the roof"}
execute positioned as @s if predicate custom:location/touching_or_beyond_world_border run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to the world border"}

execute at @s positioned ~ ~2 ~ unless predicate entities:stinging_shield_can_be_deployed positioned as @s run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy"}
execute at @s positioned ~ ~2 ~ if function custom:location/is_near_flag_base positioned as @s run return run function entities:type/stinging_shield_projectile/actions/break_with_reason {message:"Stinging Shield failed to deploy; it was too close to a flag"}
execute at @s run tp ~ ~2 ~

# Re-initialise as a "stinging_shield" entity
data remove entity @s data.stinging_shield_projectile
execute at @s run function entities:type/stinging_shield/init
