# arguments: id, properties

$data modify storage rocketriders:main missiles.properties set value $(properties)

## Calculate origin_to_placement_local
execute store result score $width var run data get storage rocketriders:main missiles.properties.width
scoreboard players operation $origin_to_placement_local_x var = $width var
scoreboard players operation $origin_to_placement_local_x var /= $2 constant
scoreboard players operation $origin_to_placement_local_x var *= $-1 constant
execute store result score $offset_width var run data get storage rocketriders:main missiles.properties.offset[2]
execute store result storage rocketriders:main missiles.properties.origin_to_placement_local_x int 1 run scoreboard players operation $origin_to_placement_local_x var += $offset_width var

execute store result score $height var run data get storage rocketriders:main missiles.properties.height
scoreboard players set $origin_to_placement_local_y var -3
scoreboard players operation $origin_to_placement_local_y var -= $height var
execute store result score $offset_height var run data get storage rocketriders:main missiles.properties.offset[1]
execute store result storage rocketriders:main missiles.properties.origin_to_placement_local_y int 1 run scoreboard players operation $origin_to_placement_local_y var += $offset_height var

execute store result score $depth var run data get storage rocketriders:main missiles.properties.depth
scoreboard players set $origin_to_placement_local_z var 4
execute store result score $offset_depth var run data get storage rocketriders:main missiles.properties.offset[0]
execute store result storage rocketriders:main missiles.properties.origin_to_placement_local_z int 1 run scoreboard players operation $origin_to_placement_local_z var += $offset_depth var

data remove storage rocketriders:main missiles.properties.offset


## Calculate north positions
#piston_buffer_corner_absolute = (-160,184,-160) + (width,height,depth) + (1,1,1)
#origin_to_start_relative = (-origin_to_placement_local.x,origin_to_placement_local.y,-origin_to_placement_local.z) + (-width,0,-depth) + (1,0,1)
#start_to_end_relative = (width,height,depth) + (-1,-1,-1)
data modify storage rocketriders:main missiles.properties.transforms.north set value {direction_cardinal:"north",direction_transform:"180",direction_rotation:"180"}

scoreboard players set $piston_buffer_corner_absolute_x var -160
scoreboard players operation $piston_buffer_corner_absolute_x var += $width var
execute store result storage rocketriders:main missiles.properties.transforms.north.piston_buffer_corner_absolute_x int 1 run scoreboard players add $piston_buffer_corner_absolute_x var 1
scoreboard players set $piston_buffer_corner_absolute_y var 184
scoreboard players operation $piston_buffer_corner_absolute_y var += $height var
execute store result storage rocketriders:main missiles.properties.transforms.north.piston_buffer_corner_absolute_y int 1 run scoreboard players add $piston_buffer_corner_absolute_y var 1
scoreboard players set $piston_buffer_corner_absolute_z var -160
scoreboard players operation $piston_buffer_corner_absolute_z var += $depth var
execute store result storage rocketriders:main missiles.properties.transforms.north.piston_buffer_corner_absolute_z int 1 run scoreboard players add $piston_buffer_corner_absolute_z var 1

scoreboard players operation $origin_to_start_relative_x var = $origin_to_placement_local_x var
scoreboard players operation $origin_to_start_relative_x var *= $-1 constant
scoreboard players operation $origin_to_start_relative_x var -= $width var
execute store result storage rocketriders:main missiles.properties.transforms.north.origin_to_start_relative_x int 1 run scoreboard players add $origin_to_start_relative_x var 1
execute store result storage rocketriders:main missiles.properties.transforms.north.origin_to_start_relative_y int 1 run scoreboard players get $origin_to_placement_local_y var
scoreboard players operation $origin_to_start_relative_z var = $origin_to_placement_local_z var
scoreboard players operation $origin_to_start_relative_z var *= $-1 constant
scoreboard players operation $origin_to_start_relative_z var -= $depth var
execute store result storage rocketriders:main missiles.properties.transforms.north.origin_to_start_relative_z int 1 run scoreboard players add $origin_to_start_relative_z var 1

scoreboard players operation $start_to_end_relative_x var = $width var
execute store result storage rocketriders:main missiles.properties.transforms.north.start_to_end_relative_x int 1 run scoreboard players remove $start_to_end_relative_x var 1
scoreboard players operation $start_to_end_relative_y var = $height var
execute store result storage rocketriders:main missiles.properties.transforms.north.start_to_end_relative_y int 1 run scoreboard players remove $start_to_end_relative_y var 1
scoreboard players operation $start_to_end_relative_z var = $depth var
execute store result storage rocketriders:main missiles.properties.transforms.north.start_to_end_relative_z int 1 run scoreboard players remove $start_to_end_relative_z var 1


## Calculate east positions
#piston_buffer_corner_absolute = (-160,184,-160) + (depth,height,width) + (1,1,1)
#origin_to_start_relative = (origin_to_placement_local.z,origin_to_placement_local.y,-origin_to_placement_local.x) + (0,0,-width) + (0,0,1)
#start_to_end_relative = (depth,height,width) + (-1,-1,-1)
data modify storage rocketriders:main missiles.properties.transforms.east set value {direction_cardinal:"east",direction_transform:"counterclockwise_90",direction_rotation:"-90"}

scoreboard players set $piston_buffer_corner_absolute_x var -160
scoreboard players operation $piston_buffer_corner_absolute_x var += $depth var
execute store result storage rocketriders:main missiles.properties.transforms.east.piston_buffer_corner_absolute_x int 1 run scoreboard players add $piston_buffer_corner_absolute_x var 1
scoreboard players set $piston_buffer_corner_absolute_y var 184
scoreboard players operation $piston_buffer_corner_absolute_y var += $height var
execute store result storage rocketriders:main missiles.properties.transforms.east.piston_buffer_corner_absolute_y int 1 run scoreboard players add $piston_buffer_corner_absolute_y var 1
scoreboard players set $piston_buffer_corner_absolute_z var -160
scoreboard players operation $piston_buffer_corner_absolute_z var += $width var
execute store result storage rocketriders:main missiles.properties.transforms.east.piston_buffer_corner_absolute_z int 1 run scoreboard players add $piston_buffer_corner_absolute_z var 1

execute store result storage rocketriders:main missiles.properties.transforms.east.origin_to_start_relative_x int 1 run scoreboard players get $origin_to_placement_local_z var
execute store result storage rocketriders:main missiles.properties.transforms.east.origin_to_start_relative_y int 1 run scoreboard players get $origin_to_placement_local_y var
scoreboard players operation $origin_to_start_relative_z var = $origin_to_placement_local_x var
scoreboard players operation $origin_to_start_relative_z var *= $-1 constant
scoreboard players operation $origin_to_start_relative_z var -= $width var
execute store result storage rocketriders:main missiles.properties.transforms.east.origin_to_start_relative_z int 1 run scoreboard players add $origin_to_start_relative_z var 1

scoreboard players operation $start_to_end_relative_x var = $depth var
execute store result storage rocketriders:main missiles.properties.transforms.east.start_to_end_relative_x int 1 run scoreboard players remove $start_to_end_relative_x var 1
scoreboard players operation $start_to_end_relative_y var = $height var
execute store result storage rocketriders:main missiles.properties.transforms.east.start_to_end_relative_y int 1 run scoreboard players remove $start_to_end_relative_y var 1
scoreboard players operation $start_to_end_relative_z var = $with var
execute store result storage rocketriders:main missiles.properties.transforms.east.start_to_end_relative_z int 1 run scoreboard players remove $start_to_end_relative_z var 1


## Calculate south positions
#piston_buffer_corner_absolute = (-160,184,-160) + (width,height,depth) + (1,1,1)
#origin_to_start_relative = (origin_to_placement_local.x,origin_to_placement_local.y,origin_to_placement_local.z)
#start_to_end_relative = (width,height,depth) + (-1,-1,-1)
data modify storage rocketriders:main missiles.properties.transforms.south set value {direction_cardinal:"south",direction_transform:"none",direction_rotation:"0"}

scoreboard players set $piston_buffer_corner_absolute_x var -160
scoreboard players operation $piston_buffer_corner_absolute_x var += $width var
execute store result storage rocketriders:main missiles.properties.transforms.south.piston_buffer_corner_absolute_x int 1 run scoreboard players add $piston_buffer_corner_absolute_x var 1
scoreboard players set $piston_buffer_corner_absolute_y var 184
scoreboard players operation $piston_buffer_corner_absolute_y var += $height var
execute store result storage rocketriders:main missiles.properties.transforms.south.piston_buffer_corner_absolute_y int 1 run scoreboard players add $piston_buffer_corner_absolute_y var 1
scoreboard players set $piston_buffer_corner_absolute_z var -160
scoreboard players operation $piston_buffer_corner_absolute_z var += $depth var
execute store result storage rocketriders:main missiles.properties.transforms.south.piston_buffer_corner_absolute_z int 1 run scoreboard players add $piston_buffer_corner_absolute_z var 1

execute store result storage rocketriders:main missiles.properties.transforms.south.origin_to_start_relative_x int 1 run scoreboard players get $origin_to_placement_local_x var
execute store result storage rocketriders:main missiles.properties.transforms.south.origin_to_start_relative_y int 1 run scoreboard players get $origin_to_placement_local_y var
execute store result storage rocketriders:main missiles.properties.transforms.south.origin_to_start_relative_z int 1 run scoreboard players get $origin_to_placement_local_z var

scoreboard players operation $start_to_end_relative_x var = $width var
execute store result storage rocketriders:main missiles.properties.transforms.south.start_to_end_relative_x int 1 run scoreboard players remove $start_to_end_relative_x var 1
scoreboard players operation $start_to_end_relative_y var = $height var
execute store result storage rocketriders:main missiles.properties.transforms.south.start_to_end_relative_y int 1 run scoreboard players remove $start_to_end_relative_y var 1
scoreboard players operation $start_to_end_relative_z var = $depth var
execute store result storage rocketriders:main missiles.properties.transforms.south.start_to_end_relative_z int 1 run scoreboard players remove $start_to_end_relative_z var 1


## Calculate west positions
#piston_buffer_corner_absolute = (-160,184,-160) + (depth,height,width) + (1,1,1)
#origin_to_start_relative = (-origin_to_placement_local.z,origin_to_placement_local.y,origin_to_placement_local.x) + (-depth,0,0) + (1,0,0)
#start_to_end_relative = (depth,height,width) + (-1,-1,-1)
data modify storage rocketriders:main missiles.properties.transforms.west set value {direction_cardinal:"west",direction_transform:"clockwise_90",direction_rotation:"90"}

scoreboard players set $piston_buffer_corner_absolute_x var -160
scoreboard players operation $piston_buffer_corner_absolute_x var += $depth var
execute store result storage rocketriders:main missiles.properties.transforms.west.piston_buffer_corner_absolute_x int 1 run scoreboard players add $piston_buffer_corner_absolute_x var 1
scoreboard players set $piston_buffer_corner_absolute_y var 184
scoreboard players operation $piston_buffer_corner_absolute_y var += $height var
execute store result storage rocketriders:main missiles.properties.transforms.west.piston_buffer_corner_absolute_y int 1 run scoreboard players add $piston_buffer_corner_absolute_y var 1
scoreboard players set $piston_buffer_corner_absolute_z var -160
scoreboard players operation $piston_buffer_corner_absolute_z var += $width var
execute store result storage rocketriders:main missiles.properties.transforms.west.piston_buffer_corner_absolute_z int 1 run scoreboard players add $piston_buffer_corner_absolute_z var 1

scoreboard players operation $origin_to_start_relative_x var = $origin_to_placement_local_z var
scoreboard players operation $origin_to_start_relative_x var *= $-1 constant
scoreboard players operation $origin_to_start_relative_x var -= $depth var
execute store result storage rocketriders:main missiles.properties.transforms.west.origin_to_start_relative_x int 1 run scoreboard players add $origin_to_start_relative_x var 1
execute store result storage rocketriders:main missiles.properties.transforms.west.origin_to_start_relative_y int 1 run scoreboard players get $origin_to_placement_local_y var
execute store result storage rocketriders:main missiles.properties.transforms.west.origin_to_start_relative_z int 1 run scoreboard players get $origin_to_placement_local_x var

scoreboard players operation $start_to_end_relative_x var = $depth var
execute store result storage rocketriders:main missiles.properties.transforms.west.start_to_end_relative_x int 1 run scoreboard players remove $start_to_end_relative_x var 1
scoreboard players operation $start_to_end_relative_y var = $height var
execute store result storage rocketriders:main missiles.properties.transforms.west.start_to_end_relative_y int 1 run scoreboard players remove $start_to_end_relative_y var 1
scoreboard players operation $start_to_end_relative_z var = $with var
execute store result storage rocketriders:main missiles.properties.transforms.west.start_to_end_relative_z int 1 run scoreboard players remove $start_to_end_relative_z var 1


## Write properties to storage
$data modify storage rocketriders:missiles properties."$(id)" set from storage rocketriders:main missiles.properties
