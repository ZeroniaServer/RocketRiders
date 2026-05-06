# Particles
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex_decoy.is_primed] at @s run function entities:type/vortex_decoy/tick/particles/dormant
execute if predicate custom:periodic_tick/3 if entity @s[tag=vortex_decoy.is_primed] at @s run function entities:type/vortex_decoy/tick/particles/primed
execute if entity @s[tag=vortex_decoy.is_primed] if predicate {condition:"random_chance",chance:0.1} run particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 1 force @a[x=0,tag=!hideParticles]

# Spin
execute unless entity @s[tag=vortex_decoy.is_primed] run execute unless entity @s[tag=vortex_decoy.is_drifting] if predicate custom:periodic_tick/5 rotated as @s run rotate @s ~35 0
execute if entity @s[tag=vortex_decoy.is_primed] run execute unless entity @s[tag=vortex_decoy.is_drifting] if predicate custom:periodic_tick/5 rotated as @s run rotate @s ~85 0

## Movement (drift)
# to prevent flickering between drifting and stationary when a player is on the border of the detection range, range is R when stationary and R+0.5 when drifting
tag @s remove vortex_decoy.is_drifting
execute run tag @s remove vortex_decoy.is_drifting
execute if entity @s[tag=!vortex_decoy.is_primed] run function entities:type/vortex_decoy/tick/drift_detection_range {distance:4}
execute if entity @s[tag=vortex_decoy.is_primed] if score @s entity.vortex.drifting_for_ticks matches 0 run function entities:type/vortex_decoy/tick/drift_detection_range {distance:6}
execute if entity @s[tag=vortex_decoy.is_primed] if score @s entity.vortex.drifting_for_ticks matches 1.. run function entities:type/vortex_decoy/tick/drift_detection_range {distance:6.5}

# settle into the block grid when drifting stops
execute if score @s entity.vortex.drifting_for_ticks matches 1.. if entity @s[tag=!vortex_decoy.is_drifting] run data merge entity @s {teleport_duration:10,start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.8,0.8,0.8]}}

# drifting duration
execute if entity @s[tag=vortex_decoy.is_drifting] run scoreboard players add @s entity.vortex.drifting_for_ticks 1
execute if entity @s[tag=!vortex_decoy.is_drifting] run scoreboard players set @s entity.vortex.drifting_for_ticks 0


## Shake when primed
execute if entity @s[tag=vortex_decoy.is_primed] run data modify storage rocketriders:main vortex_decoy.shake set value [-0.03125,0.0125,0]
execute if entity @s[tag=vortex_decoy.is_primed,tag=!vortex_decoy.is_drifting] run execute store result storage rocketriders:main vortex_decoy.shake[0] float 0.00625 run random value -61..51
execute if entity @s[tag=vortex_decoy.is_primed,tag=!vortex_decoy.is_drifting] run execute store result storage rocketriders:main vortex_decoy.shake[1] float 0.00625 run random value -38..42
execute if entity @s[tag=vortex_decoy.is_primed,tag=!vortex_decoy.is_drifting] run execute store result storage rocketriders:main vortex_decoy.shake[2] float 0.00625 run random value -56..56
execute if entity @s[tag=vortex_decoy.is_primed,tag=vortex_decoy.is_drifting] run execute store result storage rocketriders:main vortex_decoy.shake[0] float 0.00625 run random value -31..21
execute if entity @s[tag=vortex_decoy.is_primed,tag=vortex_decoy.is_drifting] run execute store result storage rocketriders:main vortex_decoy.shake[1] float 0.00625 run random value -8..12
execute if entity @s[tag=vortex_decoy.is_primed,tag=vortex_decoy.is_drifting] run execute store result storage rocketriders:main vortex_decoy.shake[2] float 0.00625 run random value -26..26
execute if entity @s[tag=vortex_decoy.is_primed] run data modify entity @s transformation.translation set from storage rocketriders:main vortex_decoy.shake

## Anger time
execute if score @s entity.vortex_decoy.anger_time matches 1.. run scoreboard players remove @s entity.vortex_decoy.anger_time 1
execute if score @s entity.vortex_decoy.anger_time matches ..0 run scoreboard players reset @s entity.vortex_decoy.anger_time

execute if entity @s[tag=vortex_decoy.is_primed] unless score @s entity.vortex_decoy.anger_time matches 1.. run data merge entity @s {item_display:"fixed",teleport_duration:10,transformation:{scale:[0.5,0.5,0.5],translation:[-0.03125,0.0125,0]}}
execute if entity @s[tag=vortex_decoy.is_primed] unless score @s entity.vortex_decoy.anger_time matches 1.. run tag @s remove vortex_decoy.is_primed
