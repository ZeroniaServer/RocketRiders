# asset/shield/stage_*/blue
fill -160 184 -160 -154 190 -160 structure_void strict
execute if predicate game:shield_type/normal run place template game:shield/normal -160 184 -160 none none 1 0 strict
execute if predicate game:shield_type/checkered run place template game:shield/checkered -160 184 -160 none none 1 0 strict
execute if predicate game:shield_type/classic run place template game:shield/classic -160 184 -160 none none 1 0 strict

fill -160 184 -160 -154 190 -160 resin_brick_stairs[facing=north,half=bottom] replace cyan_stained_glass strict
fill -160 184 -160 -154 190 -160 resin_brick_stairs[facing=east,half=bottom] replace blue_stained_glass strict
$execute unless predicate game:match_components/neutral_items run fill -160 184 -160 -154 190 -160 $(blue_shield_center_stained_glass) replace resin_brick_stairs[facing=north,half=bottom] strict
$execute unless predicate game:match_components/neutral_items run fill -160 184 -160 -154 190 -160 $(blue_shield_accent_stained_glass) replace resin_brick_stairs[facing=east,half=bottom] strict
execute if predicate game:match_components/neutral_items run fill -160 184 -160 -154 190 -160 white_stained_glass replace resin_brick_stairs[facing=north,half=bottom] strict
execute if predicate game:match_components/neutral_items run fill -160 184 -160 -154 190 -160 light_gray_stained_glass replace resin_brick_stairs[facing=east,half=bottom] strict

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_3/blue",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:7,sizeY:7,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block
setblock -155 189 -160 structure_void strict
setblock -159 189 -160 structure_void strict
setblock -159 185 -160 structure_void strict
setblock -155 185 -160 structure_void strict
fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_2/blue",posX:2,posY:1,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:5,sizeY:5,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block
fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_1/blue",posX:3,posY:2,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:3,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/shield/stage_*/yellow
fill -160 184 -160 -154 190 -160 structure_void strict
execute if predicate game:shield_type/normal run place template game:shield/normal -160 184 -160 none none 1 0 strict
execute if predicate game:shield_type/checkered run place template game:shield/checkered -160 184 -160 none none 1 0 strict
execute if predicate game:shield_type/classic run place template game:shield/classic -160 184 -160 none none 1 0 strict

fill -160 184 -160 -154 190 -160 resin_brick_stairs[facing=north,half=bottom] replace cyan_stained_glass strict
fill -160 184 -160 -154 190 -160 resin_brick_stairs[facing=east,half=bottom] replace blue_stained_glass strict
$execute unless predicate game:match_components/neutral_items run fill -160 184 -160 -154 190 -160 $(yellow_shield_center_stained_glass) replace resin_brick_stairs[facing=north,half=bottom] strict
$execute unless predicate game:match_components/neutral_items run fill -160 184 -160 -154 190 -160 $(yellow_shield_accent_stained_glass) replace resin_brick_stairs[facing=east,half=bottom] strict
execute if predicate game:match_components/neutral_items run fill -160 184 -160 -154 190 -160 white_stained_glass replace resin_brick_stairs[facing=north,half=bottom] strict
execute if predicate game:match_components/neutral_items run fill -160 184 -160 -154 190 -160 light_gray_stained_glass replace resin_brick_stairs[facing=east,half=bottom] strict

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_3/yellow",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:7,sizeY:7,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block
setblock -155 189 -160 structure_void strict
setblock -159 189 -160 structure_void strict
setblock -159 185 -160 structure_void strict
setblock -155 185 -160 structure_void strict
fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_2/yellow",posX:2,posY:1,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:5,sizeY:5,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block
fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_1/yellow",posX:3,posY:2,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:3,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/shield/stage_*/none
fill -160 184 -160 -154 190 -160 structure_void strict
execute if predicate game:shield_type/normal run place template game:shield/normal -160 184 -160 none none 1 0 strict
execute if predicate game:shield_type/checkered run place template game:shield/checkered -160 184 -160 none none 1 0 strict
execute if predicate game:shield_type/classic run place template game:shield/classic -160 184 -160 none none 1 0 strict

fill -160 184 -160 -154 190 -160 white_stained_glass replace cyan_stained_glass strict
fill -160 184 -160 -154 190 -160 light_gray_stained_glass replace blue_stained_glass strict

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_3/none",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:7,sizeY:7,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block
setblock -155 189 -160 structure_void strict
setblock -159 189 -160 structure_void strict
setblock -159 185 -160 structure_void strict
setblock -155 185 -160 structure_void strict
fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_2/none",posX:2,posY:1,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:5,sizeY:5,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block
fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/shield/stage_1/none",posX:3,posY:2,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:3,sizeZ:1,strict:0b} strict
setblock -161 185 -161 redstone_block
