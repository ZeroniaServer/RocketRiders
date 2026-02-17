clone -69 190 84 -60 194 89 -69 190 86 strict replace move
clone -66 190 83 -63 190 83 -66 190 85 strict replace move
fill -70 190 85 -70 194 86 minecraft:gray_concrete strict
setblock -60 190 89 minecraft:cobbled_deepslate
setblock -60 191 89 minecraft:deepslate[axis=z]
setblock -60 192 89 minecraft:cobbled_deepslate
setblock -60 193 89 minecraft:deepslate[axis=z]
fill -69 195 85 -60 195 88 minecraft:stone strict
fill -69 189 86 -60 189 88 minecraft:polished_blackstone_bricks replace minecraft:black_concrete strict
clone -67 192 82 -62 193 83 -67 192 84 strict replace move
tp @e[limit=1,x=0,type=text_display,tag=modroomHeavy] -62.0 194.25 84.75
tp @e[limit=1,x=0,type=text_display,tag=modroomUtility] -65.0 194.25 84.75
clone -66 190 81 -63 191 81 -66 190 83 strict replace move
setblock -69 192 85 minecraft:andesite_wall[east=none,north=none,south=none,up=true,west=none] strict
setblock -69 193 85 minecraft:cobblestone_wall[east=none,north=none,south=none,up=true,west=none] strict
setblock -69 194 85 minecraft:andesite strict
setblock -69 190 85 minecraft:blackstone_slab[type=bottom]

clone -69 190 69 -60 194 72 -69 190 67 strict replace move
clone -66 190 73 -63 190 73 -66 190 71 strict replace move
fill -70 190 70 -70 194 71 minecraft:gray_concrete strict
fill -60 190 67 -60 193 67 minecraft:cobbled_deepslate strict
fill -69 195 68 -60 195 71 minecraft:stone replace minecraft:black_concrete strict
setblock -63 195 70 minecraft:stone
fill -68 189 68 -60 189 70 minecraft:polished_blackstone_bricks replace minecraft:black_concrete strict
clone -67 192 73 -62 193 74 -67 192 71 strict replace move
tp @e[limit=1,x=0,type=text_display,tag=modroomNormal] -64.5 194.25 72.25
tp @e[limit=1,x=0,type=text_display,tag=modroomLightning] -61.5 194.125 72.25
clone -66 190 75 -63 191 75 -66 190 73 strict replace move
setblock -69 192 71 minecraft:cobblestone_wall[east=none,north=none,south=none,up=true,west=none] strict
setblock -69 193 71 minecraft:andesite_wall[east=none,north=none,south=none,up=true,west=none] strict
setblock -69 194 71 minecraft:gravel strict
setblock -69 190 71 minecraft:blackstone_slab[type=bottom]

fill -67 194 73 -62 195 83 minecraft:air replace minecraft:iron_chain strict
setblock -67 194 85 minecraft:iron_chain
setblock -62 194 85 minecraft:iron_chain
setblock -67 194 71 minecraft:iron_chain
setblock -62 194 71 minecraft:iron_chain
