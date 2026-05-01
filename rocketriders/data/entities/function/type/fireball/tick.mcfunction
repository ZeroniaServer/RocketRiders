# Break when out of bounds
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/fireball/actions/break
execute on vehicle positioned as @s if predicate custom:in_void unless predicate custom:entity/is_moving_upwards run return run function entities:type/fireball/actions/break
execute on vehicle positioned as @s if predicate custom:location/touching_or_beyond_world_border run return run function entities:type/fireball/actions/break
execute on vehicle positioned as @s unless predicate custom:in_arena run return run function entities:type/fireball/actions/break

# Break when near an enemy spawn point
execute if predicate entities:origin_team/blue on vehicle positioned as @s if predicate custom:near_any_spawn_zone if predicate custom:in_yellow_half run return run function entities:type/fireball/actions/break
execute if predicate entities:origin_team/yellow on vehicle positioned as @s if predicate custom:near_any_spawn_zone if predicate custom:in_blue_half run return run function entities:type/fireball/actions/break
execute if predicate entities:origin_team/none on vehicle positioned as @s if predicate custom:near_any_spawn_zone run return run function entities:type/fireball/actions/break

# Freeze when moving too slowly
execute if predicate custom:entity/vehicle_is_moving on vehicle if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:movement":{speed:{max:0.01}}}} run data modify entity @s Motion set value [0,0,0]

# Tick age while moving
execute unless predicate custom:entity/fireball_min_speed run scoreboard players set @s entity.fireball.time_since_punched 0
execute if predicate custom:entity/fireball_min_speed run scoreboard players add @s entity.fireball.time_since_punched 1

# Early impact
execute unless predicate custom:entity/has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/fireball/tick/impact

# Water interaction
execute if predicate game:feature_flags/geysers/on run scoreboard players set $geyser var 1
execute if predicate game:feature_flags/geysers/on unless predicate custom:entity/is_touching_water unless block ~-0.5 ~-0.5 ~-0.5 water unless block ~-0.5 ~-0.5 ~0.5 water unless block ~0.5 ~-0.5 ~-0.5 water unless block ~0.5 ~-0.5 ~0.5 water unless block ~-0.5 ~0.5 ~-0.5 water unless block ~-0.5 ~0.5 ~0.5 water unless block ~0.5 ~0.5 ~-0.5 water unless block ~0.5 ~0.5 ~0.5 water run scoreboard players set $geyser var 0
execute if predicate game:feature_flags/geysers/on if score $geyser var matches 1 on vehicle positioned as @s run return run function entities:type/fireball/tick/geyser

# Store the rotation and speed of vehicle
execute if predicate custom:entity/has_vehicle run function custom:projectile_motion_save

# Movement trail
execute if predicate custom:periodic_tick/3 on vehicle positioned as @s if predicate custom:entity/is_moving run function entities:type/fireball/tick/particle

# Ambient sounds
execute if predicate custom:coin_flip if predicate custom:coin_flip run scoreboard players add @s entity.fireball.ambient_noise_timer 1
execute if score @s entity.fireball.ambient_noise_timer matches 20.. on vehicle positioned as @s run playsound minecraft:block.fire.ambient master @a[distance=..6] ~ ~ ~ 0.45 0 0.1
execute if score @s entity.fireball.ambient_noise_timer matches 20.. run scoreboard players set @s entity.fireball.ambient_noise_timer 0

#Fireballs poof Canopies
execute if predicate custom:entity/vehicle_is_moving on vehicle positioned as @s run function entities:type/fireball/tick/try_poof

#Disable fireballs near portals (depends on Snipe Portals game rule)
execute if predicate game:portal_type/default unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on on vehicle positioned as @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data modify entity @s ExplosionPower set value 1
execute if predicate game:portal_type/default unless predicate game:modifiers/explosive/on if predicate game:modifiers/clutter_collector/on on vehicle positioned as @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data modify entity @s ExplosionPower set value 0
execute if predicate game:portal_type/default unless predicate game:game_rules/snipe_portals/on on vehicle positioned as @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data modify entity @s ExplosionPower set value 0
execute if predicate game:portal_type/default unless predicate game:game_rules/snipe_portals/on on vehicle positioned as @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data modify entity @s ExplosionPower set value 0
execute if predicate game:portal_type/small if predicate game:blue_portal_revealed unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on on vehicle positioned as @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data modify entity @s ExplosionPower set value 1
execute if predicate game:portal_type/small if predicate game:yellow_portal_revealed unless predicate game:modifiers/explosive/on if predicate game:modifiers/clutter_collector/on on vehicle positioned as @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data modify entity @s ExplosionPower set value 0
execute if predicate game:portal_type/small if predicate game:yellow_portal_revealed unless predicate game:game_rules/snipe_portals/on on vehicle positioned as @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data modify entity @s ExplosionPower set value 0
execute if predicate game:portal_type/small if predicate game:blue_portal_revealed unless predicate game:game_rules/snipe_portals/on on vehicle positioned as @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data modify entity @s ExplosionPower set value 0
#Exception for own portal
execute if predicate game:portal_type/default if predicate entities:origin_team/yellow on vehicle positioned as @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data modify entity @s ExplosionPower set value 0
execute if predicate game:portal_type/default if predicate entities:origin_team/blue on vehicle positioned as @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data modify entity @s ExplosionPower set value 0
execute if predicate game:portal_type/small if predicate entities:origin_team/yellow if predicate game:yellow_portal_revealed on vehicle positioned as @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data modify entity @s ExplosionPower set value 0
execute if predicate game:portal_type/small if predicate entities:origin_team/blue if predicate game:blue_portal_revealed on vehicle positioned as @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data modify entity @s ExplosionPower set value 0

# Copy origin player
data remove storage rocketriders:main fireball.origin
execute on origin run tag @s add fireball.current_origin
execute on vehicle on origin unless entity @s[tag=fireball.current_origin] run data modify storage rocketriders:main fireball.origin set from entity @s UUID
execute on origin run tag @s remove fireball.current_origin
execute if data storage rocketriders:main fireball.origin run data modify entity @s Owner set from storage rocketriders:main fireball.origin

# Split after use
execute if predicate entities:fireball/split_after_use if score @s entity.fireball.time_since_punched matches 7.. on vehicle positioned as @s run function entities:type/fireball/tick/split_after_use/split
