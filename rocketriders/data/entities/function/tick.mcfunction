# Increment age for entities
scoreboard players add @e[x=0,predicate=entities:do_age] entity.age 1

## Initialise new entities
     execute if predicate game:item_pool/canopy as @e[x=0,type=ender_pearl,predicate=!entities:type/canopy_projectile] at @s run function entities:type/canopy_projectile/init
     execute if predicate game:item_pool/shield as @e[x=0,type=snowball,predicate=!entities:type/shield_projectile,predicate=!entities:type/stinging_shield_projectile,predicate=!entities:type/vortex_projectile,predicate=!entities:type/icbm,nbt={Item:{components:{"minecraft:custom_data":{id:"shield"}}}}] at @s run function entities:type/shield_projectile/init
                                        execute as @e[x=0,type=snowball,predicate=!entities:type/shield_projectile,predicate=!entities:type/stinging_shield_projectile,predicate=!entities:type/vortex_projectile,predicate=!entities:type/icbm,nbt={Item:{components:{"minecraft:custom_data":{id:"stinging_shield"}}}}] at @s run function entities:type/stinging_shield_projectile/init
     execute if predicate game:item_pool/vortex as @e[x=0,type=snowball,predicate=!entities:type/shield_projectile,predicate=!entities:type/stinging_shield_projectile,predicate=!entities:type/vortex_projectile,predicate=!entities:type/icbm,nbt={Item:{components:{"minecraft:custom_data":{id:"vortex"}}}}] at @s run function entities:type/vortex_projectile/init
       execute if predicate game:item_pool/icbm as @e[x=0,type=snowball,predicate=!entities:type/shield_projectile,predicate=!entities:type/stinging_shield_projectile,predicate=!entities:type/vortex_projectile,predicate=!entities:type/icbm,nbt={Item:{components:{"minecraft:custom_data":{id:"icbm"}}}}] at @s run function entities:type/icbm/init
execute if predicate game:item_pool/nova_rocket as @e[x=0,type=firework_rocket,predicate=!entities:type/nova_rocket,nbt={FireworksItem:{components:{"minecraft:custom_data":{nova_rocket:{}}}}}] at @s run function entities:type/nova_rocket/init
