# Break when out of bounds
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/canopy_projectile/actions/break
execute on vehicle positioned as @s if predicate custom:in_void unless predicate custom:moving_up run return run function entities:type/canopy_projectile/actions/break
execute on vehicle positioned as @s unless predicate custom:insideborder run return run function entities:type/canopy_projectile/actions/break
execute on vehicle positioned as @s unless predicate custom:in_arena run return run function entities:type/canopy_projectile/actions/break

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/canopy_projectile/tick/early_impact

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Movement trail
execute if score @s entity.age matches 1.. if predicate custom:periodic_tick/3 run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~ ~ 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue unless predicate game:match_components/red_for_blue if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[0,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:match_components/red_for_blue if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0.5,0.5],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/none if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Deploy
execute if score @s entity.age matches 10.. on vehicle positioned as @s if predicate entities:canopy_can_be_deployed run return run function entities:type/canopy_projectile/actions/deploy
execute if score @s entity.age matches 60.. run return run function entities:type/canopy_projectile/actions/break
