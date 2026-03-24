execute if entity @s[tag=nova_rocket.killed] on vehicle run kill @s
execute if entity @s[tag=nova_rocket.killed] run return run kill @s

# Break when out of bounds
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/nova_rocket/actions/break
execute on vehicle positioned as @s if predicate custom:in_void unless predicate custom:moving_up run return run function entities:type/nova_rocket/actions/break
execute on vehicle positioned as @s unless predicate custom:insideborder run return run function entities:type/nova_rocket/actions/break
execute on vehicle positioned as @s unless predicate custom:in_arena run return run function entities:type/nova_rocket/actions/break

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/nova_rocket/actions/explode

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Collision impact
scoreboard players set $collision var 0
execute if predicate entities:origin_team/blue on vehicle positioned as @s as @n[distance=..2,predicate=entities:type/nova_rocket/body,predicate=entities:origin_team/yellow] facing entity @s feet run function entities:type/nova_rocket/tick/collision
execute if predicate entities:origin_team/yellow on vehicle positioned as @s as @n[distance=..2,predicate=entities:type/nova_rocket/body,predicate=entities:origin_team/blue] facing entity @s feet run function entities:type/nova_rocket/tick/collision
execute if predicate entities:origin_team/none on vehicle run tag @s add nova_rocket.this
execute if predicate entities:origin_team/none on vehicle positioned as @s as @n[distance=..2,predicate=entities:type/nova_rocket/body,tag=!nova_rocket.this] facing entity @s feet run function entities:type/nova_rocket/tick/collision
tag @s remove nova_rocket.this
execute if score $collision var matches 1 on vehicle run kill @s
execute if score $collision var matches 1 run return run kill @s

# Chase Crystal Collision
execute if entity @e[limit=1,distance=..3,type=armor_stand,tag=ChaseCrystal] run return run function entities:type/nova_rocket/tick/chase_crystal_collision

# Movement trail
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/blue on vehicle positioned as @s run particle minecraft:falling_dust{block_state:"minecraft:lapis_block"} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/any_red_skin on vehicle positioned as @s run particle minecraft:falling_dust{block_state:"minecraft:redstone_block"} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow on vehicle positioned as @s run particle minecraft:falling_dust{block_state:"minecraft:gold_block"} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green on vehicle positioned as @s run particle minecraft:falling_dust{block_state:"minecraft:emerald_block"} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/none on vehicle positioned as @s run particle minecraft:falling_dust{block_state:"minecraft:white_concrete"} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Large ball after 10 ticks
execute if score @s entity.age matches 10 on vehicle run data modify entity @s FireworksItem.components.minecraft:fireworks.explosions[].shape set value "large_ball"

# Explode
execute if score @s entity.age matches 30.. run function entities:type/nova_rocket/actions/explode
