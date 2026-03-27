# asset/flag/stage_1/blue
fill -160 184 -160 -156 185 -159 structure_void strict
place template game:flag/normal/stage_1 -160 184 -160 none none 1 0 strict

$fill -160 184 -160 -156 185 -159 $(blue_flag) replace blue_wool strict

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/flag/stage_1/blue",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:5,sizeY:2,sizeZ:2,strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/flag/stage_2/blue
fill -160 184 -160 -156 185 -159 structure_void strict
place template game:flag/normal/stage_2 -160 184 -160 none none 1 0 strict

$fill -160 184 -160 -156 185 -159 $(blue_flag) replace blue_wool strict

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/flag/stage_2/blue",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:5,sizeY:2,sizeZ:2,strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/flag/stage_1/yellow
fill -160 184 -160 -156 185 -159 structure_void strict
execute unless predicate game:match_components/checkered_yellow_base run place template game:flag/normal/stage_1 -160 184 -160 none none 1 0 strict
execute if predicate game:match_components/checkered_yellow_base run place template game:flag/checkered/stage_1 -160 184 -160 none none 1 0 strict

$fill -160 184 -160 -156 185 -159 $(yellow_flag) replace blue_wool strict

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/flag/stage_1/yellow",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:5,sizeY:2,sizeZ:2,strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/flag/stage_2/yellow
fill -160 184 -160 -156 185 -159 structure_void strict
execute unless predicate game:match_components/checkered_yellow_base run place template game:flag/normal/stage_2 -160 184 -160 none none 1 0 strict
execute if predicate game:match_components/checkered_yellow_base run place template game:flag/checkered/stage_2 -160 184 -160 none none 1 0 strict

$fill -160 184 -160 -156 185 -159 $(yellow_flag) replace blue_wool strict

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/flag/stage_2/yellow",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:5,sizeY:2,sizeZ:2,strict:0b} strict
setblock -161 185 -161 redstone_block
