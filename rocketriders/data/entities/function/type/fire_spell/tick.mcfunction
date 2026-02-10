# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/fire_spell/tick/impact

# Break near spawn zones
scoreboard players set $team var -1
execute on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches 0 if predicate custom:near_any_spawn_zone_lenient if predicate custom:on_yellow_half run return run function entities:type/fire_spell/actions/break
execute if score $team var matches 1 if predicate custom:near_any_spawn_zone_lenient if predicate custom:on_blue_half run return run function entities:type/fire_spell/actions/break
execute if score $team var matches -1 if predicate custom:near_any_spawn_zone_lenient run return run function entities:type/fire_spell/actions/break
