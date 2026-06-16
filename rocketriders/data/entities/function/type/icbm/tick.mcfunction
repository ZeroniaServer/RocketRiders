# Break when out of bounds
execute on vehicle positioned as @s if function entities:type/icbm/tick/check_passive_break run return 0

# Early impact
execute unless predicate custom:entity/has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/icbm/actions/explode

# Store the rotation and speed of vehicle
execute if predicate custom:entity/has_vehicle run function custom:projectile_motion_save

# Movement trail
execute if score @s entity.age matches 2.. run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Explode after flight duration
execute if score @s entity.age >= $icbm_flight_duration match_components run return run function entities:type/icbm/actions/explode
