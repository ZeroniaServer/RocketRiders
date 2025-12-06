# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Deflect projectiles
execute rotated as @s if function entities:wind_spell/tick/check_deflect_projectile run return run function entities:wind_spell/actions/break

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:wind_spell/tick/impact
