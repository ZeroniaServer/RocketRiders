execute unless predicate custom:entity/is_moving if block ~ ~ ~ #custom:nonsolid if block ~ ~-1 ~ #custom:nonsolid unless block ~ ~-1.201 ~ #custom:nonsolid run tp @s ~ ~-1 ~

execute positioned as @s run function entities:type/fireball/actions/break

execute positioned as @s run particle minecraft:geyser_poof{water_blocks: 10, burst_impulse_base:0} ~ ~-0.5 ~ 0.1 0.2 0.1 0.5 20
execute positioned as @s run particle minecraft:geyser{water_blocks:2} ~ ~ ~

execute positioned as @s run playsound minecraft:block.potent_sulfur.geyser_eruption master @a[x=0] ~ ~ ~ 1 2

execute positioned as @s run function everytick:geyser_evaporate
execute positioned as @s positioned ~-1.5 ~-1.5 ~-1.5 run tag @a[dx=2,dy=2,dz=2] add in_geyser_start
execute positioned as @s run summon minecraft:marker ~ ~ ~ {Tags:["geyser"]}
