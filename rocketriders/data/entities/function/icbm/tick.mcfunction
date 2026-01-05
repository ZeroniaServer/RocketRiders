# Break if near the roof
execute if predicate custom:near_or_above_roof run return run function entities:icbm/actions/break

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# If snowball hits something, explode
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:icbm/actions/explode

# Movement trail
execute if score @s entity.age matches 2.. run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Explode after 1.5 seconds (1 second in Crusade mode)
execute unless predicate game:gamemode_components/decreased_icbm_flight_duration if score @s entity.age matches 30.. run return run function entities:icbm/actions/explode
execute if predicate game:gamemode_components/decreased_icbm_flight_duration if score @s entity.age matches 20.. run return run function entities:icbm/actions/explode
