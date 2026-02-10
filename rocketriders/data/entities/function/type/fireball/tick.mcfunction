# Tick age while moving
execute on vehicle if predicate custom:is_moving on passengers if entity @s[predicate=entities:type/fireball/brain] run scoreboard players add @s entity.age 1

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/fireball/tick/impact

# Movement trail
execute if predicate custom:periodic_tick/3 on vehicle positioned as @s if predicate custom:is_moving run function entities:type/fireball/tick/particle

# Ambient sounds
execute if predicate custom:periodic_tick/20 on vehicle positioned as @s run playsound minecraft:block.fire.ambient master @a[distance=..3] ~ ~ ~ 0.5 1 0.1

# Die when out of bounds
execute on vehicle positioned as @s if predicate custom:nearvoid run return run function entities:type/fireball/actions/break
execute on vehicle positioned as @s unless predicate custom:insideborder run return run function entities:type/fireball/actions/break
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/fireball/actions/break
execute on vehicle positioned as @s if predicate custom:in_void run return run function entities:type/fireball/actions/break

#Fireballs poof Canopies
execute on vehicle positioned as @s if predicate custom:is_moving on passengers if entity @s[predicate=entities:type/fireball/brain] run function entities:type/fireball/tick/try_poof

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

# Cluster splitting
execute on vehicle if entity @s[tag=Cluster,tag=!cluster_fireball.child] if predicate custom:is_moving on passengers if entity @s[predicate=entities:type/fireball/brain] run scoreboard players add @s cluster_fireball.time 1
execute if entity @s[tag=!cluster_fireball.child,scores={cluster_fireball.time=7}] on vehicle positioned as @s run function entities:type/fireball/tick/cluster/split
