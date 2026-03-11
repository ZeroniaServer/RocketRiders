# asset/.../blue_cutout
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) structure_void strict
$place template game:$(asset_id) -160 184 -160 none none 1 0 strict
$execute positioned -113 183 -161 run fill ~1 ~1 ~1 ~$(x_length) ~$(y_length) ~$(z_length) resin_bricks strict
$clone -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) -112 184 -160 strict filtered structure_void
$execute positioned -113 183 -161 run fill ~1 ~1 ~1 ~$(x_length) ~$(y_length) ~$(z_length) air replace structure_void strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) air strict
$execute positioned -113 183 -161 run clone ~1 ~1 ~1 ~$(x_length) ~$(y_length) ~$(z_length) -160 184 -160 strict filtered resin_bricks
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) structure_void replace resin_bricks strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/$(asset_id)/blue_cutout",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/.../yellow_cutout
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) structure_void strict
$scoreboard players set $rotate_yellow var $(rotate_yellow)
$execute if score $rotate_yellow var matches 0 positioned -161 184 -161 run place template game:$(asset_id) -160 184 -160 none none 1 0 strict
$execute if score $rotate_yellow var matches 1 positioned -161 184 -161 run place template game:$(asset_id) ~$(x_length) ~ ~$(z_length) 180 none 1 0 strict

$execute positioned -113 183 -161 run fill ~1 ~1 ~1 ~$(x_length) ~$(y_length) ~$(z_length) resin_bricks strict
$clone -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) -112 184 -160 strict filtered structure_void
$execute positioned -113 183 -161 run fill ~1 ~1 ~1 ~$(x_length) ~$(y_length) ~$(z_length) air replace structure_void strict
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) air strict
$execute positioned -113 183 -161 run clone ~1 ~1 ~1 ~$(x_length) ~$(y_length) ~$(z_length) -160 184 -160 strict filtered resin_bricks
$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) structure_void replace resin_bricks strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/$(asset_id)/yellow_cutout",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block
