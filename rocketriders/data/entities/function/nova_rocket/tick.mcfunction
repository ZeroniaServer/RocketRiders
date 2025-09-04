execute if entity @s[tag=nova_rocket.killed] on vehicle run kill @s
execute if entity @s[tag=nova_rocket.killed] run return run kill @s

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

## Kill in invalid areas
execute if predicate custom:above_roof run return run function entities:nova_rocket/actions/break
execute if predicate custom:in_void run return run function entities:nova_rocket/actions/break
execute unless predicate custom:insideborder run return run function entities:nova_rocket/actions/break

# Early impact
#execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:nova_rocket/actions/explode
execute unless predicate custom:has_vehicle positioned as @s run return run function entities:nova_rocket/actions/explode

# Collision impact
scoreboard players set $collision var 0
execute if predicate entities:origin_team/blue on vehicle positioned as @s as @n[distance=..2,predicate=entities:type/nova_rocket/body,predicate=entities:origin_team/yellow] facing entity @s feet run function entities:nova_rocket/tick/collision
execute if predicate entities:origin_team/yellow on vehicle positioned as @s as @n[distance=..2,predicate=entities:type/nova_rocket/body,predicate=entities:origin_team/blue] facing entity @s feet run function entities:nova_rocket/tick/collision
execute if predicate entities:origin_team/none on vehicle run tag @s add nova_rocket.this
execute if predicate entities:origin_team/none on vehicle positioned as @s as @n[distance=..2,predicate=entities:type/nova_rocket/body,tag=!nova_rocket.this] facing entity @s feet run function entities:nova_rocket/tick/collision
tag @s remove nova_rocket.this
execute if score $collision var matches 1 on vehicle run kill @s
execute if score $collision var matches 1 run return run kill @s

# Movement trail
execute if score $dust CmdData matches 1 if score @s entity.age matches 1.. if predicate entities:origin_team/blue on vehicle positioned as @s run particle minecraft:falling_dust{block_state:"minecraft:lapis_block"} ~ ~0.2 ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 if score @s entity.age matches 1.. if predicate entities:origin_team/yellow on vehicle positioned as @s run particle minecraft:falling_dust{block_state:"minecraft:gold_block"} ~ ~0.2 ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 if score @s entity.age matches 1.. if predicate entities:origin_team/none on vehicle positioned as @s run particle minecraft:falling_dust{block_state:"minecraft:white_concrete"} ~ ~0.2 ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Large ball after 10 ticks
execute if score @s entity.age matches 10 on vehicle run data modify entity @s FireworksItem.components.minecraft:fireworks.explosions[].shape set value "large_ball"

# Explode
execute if score @s entity.age matches 30.. run function entities:nova_rocket/actions/explode
