# arguments: x, y, z

$execute positioned $(x) $(y) $(z) unless predicate {condition:"location_check",predicate:{position:{y:{min:166}}}} run fill ~ ~ ~ ~16 ~16 ~16 air replace #custom:building_blocks strict
$execute positioned $(x) $(y) $(z) if predicate {condition:"location_check",predicate:{position:{y:{min:166,max:181}}}} run fill ~ ~ ~ ~16 181 ~16 air replace #custom:building_blocks strict

data remove storage rocketriders:arena_clear building_block_subchunks[-1]
execute if data storage rocketriders:arena_clear building_block_subchunks[0] run function arenaclear:clear_building_blocks/loop with storage rocketriders:arena_clear building_block_subchunks[-1]
