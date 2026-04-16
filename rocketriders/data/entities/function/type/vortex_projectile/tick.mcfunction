# Break when out of bounds
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/vortex_projectile/actions/break
execute on vehicle positioned as @s if predicate custom:in_void unless predicate custom:moving_up run return run function entities:type/vortex_projectile/actions/break
execute on vehicle positioned as @s unless predicate custom:insideborder run return run function entities:type/vortex_projectile/actions/break
execute on vehicle positioned as @s unless predicate custom:in_arena run return run function entities:type/vortex_projectile/actions/break

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/vortex_projectile/tick/early_impact

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Movement trail
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/blue run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/any_red_skin run particle minecraft:dust{color:0xDC2828,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green run particle minecraft:dust{color:0x3DC210,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/none run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Deploy
execute if score @s entity.age matches 20.. on vehicle positioned as @s if predicate entities:vortex_can_be_deployed unless function custom:location/is_near_flag_base align xyz unless entity @e[limit=1,dx=0,predicate=entities:type/vortex/body] on passengers if entity @s[predicate=entities:type/vortex_projectile/brain] run return run function entities:type/vortex_projectile/actions/deploy
execute if score @s entity.age matches 60.. run return run function entities:type/vortex_projectile/actions/break
