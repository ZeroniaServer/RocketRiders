execute on passengers run tag @s[predicate=entities:type/vortex/brain] remove vortex.settled

tp @s ^ ^ ^0.1 ~ ~
tag @s add vortex.drift_collision.this
execute positioned as @s as @e[distance=..0.825,tag=vortex.is_drifting,tag=!vortex.drift_collision.this,predicate=entities:type/vortex/body] facing entity @s feet positioned as @s run tp @s ^ ^ ^0.1
tag @s remove vortex.drift_collision.this

execute on passengers if score @s entity.vortex.drifting_for_ticks matches 0 if entity @s[predicate=entities:type/vortex/brain,tag=!vortex.neutral_landmine] on vehicle run data merge entity @s {teleport_duration:2,start_interpolation:0,interpolation_duration:3,transformation:{scale:[1.1,1.1,1.1]}}
execute on passengers if score @s entity.vortex.drifting_for_ticks matches 0 if entity @s[predicate=entities:type/vortex/brain,tag=!vortex.feathered] on vehicle run item replace entity @s contents with minecraft:ender_eye
execute on passengers if score @s entity.vortex.drifting_for_ticks matches 0 run playsound entity.shulker.hurt_closed master @a[x=0] ~ ~ ~ 0.7 0
execute on passengers if score @s entity.vortex.drifting_for_ticks matches 0 run playsound minecraft:block.sculk_sensor.clicking master @a[x=0] ~ ~ ~ 1 1

tag @s add vortex.is_drifting
execute on passengers run tag @s[predicate=entities:type/vortex/brain] add vortex.is_drifting
