# Break if near the roof
execute if predicate custom:near_or_above_roof run return run function entities:icbm/actions/break

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# If egg hits something, explode
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:icbm/tick/check_for_chicken

# Movement trail
execute if score @s entity.age matches 2.. run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Explode after one second
execute if score @s entity.age matches 20.. run function entities:icbm/actions/explode
