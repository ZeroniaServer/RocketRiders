# Break when out of bounds
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/icbm/actions/break_with_reason {message:"ICBM failed to deploy; it was too close to the roof"}
execute on vehicle positioned as @s if predicate custom:in_void unless predicate custom:entity/is_moving_upwards run return run function entities:type/icbm/actions/break_with_reason {message:"ICBM failed to deploy; it was too close to the void"}
execute on vehicle positioned as @s if predicate custom:location/touching_or_beyond_world_border run return run function entities:type/icbm/actions/break_with_reason {message:"ICBM failed to deploy; it was too close to the world border"}
execute on vehicle positioned as @s unless predicate custom:in_arena run return run function entities:type/icbm/actions/break_with_reason {message:"ICBM failed to deploy; it left the arena"}

# Early impact
execute unless predicate custom:entity/has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/icbm/actions/explode

# Store the rotation and speed of vehicle
execute if predicate custom:entity/has_vehicle run function custom:projectile_motion_save

# Movement trail
execute if score @s entity.age matches 2.. run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Explode after flight duration
execute if score @s entity.age >= $icbm_flight_duration match_components run return run function entities:type/icbm/actions/explode
