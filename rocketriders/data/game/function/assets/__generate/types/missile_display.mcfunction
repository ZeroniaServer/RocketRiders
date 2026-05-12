# asset/missile/.../display
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void strict
$place template game:missile/$(name) -160 184 -160 none none 1 0 strict

$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_stained_glass replace blue_stained_glass strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_glazed_terracotta replace blue_glazed_terracotta strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_concrete replace blue_concrete strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) white_terracotta replace blue_terracotta strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) pale_oak_trapdoor[facing=north,half=bottom,open=true] replace warped_trapdoor[facing=north,half=bottom,open=true] strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) pale_oak_fence_gate[facing=south,open=true] replace warped_fence_gate[facing=south,open=true] strict
execute at @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=block_display,tag=missile_delayed_tnt] run setblock ~ ~ ~ tnt strict
$execute positioned -161 183 -161 run fill -160 184 -160 ~$(x_length) ~$(y_length) ~$(z_length) structure_void replace air strict

fill -161 184 -161 -161 185 -161 air strict
$setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/missile/$(name)/display",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:$(x_length),sizeY:$(y_length),sizeZ:$(z_length),strict:0b} strict
setblock -161 185 -161 redstone_block
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=tnt_minecart]
kill @e[x=-161,y=183,z=-161,dx=49,dy=49,dz=49,type=block_display,tag=missile_delayed_tnt]
