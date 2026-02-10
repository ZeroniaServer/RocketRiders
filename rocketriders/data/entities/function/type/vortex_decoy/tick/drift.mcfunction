rotate @s ~ ~

execute if score $was_staring var matches 0 run data merge entity @s {teleport_duration:2,item:{id:"minecraft:ender_eye"},start_interpolation:0,interpolation_duration:5,transformation:{scale:[1.2,1.2,1.2],translation:[-0.03125,0.0125,0.25]}}
execute if score $was_staring var matches 0 run playsound entity.shulker.hurt_closed master @a[x=0,predicate=!custom:in_arena] ~ ~ ~ 0.7 0
execute if score $was_staring var matches 0 run playsound minecraft:block.sculk_sensor.clicking master @a[x=0,predicate=!custom:in_arena] ~ ~ ~ 1 1

tag @s add vortex_decoy.is_staring
