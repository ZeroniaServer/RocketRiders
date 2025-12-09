# Break if near the roof
execute if predicate custom:near_or_above_roof run return run function entities:shield_projectile/actions/break

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:shield_projectile/tick/early_impact

# Movement trail
execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue unless predicate game:gamemode_components/red_for_blue if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[0,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:gamemode_components/red_for_blue if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0.5,0.5],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/none if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Deploy
execute if score @s entity.age matches 20.. on vehicle positioned as @s if predicate entities:shield_can_be_deployed run function entities:shield_projectile/actions/deploy
