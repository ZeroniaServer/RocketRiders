# Increment age for entities
scoreboard players add @e[x=0,predicate=entities:do_age] entity.age 1

## Initialise new entities
execute as @e[x=0,type=ender_pearl,predicate=!entities:type/canopy_projectile] at @s run function entities:canopy_projectile/init
execute as @e[x=0,type=snowball,predicate=!entities:type/shield_projectile,predicate=!entities:type/stinging_shield_projectile,nbt=!{Item:{components:{"minecraft:custom_data":{stinging_shield:1b}}}}] at @s run function entities:shield_projectile/init
execute as @e[x=0,type=snowball,predicate=!entities:type/shield_projectile,predicate=!entities:type/stinging_shield_projectile,nbt={Item:{components:{"minecraft:custom_data":{stinging_shield:1b}}}}] at @s run function entities:stinging_shield_projectile/init
execute as @e[x=0,type=egg,predicate=!entities:type/vortex_projectile,predicate=!entities:type/icbm,nbt=!{Item:{components:{"minecraft:custom_data":{icbm:1b}}}}] at @s run function entities:vortex_projectile/init
execute as @e[x=0,type=egg,predicate=!entities:type/vortex_projectile,predicate=!entities:type/icbm,nbt={Item:{components:{"minecraft:custom_data":{icbm:1b}}}}] at @s run function entities:icbm/init
execute if predicate game:modifiers/punchable_tnt/on as @e[x=0,type=tnt,predicate=!entities:punchable_tnt] at @s run function entities:punchable_tnt/init

## Tick entities
# Canopy
execute as @e[x=0,predicate=entities:type/canopy_projectile/brain] at @s run function entities:canopy_projectile/tick
execute as @e[x=0,predicate=entities:type/canopy] at @s run function entities:canopy/tick

# Shield
execute as @e[x=0,predicate=entities:type/shield_projectile/brain] at @s run function entities:shield_projectile/tick
execute as @e[x=0,predicate=entities:type/shield] at @s run function entities:shield/tick

# Stinging Shield
execute as @e[x=0,predicate=entities:type/stinging_shield_projectile/brain] at @s run function entities:stinging_shield_projectile/tick
execute as @e[x=0,predicate=entities:type/stinging_shield] at @s run function entities:stinging_shield/tick

# Vortex
execute as @e[x=0,predicate=entities:type/vortex_projectile/brain] at @s run function entities:vortex_projectile/tick
scoreboard players remove @e[x=0,predicate=entities:type/vortex/brain,scores={entity.vortex.fuse=1..}] entity.vortex.fuse 1
execute as @e[x=0,predicate=entities:type/vortex/brain] at @s run function entities:vortex/tick

# Vortex Decoy (lobby)
execute as @e[x=0,predicate=entities:type/vortex_decoy] at @s run function entities:vortex_decoy/tick

# ICBM
execute as @e[x=0,predicate=entities:type/icbm/brain] at @s run function entities:icbm/tick

# Punchable TNT
execute if predicate game:modifiers/punchable_tnt/on as @e[x=0,predicate=entities:type/punchable_tnt/brain,scores={entity.age=0..}] run function entities:punchable_tnt/actions/kill
