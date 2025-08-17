tp @s ^ ^ ^.1

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}} run rotate @s ~ ~
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}} run rotate @s ~1 ~1
#^ fix for weird bug where the rotation doesn't update correctly unless slightly updated every tick

execute if score $was_drifting var matches 0 on passengers if entity @s[predicate=entities:type/vortex/brain,tag=!vortex.feathered] on vehicle run data merge entity @s {teleport_duration:2,item:{id:"minecraft:ender_eye"},start_interpolation:0,interpolation_duration:5,transformation:{scale:[1.2,1.2,1.2]}}
execute if score $was_drifting var matches 0 run playsound entity.shulker.hurt_closed master @a[x=0] ~ ~ ~ 0.7 0
execute if score $was_drifting var matches 0 run playsound minecraft:block.sculk_sensor.clicking master @a[x=0] ~ ~ ~ 1 1

execute on passengers run tag @s[predicate=entities:type/vortex/brain] add vortex.is_drifting
