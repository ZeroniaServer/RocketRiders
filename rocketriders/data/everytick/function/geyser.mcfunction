scoreboard players add @e[x=0,type=marker,tag=geyser] entity.age 1
kill @e[x=0,type=marker,tag=geyser,scores={entity.age=30..}]

tag @a[x=0] remove in_geyser_base
tag @a[x=0] remove in_geyser_top

execute at @e[x=0,type=marker,tag=geyser] positioned ~-1 ~ ~-1 run tag @a[dx=1,dy=0,dz=1] add in_geyser_base
execute at @e[x=0,type=marker,tag=geyser] positioned ~-0.5 ~-1 ~-0.5 run tag @a[dx=0,dy=4.5,dz=0] add in_geyser_top

execute as @a[x=0] run attribute @s minecraft:gravity modifier remove rocketriders:geyser
execute as @a[x=0,tag=in_geyser_start,tag=in_geyser_base] run attribute @s minecraft:gravity modifier add rocketriders:geyser -0.5 add_value
execute as @a[x=0,tag=in_geyser_base] run attribute @s minecraft:gravity modifier add rocketriders:geyser -0.22 add_value
execute as @a[x=0,tag=in_geyser_top,tag=!in_geyser_base] run attribute @s minecraft:gravity modifier add rocketriders:geyser -0.1 add_value

execute as @a[predicate=custom:player/is_touching_geyser,predicate=custom:entity/is_touching_water] at @s run function everytick:geyser_evaporate

tag @a[x=0] remove in_geyser_start