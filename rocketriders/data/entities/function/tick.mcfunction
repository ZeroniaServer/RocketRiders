# Increment age for entities
scoreboard players add @e[x=0,predicate=entities:do_age] entity.age 1

## Initialise new entities
execute as @e[x=0,type=ender_pearl,predicate=!entities:type/canopy_projectile] at @s run function entities:canopy_projectile/init
execute as @e[x=0,type=snowball,predicate=!entities:type/shield_projectile,predicate=!entities:type/stinging_shield_projectile,nbt={Item:{components:{"minecraft:custom_data":{id:"shield"}}}}] at @s run function entities:shield_projectile/init
execute as @e[x=0,type=snowball,predicate=!entities:type/shield_projectile,predicate=!entities:type/stinging_shield_projectile,nbt={Item:{components:{"minecraft:custom_data":{id:"stinging_shield"}}}}] at @s run function entities:stinging_shield_projectile/init
execute as @e[x=0,type=egg,predicate=!entities:type/vortex_projectile,predicate=!entities:type/icbm,nbt={Item:{components:{"minecraft:custom_data":{id:"vortex"}}}}] at @s run function entities:vortex_projectile/init
execute as @e[x=0,type=egg,predicate=!entities:type/vortex_projectile,predicate=!entities:type/icbm,nbt={Item:{components:{"minecraft:custom_data":{id:"icbm"}}}}] at @s run function entities:icbm/init
execute as @e[x=0,type=firework_rocket,predicate=!entities:type/nova_rocket,nbt={FireworksItem:{components:{"minecraft:custom_data":{nova_rocket:{}}}}}] at @s run function entities:nova_rocket/init

## Tick entities
# Canopy
execute as @e[x=0,predicate=entities:type/canopy_projectile/brain] at @s run function entities:canopy_projectile/tick
execute as @e[x=0,predicate=entities:type/canopy/brain] at @s run function entities:canopy/tick

# Shield
execute as @e[x=0,predicate=entities:type/shield_projectile/brain] at @s run function entities:shield_projectile/tick
execute as @e[x=0,predicate=entities:type/shield] at @s run function entities:shield/tick

# Stinging Shield
execute as @e[x=0,predicate=entities:type/stinging_shield_projectile/brain] at @s run function entities:stinging_shield_projectile/tick
execute as @e[x=0,predicate=entities:type/stinging_shield] at @s run function entities:stinging_shield/tick

# Vortex
execute as @e[x=0,predicate=entities:type/vortex_projectile/brain] at @s run function entities:vortex_projectile/tick
scoreboard players remove @e[x=0,predicate=entities:type/vortex/brain,scores={entity.vortex.fuse=1..}] entity.vortex.fuse 1
execute as @e[x=0,predicate=entities:type/vortex/brain,sort=random] at @s run function entities:vortex/tick
execute as @e[x=0,predicate=entities:type/vortex_arm/brain] at @s run function entities:vortex_arm/tick

# Vortex Decoy (lobby)
execute as @e[x=0,predicate=entities:type/vortex_decoy] at @s run function entities:vortex_decoy/tick

# ICBM
execute as @e[x=0,predicate=entities:type/icbm/brain] at @s run function entities:icbm/tick

# Punchable TNT
execute if predicate game:modifiers/punchable_tnt/on as @e[x=0,predicate=entities:type/punchable_tnt/brain,scores={entity.age=0..}] run function entities:punchable_tnt/actions/kill

# Nova Rocket
execute as @e[x=0,predicate=entities:type/nova_rocket/brain] at @s run function entities:nova_rocket/tick

# Nova Attach
execute as @e[x=0,predicate=entities:type/nova_attach/brain] at @s run function entities:nova_attach/tick

# Spell Emitter
execute as @e[x=0,predicate=entities:type/spell_emitter] at @s run function entities:spell_emitter/tick

# Spells
execute as @e[x=0,predicate=entities:type/spell] at @s run function entities:spell/tick
