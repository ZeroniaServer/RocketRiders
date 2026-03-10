## TEAMS

# asset/.../blue
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) structure_void strict
$place template game:$(asset_id) -160 184 -160 none none 1 0 strict

$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=north] replace blue_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=east] replace cyan_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=south] replace white_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=west] replace black_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_main_color)_glazed_terracotta[facing=north] replace blue_glazed_terracotta[facing=north] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_main_color)_glazed_terracotta[facing=east] replace blue_glazed_terracotta[facing=east] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_main_color)_glazed_terracotta[facing=south] replace blue_glazed_terracotta[facing=south] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_main_color)_glazed_terracotta[facing=west] replace blue_glazed_terracotta[facing=west] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_front) replace resin_brick_stairs[facing=north] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_middle) replace resin_brick_stairs[facing=east] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_back) replace resin_brick_stairs[facing=south] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_detail) replace resin_brick_stairs[facing=west] strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/$(asset_id)/blue",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block

# asset/.../yellow
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) structure_void strict
$execute positioned -161 184 -161 run place template game:$(asset_id) ~$(x_length) ~ ~$(z_length) 180 none 1 0 strict

$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=north] replace blue_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=east] replace cyan_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=south] replace white_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=west] replace black_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_main_color)_glazed_terracotta[facing=north] replace blue_glazed_terracotta[facing=north] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_main_color)_glazed_terracotta[facing=east] replace blue_glazed_terracotta[facing=east] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_main_color)_glazed_terracotta[facing=south] replace blue_glazed_terracotta[facing=south] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_main_color)_glazed_terracotta[facing=west] replace blue_glazed_terracotta[facing=west] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_front) replace resin_brick_stairs[facing=north] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_middle) replace resin_brick_stairs[facing=east] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_back) replace resin_brick_stairs[facing=south] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_detail) replace resin_brick_stairs[facing=west] strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/$(asset_id)/yellow",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block
