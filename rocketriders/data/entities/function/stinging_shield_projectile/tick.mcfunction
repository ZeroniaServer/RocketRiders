# Break if near the roof
execute if predicate custom:nearroof run return run function entities:stinging_shield_projectile/actions/break

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:stinging_shield_projectile/tick/early_impact

# Movement trail
execute if score @s entity.age matches 1.. run playsound minecraft:block.honey_block.slide master @a[x=0] ~ ~ ~ 2 0.8
execute if score @s entity.age matches 1.. if predicate custom:periodic_tick/3 run particle minecraft:block{block_state:{Name:"minecraft:honey_block"}} ~ ~ ~ 0 0 0 1 10

# Break when out of bounds
execute if predicate custom:nearvoid run return run function entities:stinging_shield_projectile/actions/break
execute if entity @s[y=175,dy=100] run return run function entities:stinging_shield_projectile/actions/break
execute unless predicate custom:insideborder run return run function entities:stinging_shield_projectile/actions/break

# Deploy
execute if score @s entity.age matches 20.. if predicate entities:stinging_shield_can_be_deployed run function entities:stinging_shield_projectile/actions/deploy
