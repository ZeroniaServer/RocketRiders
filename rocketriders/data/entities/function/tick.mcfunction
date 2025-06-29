# Increment age for entities
scoreboard players add @e[x=0,predicate=entities:do_age] entity.age 1

## Initialise new entities
execute as @e[x=0,type=ender_pearl,predicate=!entities:canopy_projectile] at @s run function entities:canopy_projectile/init
execute as @e[x=0,type=snowball,predicate=!entities:shield_projectile,tag=!BeeShieldDisplay,nbt=!{Item:{components:{"minecraft:custom_data":{BeeShield:1b}}}}] at @s run function entities:shield_projectile/init
execute as @e[x=0,type=egg,predicate=!entities:vortex_projectile,nbt=!{Item:{components:{"minecraft:custom_data":{icbm:1b}}}}] at @s run function entities:vortex_projectile/init
execute as @e[x=0,type=egg,predicate=!entities:icbm,nbt={Item:{components:{"minecraft:custom_data":{icbm:1b}}}}] at @s run function entities:icbm/init

## Tick entities
# Canopy
execute as @e[x=0,predicate=entities:canopy_projectile/brain] at @s run function entities:canopy_projectile/tick
execute as @e[x=0,predicate=entities:canopy] at @s run function entities:canopy/tick

# Shield
execute as @e[x=0,predicate=entities:shield_projectile/brain] at @s run function entities:shield_projectile/tick
execute as @e[x=0,predicate=entities:shield] at @s run function entities:shield/tick

# Vortex
execute as @e[x=0,predicate=entities:vortex_projectile/brain] at @s run function entities:vortex_projectile/tick
scoreboard players remove @e[x=0,predicate=entities:vortex/brain,scores={entity.vortex.fuse=1..}] entity.vortex.fuse 1
execute as @e[x=0,predicate=entities:vortex/brain] at @s run function entities:vortex/tick

# Vortex Decoy (lobby)
execute as @e[x=0,predicate=entities:vortex_decoy] at @s run function entities:vortex_decoy/tick

# ICBM
execute as @e[x=0,predicate=entities:icbm/brain] at @s run function entities:icbm/tick
