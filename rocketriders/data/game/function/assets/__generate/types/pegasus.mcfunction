# asset/.../blue
fill -160 184 -160 -130 200 -138 structure_void strict
place template game:pegasus -160 184 -160 none none 1 0 strict

#execute if predicate game:blue_team_skin/blue run fill -160 184 -160 -130 200 -138 blue_terracotta replace #minecraft:terracotta
execute if predicate game:blue_team_skin/any_red_skin run fill -160 184 -160 -130 200 -138 red_terracotta replace #minecraft:terracotta

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/pegasus/blue",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:31,sizeY:17,sizeZ:23,strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/.../yellow
execute if predicate game:yellow_team_skin/yellow run fill -160 184 -160 -130 200 -138 yellow_terracotta replace #minecraft:terracotta
execute if predicate game:yellow_team_skin/green run fill -160 184 -160 -130 200 -138 green_terracotta replace #minecraft:terracotta

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/pegasus/yellow",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:31,sizeY:17,sizeZ:23,strict:0b} strict
setblock -161 185 -161 redstone_block
