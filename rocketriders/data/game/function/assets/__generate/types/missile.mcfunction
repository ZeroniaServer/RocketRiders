# asset/missile/.../blue
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void strict
$place template game:missile/$(name) -160 184 -160 none none 1 0 strict

$execute if predicate game:modifiers/unstable_tnt/on positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) tnt[unstable=true] replace tnt strict
#$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/blue run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) blue_stained_glass replace blue_stained_glass strict
#$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/blue run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) blue_glazed_terracotta replace blue_glazed_terracotta strict
#$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/blue run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) blue_concrete replace blue_concrete strict
#$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/blue run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) warped_trapdoor[facing=north,half=bottom,open=true] replace warped_trapdoor[facing=north,half=bottom,open=true] strict
#$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/blue run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) warped_fence_gate[facing=south,open=true] replace warped_fence_gate[facing=south,open=true] strict
$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/any_red_skin positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) red_stained_glass replace blue_stained_glass strict
$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/any_red_skin positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) red_glazed_terracotta replace blue_glazed_terracotta strict
$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/any_red_skin positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) red_concrete replace blue_concrete strict
$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/any_red_skin positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) mangrove_trapdoor[facing=north,half=bottom,open=true] replace warped_trapdoor[facing=north,half=bottom,open=true] strict
$execute unless predicate game:match_components/neutral_items if predicate game:blue_team_skin/any_red_skin positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) mangrove_fence_gate[facing=south,open=true] replace warped_fence_gate[facing=south,open=true] strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_stained_glass replace blue_stained_glass strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_glazed_terracotta replace blue_glazed_terracotta strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) pale_oak_trapdoor[facing=north,half=bottom,open=true] replace warped_trapdoor[facing=north,half=bottom,open=true] strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) pale_oak_fence_gate[facing=south,open=true] replace warped_fence_gate[facing=south,open=true] strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/missile/$(name)/blue",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=tnt_minecart]
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=block_display,tag=missile_delayed_tnt]

# asset/missile/.../pistons  & asset/missile/.../pistons_and_observers  &  asset/missile/.../blue_no_pistons_or_observers
$execute positioned -112 184 -160 run fill -112 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void strict
$execute positioned -161 183 -161 run clone -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) -112 184 -160 strict filtered #custom:missile_placement/pistons_and_observers move

fill -113 184 -161 -113 185 -161 air strict
$setblock -113 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/missile/$(name)/pistons_and_observers",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -113 185 -161 redstone_block

$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void replace air strict
fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/missile/$(name)/blue_no_pistons_or_observers",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/missile/.../yellow
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void strict
$place template game:missile/$(name) -160 184 -160 none none 1 0 strict

$execute if predicate game:modifiers/unstable_tnt/on positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) tnt[unstable=true] replace tnt strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/yellow positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) yellow_stained_glass replace blue_stained_glass strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/yellow positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) yellow_glazed_terracotta replace blue_glazed_terracotta strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/yellow positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) yellow_concrete replace blue_concrete strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/yellow positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) bamboo_trapdoor[facing=north,half=bottom,open=true] replace warped_trapdoor[facing=north,half=bottom,open=true] strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/yellow positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) bamboo_fence_gate[facing=south,open=true] replace warped_fence_gate[facing=south,open=true] strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/green positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) green_stained_glass replace blue_stained_glass strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/green positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) green_glazed_terracotta replace blue_glazed_terracotta strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/green positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) green_concrete replace blue_concrete strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/green positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) waxed_weathered_copper_trapdoor[facing=north,half=bottom,open=true] replace warped_trapdoor[facing=north,half=bottom,open=true] strict
$execute unless predicate game:match_components/neutral_items if predicate game:yellow_team_skin/green positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) oak_fence_gate[facing=south,open=true] replace warped_fence_gate[facing=south,open=true] strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_stained_glass replace blue_stained_glass strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_glazed_terracotta replace blue_glazed_terracotta strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_concrete replace blue_concrete strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) pale_oak_trapdoor[facing=north,half=bottom,open=true] replace warped_trapdoor[facing=north,half=bottom,open=true] strict
$execute if predicate game:match_components/neutral_items positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) pale_oak_fence_gate[facing=south,open=true] replace warped_fence_gate[facing=south,open=true] strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/missile/$(name)/yellow",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=tnt_minecart]
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=block_display,tag=missile_delayed_tnt]

# asset/missile/.../yellow_no_pistons_or_observers
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void replace #custom:missile_placement/pistons_and_observers strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/missile/$(name)/yellow_no_pistons_or_observers",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/missile/.../none
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void strict
$place template game:missile/$(name) -160 184 -160 none none 1 0 strict

$execute if predicate game:modifiers/unstable_tnt/on positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) tnt[unstable=true] replace tnt strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_stained_glass replace blue_stained_glass strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_glazed_terracotta replace blue_glazed_terracotta strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_concrete replace blue_concrete strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) pale_oak_trapdoor[facing=north,half=bottom,open=true] replace warped_trapdoor[facing=north,half=bottom,open=true] strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) pale_oak_fence_gate[facing=south,open=true] replace warped_fence_gate[facing=south,open=true] strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/missile/$(name)/none",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=tnt_minecart]
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=block_display,tag=missile_delayed_tnt]

# asset/missile/.../none_no_pistons_or_observers
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void replace #custom:missile_placement/pistons_and_observers strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/missile/$(name)/none_no_pistons_or_observers",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block
