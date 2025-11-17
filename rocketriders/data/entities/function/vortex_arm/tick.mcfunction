particle dust{color:0xFF00FF,scale:0.5} ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if entity @s[tag=vortex_arm.transitioning] run scoreboard players remove @s entity.age 1
execute if entity @s[tag=vortex_arm.transitioning] if score @s entity.age matches ..0 on vehicle run data merge entity @s {teleport_duration:1}
execute if entity @s[tag=vortex_arm.transitioning] if score @s entity.age matches ..0 run tag @s remove vortex_arm.transitioning

execute store success score $is_drifting var on origin if entity @s[tag=vortex.is_drifting]
execute if score $is_drifting var matches 0 if entity @s[tag=vortex_arm.was_drifting] on vehicle run data merge entity @s {teleport_duration:5,transformation:{scale:[0.333,0.333,0.333]}}
execute if score $is_drifting var matches 0 if entity @s[tag=vortex_arm.was_drifting] run scoreboard players set @s entity.age 4
execute if score $is_drifting var matches 0 if entity @s[tag=vortex_arm.was_drifting] run tag @s add vortex_arm.transitioning
execute if score $is_drifting var matches 0 run tag @s remove vortex_arm.was_drifting
execute if score $is_drifting var matches 1 if entity @s[tag=!vortex_arm.was_drifting] on vehicle run data merge entity @s {teleport_duration:5,transformation:{scale:[0.5,0.5,0.5]}}
execute if score $is_drifting var matches 1 if entity @s[tag=!vortex_arm.was_drifting] run scoreboard players set @s entity.age 4
execute if score $is_drifting var matches 1 if entity @s[tag=!vortex_arm.was_drifting] run tag @s add vortex_arm.transitioning
execute if score $is_drifting var matches 1 run tag @s add vortex_arm.was_drifting

execute unless entity @s[tag=vortex_arm.transitioning,scores={entity.age=4}] unless entity @s[tag=vortex_arm.transitioning,scores={entity.age=..2}] run function entities:vortex_arm/tick/get_angle
execute unless entity @s[tag=vortex_arm.transitioning,scores={entity.age=4}] unless entity @s[tag=vortex_arm.transitioning,scores={entity.age=..2}] run function entities:vortex_arm/tick/set_position with storage rocketriders:main vortex_arm

execute on origin run return 0
execute on passengers run kill @s[predicate=entities:type/vortex_arm]
execute on vehicle run kill @s[predicate=entities:type/vortex_arm]
kill @s[predicate=entities:type/vortex_arm]
