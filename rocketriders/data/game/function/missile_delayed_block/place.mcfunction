kill @s
execute unless block ~ ~ ~ #custom:air run return 0

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{missile_delayed_block:{type:"tnt"}}}}} run return run function game:missile_delayed_block/place_tnt
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:predicates":{"minecraft:custom_data":{missile_delayed_block:{type:"observer"}}}}} run return run function game:missile_delayed_block/place_observer

