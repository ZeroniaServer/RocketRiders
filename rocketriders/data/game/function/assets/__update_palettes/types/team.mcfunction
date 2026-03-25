# asset/.../blue
$fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void strict
$place template game:$(asset_id) -160 184 -160 none none 1 0 strict

$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_back_stained_glass_pane) replace white_stained_glass_pane
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=north,half=bottom] replace blue_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=east,half=bottom] replace cyan_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=south,half=bottom] replace white_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=west,half=bottom] replace black_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=north,half=top] replace blue_wool strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_front_glazed_terracotta)[facing=north] replace blue_glazed_terracotta[facing=north] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_front_glazed_terracotta)[facing=east] replace blue_glazed_terracotta[facing=east] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_front_glazed_terracotta)[facing=south] replace blue_glazed_terracotta[facing=south] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_front_glazed_terracotta)[facing=west] replace blue_glazed_terracotta[facing=west] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_front) replace resin_brick_stairs[facing=north,half=bottom] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_middle) replace resin_brick_stairs[facing=east,half=bottom] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_back) replace resin_brick_stairs[facing=south,half=bottom] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_detail) replace resin_brick_stairs[facing=west,half=bottom] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(blue_flag) replace resin_brick_stairs[facing=north,half=top] strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/$(asset_id)/blue",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/.../yellow
$fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void strict
$execute positioned -161 184 -161 run place template game:$(asset_id) -160 184 -160 none none 1 0 strict

$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_back_stained_glass_pane) replace white_stained_glass_pane
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=north,half=bottom] replace blue_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=east,half=bottom] replace cyan_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=south,half=bottom] replace white_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=west,half=bottom] replace black_stained_glass strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) resin_brick_stairs[facing=north,half=top] replace blue_wool strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_front_glazed_terracotta)[facing=north] replace blue_glazed_terracotta[facing=north] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_front_glazed_terracotta)[facing=east] replace blue_glazed_terracotta[facing=east] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_front_glazed_terracotta)[facing=south] replace blue_glazed_terracotta[facing=south] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_front_glazed_terracotta)[facing=west] replace blue_glazed_terracotta[facing=west] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_front) replace resin_brick_stairs[facing=north,half=bottom] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_middle) replace resin_brick_stairs[facing=east,half=bottom] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_back) replace resin_brick_stairs[facing=south,half=bottom] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_detail) replace resin_brick_stairs[facing=west,half=bottom] strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) $(yellow_flag) replace resin_brick_stairs[facing=north,half=top] strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/$(asset_id)/yellow",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block
