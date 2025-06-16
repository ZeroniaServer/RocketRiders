# Increment age for entities
scoreboard players add @e[x=0,predicate=entities:do_age] entity.age 1

# Initialise new entities
execute as @e[x=0,type=ender_pearl,predicate=!entities:canopy_projectile] at @s run function entities:canopy_projectile/init
execute as @e[x=0,type=snowball,predicate=!entities:shield_projectile,tag=!BeeShieldDisplay,nbt=!{Item:{components:{"minecraft:custom_data":{BeeShield:1b}}}}] at @s run function entities:shield_projectile/init

# Tick entities
execute as @e[x=0,predicate=entities:canopy_projectile/brain] at @s run function entities:canopy_projectile/tick
execute as @e[x=0,predicate=entities:canopy] at @s run function entities:canopy/tick
execute as @e[x=0,predicate=entities:shield_projectile/brain] at @s run function entities:shield_projectile/tick
execute as @e[x=0,predicate=entities:shield] at @s run function entities:shield/tick
