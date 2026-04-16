
# Break when out of bounds
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/stinging_shield_projectile/actions/break
execute on vehicle positioned as @s if predicate custom:in_void unless predicate custom:moving_up run return run function entities:type/stinging_shield_projectile/actions/break
execute on vehicle positioned as @s unless predicate custom:insideborder run return run function entities:type/stinging_shield_projectile/actions/break
execute on vehicle positioned as @s unless predicate custom:in_arena run return run function entities:type/stinging_shield_projectile/actions/break

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/stinging_shield_projectile/tick/early_impact

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Movement trail
execute if score @s entity.age matches 1.. run playsound minecraft:block.honey_block.slide master @a[x=0] ~ ~ ~ 2 0.8
execute if score @s entity.age matches 1.. if predicate custom:periodic_tick/3 run particle minecraft:block{block_state:{Name:"minecraft:honey_block"}} ~ ~ ~ 0 0 0 1 10

# Deploy
execute if score @s entity.age matches 20.. on vehicle positioned as @s if predicate entities:stinging_shield_can_be_deployed unless function custom:location/is_near_flag_base run return run function entities:type/stinging_shield_projectile/actions/deploy
execute if score @s entity.age matches 60.. run return run function entities:type/stinging_shield_projectile/actions/break
