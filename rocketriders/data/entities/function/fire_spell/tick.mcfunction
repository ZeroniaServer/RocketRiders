# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:fire_spell/tick/impact

# Break near spawn zones
execute if predicate custom:near_any_spawn_zone_lenient if predicate entities:origin_team/blue if predicate custom:on_yellow_half run return run function entities:fire_spell/actions/break
execute if predicate custom:near_any_spawn_zone_lenient if predicate entities:origin_team/yellow if predicate custom:on_blue_half run return run function entities:fire_spell/actions/break
execute if predicate custom:near_any_spawn_zone_lenient if predicate entities:origin_team/none run return run function entities:fire_spell/actions/break
