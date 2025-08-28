advancement revoke @s only custom:event/player_places_building_block

execute anchored eyes positioned ^ ^ ^ summon marker run function custom:event/player_places_building_block/get_position
execute store result storage rocketriders:main player_places_building_block.x1 int 16 run data get storage rocketriders:main player_places_building_block.negative_corner[0] 0.0625
execute store result storage rocketriders:main player_places_building_block.y1 int 16 run data get storage rocketriders:main player_places_building_block.negative_corner[1] 0.0625
execute store result storage rocketriders:main player_places_building_block.z1 int 16 run data get storage rocketriders:main player_places_building_block.negative_corner[2] 0.0625
execute store result storage rocketriders:main player_places_building_block.x2 int 16 run data get storage rocketriders:main player_places_building_block.positive_corner[0] 0.0625
execute store result storage rocketriders:main player_places_building_block.y2 int 16 run data get storage rocketriders:main player_places_building_block.positive_corner[1] 0.0625
execute store result storage rocketriders:main player_places_building_block.z2 int 16 run data get storage rocketriders:main player_places_building_block.positive_corner[2] 0.0625
function custom:event/player_places_building_block/store_subchunk_corner_positions with storage rocketriders:main player_places_building_block
