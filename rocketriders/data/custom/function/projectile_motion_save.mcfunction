tag @s add store_projectile_motion.this
# Used geometry trick by ajaxgb to independently mirror yaw and pitch around the z-axis to account for projectile entity rotation not visually matching its movement direction.
execute on vehicle rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 on passengers run rotate @s[tag=store_projectile_motion.this] ~ ~
tag @s remove store_projectile_motion.this

execute store result score @s entity.speed on vehicle run function custom:entity/get_speed
