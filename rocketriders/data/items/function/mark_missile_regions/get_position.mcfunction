tp @s ~-2 ~-2 ~-2
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{max:-30}}}}} positioned as @s run tp @s ~ -30 ~
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{min:180}}}}} positioned as @s run tp @s ~ 180 ~
data modify storage rocketriders:main mark_missile_regions.negative_corner set from entity @s Pos

tp @s ~2 ~2 ~2
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{max:-30}}}}} positioned as @s run tp @s ~ -30 ~
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{min:180}}}}} positioned as @s run tp @s ~ 180 ~
data modify storage rocketriders:main mark_missile_regions.positive_corner set from entity @s Pos

kill @s
