# asset/canopy/blue
execute unless predicate game:match_components/neutral_items run function game:assets/__generate/types/__canopy/template with storage rocketriders:teams blue.team_banner
execute if predicate game:match_components/neutral_items run function game:assets/__generate/types/__canopy/white

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/canopy/blue",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:2,sizeZ:3,strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/canopy/yellow
execute unless predicate game:match_components/neutral_items run function game:assets/__generate/types/__canopy/template with storage rocketriders:teams yellow.team_banner
execute if predicate game:match_components/neutral_items run function game:assets/__generate/types/__canopy/white

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/canopy/yellow",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:2,sizeZ:3,strict:0b} strict
setblock -161 185 -161 redstone_block


# asset/canopy/none
function game:assets/__generate/types/__canopy/white

fill -161 184 -161 -161 185 -161 air strict
setblock -161 184 -161 minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"game:asset/canopy/none",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:2,sizeZ:3,strict:0b} strict
setblock -161 185 -161 redstone_block
