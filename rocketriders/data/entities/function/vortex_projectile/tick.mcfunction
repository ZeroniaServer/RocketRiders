# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:vortex_projectile/tick/early_impact

# Movement trail
execute if score @s entity.age matches 1.. if predicate custom:periodic_tick/3 run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/none if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Deploy
execute if score @s entity.age matches 20.. on vehicle positioned as @s if predicate entities:vortex_can_be_deployed align xyz unless entity @e[limit=1,dx=0,predicate=entities:type/vortex/body] on passengers if entity @s[predicate=entities:type/vortex_projectile/brain] run function entities:vortex_projectile/actions/deploy
