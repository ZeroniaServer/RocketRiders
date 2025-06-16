# Increment age for entities
scoreboard players add @e[x=0,predicate=entities:do_age] entity.age 1

# Initialise new entities
execute as @e[x=0,type=ender_pearl,predicate=!entities:canopy_projectile] at @s run function entities:canopy_projectile/init

# Tick entities
execute as @e[x=0,predicate=entities:canopy_projectile/brain] at @s run function entities:canopy_projectile/tick
execute as @e[x=0,predicate=entities:canopy] at @s run function entities:canopy/tick
