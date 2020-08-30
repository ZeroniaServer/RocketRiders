function arenaclear:baseplacement
function arenaclear:detailplacement

#Remove portals
fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air

#Flag placement
fill 12 64 65 12 71 65 oak_fence replace air
setblock 12 71 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:finish_flag1"}
setblock 12 70 64 minecraft:redstone_block

#No portals in pregame queue
fill -89 201 97 -101 195 97 barrier
fill -89 201 59 -101 195 59 barrier

#Banner in pregame queue
setblock -95 202 95 white_banner[rotation=8]{Patterns:[{Pattern:"vhr",Color:15},{Pattern:"tl",Color:15},{Pattern:"bl",Color:15},{Pattern:"tr",Color:0},{Pattern:"br",Color:0}]}