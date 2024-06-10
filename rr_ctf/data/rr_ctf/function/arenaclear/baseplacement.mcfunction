function arenaclear:baseplacement

function arenaclear:detailplacement

#Remove portals
fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air

##Concrete bases
#Yellow Base
fill -14 34 52 38 63 56 yellow_concrete replace yellow_stained_glass
fill 38 63 57 -14 34 61 orange_concrete replace orange_stained_glass
fill -14 34 66 38 63 62 end_stone replace white_stained_glass

#Yellow Decorations
fill -14 84 66 38 63 48 yellow_concrete replace yellow_stained_glass
fill -14 84 66 38 63 48 orange_concrete replace orange_stained_glass
fill -14 84 66 38 63 48 end_stone replace white_stained_glass
fill -14 84 66 38 63 48 black_concrete replace black_stained_glass

fill -14 63 55 38 34 40 yellow_concrete replace yellow_stained_glass
fill -14 63 55 38 34 40 orange_concrete replace orange_stained_glass
fill -14 63 55 38 34 40 end_stone replace white_stained_glass
fill -14 63 55 38 34 40 black_concrete replace black_stained_glass

fill -14 63 39 38 34 29 yellow_concrete replace yellow_stained_glass
fill -14 63 39 38 34 29 orange_concrete replace orange_stained_glass
fill -14 63 39 38 34 29 end_stone replace white_stained_glass
fill -14 63 39 38 34 29 black_concrete replace black_stained_glass

fill -14 63 73 38 34 75 yellow_concrete replace yellow_stained_glass
fill -14 63 73 38 34 75 orange_concrete replace orange_stained_glass
fill -14 63 73 38 34 75 end_stone replace white_stained_glass
fill -14 63 73 38 34 75 black_concrete replace black_stained_glass

#Blue Base
fill -14 34 -52 38 63 -56 blue_concrete replace blue_stained_glass
fill 38 63 -61 -14 34 -57 cyan_concrete replace cyan_stained_glass
fill -14 34 -62 38 63 -66 end_stone replace white_stained_glass

#Blue Decorations
fill -14 84 -66 38 63 -48 blue_concrete replace blue_stained_glass
fill -14 84 -66 38 63 -48 cyan_concrete replace cyan_stained_glass
fill -14 84 -66 38 63 -48 end_stone replace white_stained_glass
fill -14 84 -66 38 63 -48 black_concrete replace black_stained_glass

fill 38 63 -55 -14 34 -40 blue_concrete replace blue_stained_glass
fill 38 63 -55 -14 34 -40 cyan_concrete replace cyan_stained_glass
fill 38 63 -55 -14 34 -40 end_stone replace white_stained_glass
fill 38 63 -55 -14 34 -40 black_concrete replace black_stained_glass

fill 38 63 -39 -14 34 -29 blue_concrete replace blue_stained_glass
fill 38 63 -39 -14 34 -29 cyan_concrete replace cyan_stained_glass
fill 38 63 -39 -14 34 -29 end_stone replace white_stained_glass
fill 38 63 -39 -14 34 -29 black_concrete replace black_stained_glass

fill -14 63 -73 38 34 -75 blue_concrete replace blue_stained_glass
fill -14 63 -73 38 34 -75 cyan_concrete replace cyan_stained_glass
fill -14 63 -73 38 34 -75 end_stone replace white_stained_glass
fill -14 63 -73 38 34 -75 black_concrete replace black_stained_glass

#Flag placement
function rr_ctf:arenaclear/flagplacement

#Obsidian -> bedrock
fill -15 64 67 -15 33 67 minecraft:bedrock
fill -15 33 67 39 33 67 minecraft:bedrock
fill 39 33 67 39 64 67 minecraft:bedrock
fill 39 64 67 -15 64 67 minecraft:bedrock
fill 39 64 -67 -15 64 -67 minecraft:bedrock
fill -15 64 -67 -15 33 -67 minecraft:bedrock
fill -15 33 -67 39 33 -67 minecraft:bedrock
fill 39 33 -67 39 64 -67 minecraft:bedrock
fill 10 64 -67 14 64 -67 obsidian
fill 10 64 67 14 64 67 obsidian
fill -15 64 69 39 64 68 bedrock
fill -15 64 -69 39 64 -68 bedrock

#Pregame queue
fill -89 201 96 -101 195 95 end_stone
fill -89 201 94 -101 195 93 orange_concrete
fill -89 201 91 -101 195 92 yellow_concrete
fill -89 201 60 -101 195 61 end_stone
fill -89 201 62 -101 195 63 cyan_concrete
fill -89 201 64 -101 195 65 blue_concrete
fill -102 202 97 -88 194 97 bedrock replace obsidian
fill -102 202 59 -88 194 59 bedrock replace obsidian
fill -88 202 98 -102 202 98 bedrock replace barrier
fill -88 202 98 -102 202 98 bedrock replace barrier
fill -88 202 58 -102 202 58 bedrock replace barrier
setblock -90 202 95 purple_stained_glass
setblock -100 202 95 purple_stained_glass
setblock -90 202 61 purple_stained_glass
setblock -100 202 61 purple_stained_glass
fill -89 203 97 -101 203 97 air
fill -101 203 59 -89 203 59 air

#No portals in pregame queue
fill -89 201 97 -101 195 97 barrier
fill -89 201 59 -101 195 59 barrier