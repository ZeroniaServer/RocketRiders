## Mount brain
tp @s ~ ~ ~
ride @s mount @e[distance=..0.01,limit=1,type=area_effect_cloud,tag=canopy.this]

## Set up data
data modify entity @s data.canopy set value {saddle_link:{}}
data merge entity @s {NoGravity:true,Invulnerable:true,Item:{id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:air"}}}

## Summon saddle
data remove storage rocketriders:main canopy.saddle_uuid
execute positioned ~ ~2 ~ if predicate custom:in_arena summon item_display positioned ~ ~-2 ~ run function entities:canopy/init/saddle
data modify entity @s Owner set from storage rocketriders:main canopy.saddle_uuid
