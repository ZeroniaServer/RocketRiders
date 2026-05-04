execute if score @s entity.age matches ..9 positioned ~-1.1 ~ ~-1.1 as @e[dx=1.2,dy=1.625,dz=1.2,predicate=entities:type/rot/brain] at @s run function entities:type/rot/actions/start_burning
execute if score @s entity.age matches 10..14 positioned ~-1.1 ~ ~-1.1 as @e[dx=1.2,dy=3.25,dz=1.2,predicate=entities:type/rot/brain] at @s run function entities:type/rot/actions/start_burning
execute if score @s entity.age matches 15..19 positioned ~-1.1 ~ ~-1.1 as @e[dx=1.2,dy=4.875,dz=1.2,predicate=entities:type/rot/brain] at @s run function entities:type/rot/actions/start_burning
execute if score @s entity.age matches 20.. positioned ~-1.1 ~ ~-1.1 as @e[dx=1.2,dy=6.5,dz=1.2,predicate=entities:type/rot/brain] at @s run function entities:type/rot/actions/start_burning

execute if score @s entity.age matches ..9 positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=1.625,dz=0,predicate=entities:type/vortex/brain] at @s run function entities:type/vortex/actions/trigger {fuse:2}
execute if score @s entity.age matches 10..14 positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=3.25,dz=0,predicate=entities:type/vortex/brain] at @s run function entities:type/vortex/actions/trigger {fuse:2}
execute if score @s entity.age matches 15..19 positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=4.875,dz=0,predicate=entities:type/vortex/brain] at @s run function entities:type/vortex/actions/trigger {fuse:2}
execute if score @s entity.age matches 20.. positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=6.5,dz=0,predicate=entities:type/vortex/brain] at @s run function entities:type/vortex/actions/trigger {fuse:2}
