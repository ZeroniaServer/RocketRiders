execute summon marker run function items:mark_missile_regions/get_position
execute store result storage rocketriders:main mark_missile_regions.x1 int 4 run data get storage rocketriders:main mark_missile_regions.negative_corner[0] 0.25
execute store result storage rocketriders:main mark_missile_regions.y1 int 4 run data get storage rocketriders:main mark_missile_regions.negative_corner[1] 0.25
execute store result storage rocketriders:main mark_missile_regions.x2 int 4 run data get storage rocketriders:main mark_missile_regions.positive_corner[0] 0.25
execute store result storage rocketriders:main mark_missile_regions.y2 int 4 run data get storage rocketriders:main mark_missile_regions.positive_corner[1] 0.25
execute store result storage rocketriders:main mark_missile_regions.z int 4 run data get storage rocketriders:main mark_missile_regions.negative_corner[2] 0.25
function items:mark_missile_regions/store_towards_south with storage rocketriders:main mark_missile_regions
