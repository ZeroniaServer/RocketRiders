rotate @s ~ ~

execute if score @s entity.vortex.drifting_for_ticks matches 0 run tag @s add vortex_decoy.is_primed
execute if score @s entity.vortex.drifting_for_ticks matches 0 run data merge entity @s {teleport_duration:2,start_interpolation:0,interpolation_duration:3,transformation:{scale:[1.1,1.1,1.1]}}
execute if score @s entity.vortex.drifting_for_ticks matches 0 run playsound entity.shulker.hurt_closed master @a[x=0] ~ ~ ~ 0.7 0
execute if score @s entity.vortex.drifting_for_ticks matches 0 run playsound minecraft:block.sculk_sensor.clicking master @a[x=0] ~ ~ ~ 1 1

tag @s add vortex_decoy.is_drifting
scoreboard players set @s entity.vortex_decoy.anger_time 60
