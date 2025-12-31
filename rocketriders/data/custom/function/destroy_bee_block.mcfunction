# 1.21.11+: execute unless predicate {condition:"minecraft:location_check",predicate:{block:{predicates:{"minecraft:bees":{}}}}} run return fail
execute unless data block ~ ~ ~ bees run return fail

data modify storage rocketriders:main destroy_bee_block set value {} 
data modify storage rocketriders:main destroy_bee_block.block_entity_data set from block ~ ~ ~ {}
data modify storage rocketriders:main destroy_bee_block.block_entity_data.bees set from block ~ ~ ~ bees
data remove storage rocketriders:main destroy_bee_block.block_entity_data.bees[0].entity_data.id
data remove storage rocketriders:main destroy_bee_block.block_entity_data.bees[0].entity_data.UUID
data remove storage rocketriders:main destroy_bee_block.block_entity_data.bees[0].entity_data.Pos
data modify storage rocketriders:main destroy_bee_block.block_entity_data.bees[0].entity_data merge value {OnGround:false,NoGravity:true,Motion:[0,0,0],hive_pos:[I;0,0,0]}
data modify storage rocketriders:main destroy_bee_block.block_entity_data.bees[0].entity_data.hive_pos[0] set from storage rocketriders:main destroy_bee_block.block_entity_data.x
data modify storage rocketriders:main destroy_bee_block.block_entity_data.bees[0].entity_data.hive_pos[1] set from storage rocketriders:main destroy_bee_block.block_entity_data.y
data modify storage rocketriders:main destroy_bee_block.block_entity_data.bees[0].entity_data.hive_pos[2] set from storage rocketriders:main destroy_bee_block.block_entity_data.z

execute if predicate {condition:"minecraft:location_check",predicate:{block:{state:{facing:"north"}}}} align xyz positioned ~0.5 ~0.2 ~0.5 positioned ~ ~ ~-0.9 run function custom:__impl__/destroy_bee_block/summon with storage rocketriders:main destroy_bee_block.block_entity_data.bees[0]
execute if predicate {condition:"minecraft:location_check",predicate:{block:{state:{facing:"east"}}}} align xyz positioned ~0.5 ~0.2 ~0.5 positioned ~0.9 ~ ~ run function custom:__impl__/destroy_bee_block/summon with storage rocketriders:main destroy_bee_block.block_entity_data.bees[0]
execute if predicate {condition:"minecraft:location_check",predicate:{block:{state:{facing:"south"}}}} align xyz positioned ~0.5 ~0.2 ~0.5 positioned ~ ~ ~0.9 run function custom:__impl__/destroy_bee_block/summon with storage rocketriders:main destroy_bee_block.block_entity_data.bees[0]
execute if predicate {condition:"minecraft:location_check",predicate:{block:{state:{facing:"west"}}}} align xyz positioned ~0.5 ~0.2 ~0.5 positioned ~-0.9 ~ ~ run function custom:__impl__/destroy_bee_block/summon with storage rocketriders:main destroy_bee_block.block_entity_data.bees[0]

setblock ~ ~ ~ air destroy
