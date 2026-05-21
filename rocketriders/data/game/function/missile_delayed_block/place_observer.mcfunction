execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{missile_delayed_block:{properties:{facing:"up"}}}}}} run return run setblock ~ ~ ~ minecraft:observer[facing=up] strict
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{missile_delayed_block:{properties:{facing:"down"}}}}}} run return run setblock ~ ~ ~ minecraft:observer[facing=down] strict

scoreboard players set $cardinal_direction var 0
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{missile_delayed_block:{properties:{facing:"west"}}}}}} run scoreboard players set $cardinal_direction var 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{missile_delayed_block:{properties:{facing:"north"}}}}}} run scoreboard players set $cardinal_direction var 2
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{missile_delayed_block:{properties:{facing:"east"}}}}}} run scoreboard players set $cardinal_direction var 3
execute if entity @s[y_rotation=45..135] run scoreboard players add $cardinal_direction var 1
execute if entity @s[y_rotation=135..-135] run scoreboard players add $cardinal_direction var 2
execute if entity @s[y_rotation=-135..-45] run scoreboard players add $cardinal_direction var 3
scoreboard players operation $cardinal_direction var %= $4 constant

execute if score $cardinal_direction var matches 0 run return run setblock ~ ~ ~ minecraft:observer[facing=south] strict
execute if score $cardinal_direction var matches 1 run return run setblock ~ ~ ~ minecraft:observer[facing=west] strict
execute if score $cardinal_direction var matches 2 run return run setblock ~ ~ ~ minecraft:observer[facing=north] strict
execute if score $cardinal_direction var matches 3 run return run setblock ~ ~ ~ minecraft:observer[facing=east] strict
