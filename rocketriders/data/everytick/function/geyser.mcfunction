scoreboard players add @e[x=0,type=marker,tag=geyser] entity.age 1
kill @e[x=0,type=marker,tag=geyser,scores={entity.age=30..}]

tag @a[x=0] remove in_geyser
execute at @e[x=0,type=marker,tag=geyser] positioned ~-0.5 ~-1 ~-0.5 run tag @a[dx=0,dy=4,dz=0] add in_geyser
execute at @e[x=0,type=marker,tag=geyser] positioned ~-1 ~ ~-1 run tag @a[dx=1,dy=1,dz=1] add in_geyser

execute as @a[x=0,tag=geyser_launch,tag=!in_geyser] run attribute @s minecraft:gravity modifier remove rocketriders:geyser
tag @a[x=0,tag=geyser_launch,tag=!in_geyser] remove geyser_launch

tag @a[x=0,tag=in_geyser] add geyser_launch
execute as @a[x=0,tag=geyser_launch] run attribute @s minecraft:gravity modifier add rocketriders:geyser -0.3 add_value

tag @a[x=0] remove in_geyser

execute as @a[tag=geyser_launch,predicate=custom:entity/is_touching_water] at @s run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~3 ~0.5 air replace water
