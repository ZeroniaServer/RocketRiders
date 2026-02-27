# Break when out of bounds
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/icbm/actions/break
execute on vehicle positioned as @s if predicate custom:in_void unless predicate custom:moving_up run return run function entities:type/icbm/actions/break
execute on vehicle positioned as @s unless predicate custom:insideborder run return run function entities:type/icbm/actions/break
execute on vehicle positioned as @s unless predicate custom:in_arena run return run function entities:type/icbm/actions/break

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/icbm/actions/explode

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Movement trail
execute if score @s entity.age matches 2.. run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Explode after 1.5 seconds (1 second in Crusade mode)
execute unless predicate game:gamemode_components/decreased_icbm_flight_duration if score @s entity.age matches 30.. run return run function entities:type/icbm/actions/explode
execute if predicate game:gamemode_components/decreased_icbm_flight_duration if score @s entity.age matches 20.. run return run function entities:type/icbm/actions/explode
