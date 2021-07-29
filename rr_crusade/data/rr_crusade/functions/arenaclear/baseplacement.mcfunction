#> Disabled, Crusade uses a custom map.
#function arenaclear:baseplacement
#function arenaclear:detailplacement

#> Pregame bases
fill -101 201 65 -89 195 64 deepslate_bricks
fill -101 201 60 -101 195 63 deepslate_bricks
fill -89 195 60 -89 201 63 deepslate_bricks
setblock -89 202 62 deepslate_bricks
setblock -89 202 65 deepslate_bricks
setblock -92 202 65 deepslate_bricks
setblock -95 202 65 deepslate_bricks
setblock -98 202 65 deepslate_bricks
setblock -101 202 65 deepslate_bricks
setblock -101 202 62 deepslate_bricks
fill -101 195 91 -89 201 92 deepslate_bricks
fill -89 201 93 -89 195 96 deepslate_bricks
fill -101 195 96 -101 201 91 deepslate_bricks
fill -102 194 97 -88 202 97 obsidian
fill -102 202 59 -88 194 59 minecraft:obsidian
setblock -101 202 94 deepslate_bricks
setblock -101 202 91 deepslate_bricks
setblock -98 202 91 deepslate_bricks
setblock -95 202 91 deepslate_bricks
setblock -92 202 91 deepslate_bricks
setblock -89 202 91 deepslate_bricks
setblock -89 202 94 deepslate_bricks
fill -101 200 85 -99 202 85 bedrock
fill -91 200 85 -89 202 85 bedrock
fill -101 200 84 -99 202 84 yellow_stained_glass
fill -91 200 84 -89 202 84 yellow_stained_glass
fill -99 200 72 -101 202 72 bedrock
fill -91 200 72 -89 202 72 bedrock
fill -99 200 73 -101 202 73 blue_stained_glass
fill -91 200 73 -89 202 73 blue_stained_glass
fill -94 198 91 -96 200 91 minecraft:crying_obsidian
fill -96 198 65 -94 200 65 minecraft:crying_obsidian

fill 35 36 75 -11 59 73 air
fill 36 36 -73 -12 59 -75 air

#> Yellow
fill -14 34 52 38 63 56 deepslate_bricks
fill 38 34 57 34 63 66 deepslate_bricks
fill -14 34 57 -10 63 66 deepslate_bricks
#
fill 38 64 52 34 68 56 minecraft:deepslate_bricks
fill 30 64 52 26 68 56 deepslate_bricks
fill 22 64 52 18 68 56 deepslate_bricks
fill 14 64 52 10 68 56 minecraft:deepslate_bricks
fill 6 64 52 2 68 56 deepslate_bricks
fill -2 64 56 -6 68 52 minecraft:deepslate_bricks
fill -10 64 56 -14 68 52 deepslate_bricks
fill -10 64 62 -14 68 66 deepslate_bricks
fill 38 64 62 34 68 66 deepslate_bricks
#
fill 36 64 57 36 68 57 ladder[facing=south]
fill 12 64 57 12 68 57 ladder[facing=south]
fill -12 64 57 -12 68 57 ladder[facing=south]
#Objectives
#Main
fill 10 52 52 14 56 66 minecraft:crying_obsidian
#A
fill -3 57 37 3 63 37 bedrock
fill 3 63 39 -3 63 38 bedrock
fill 2 62 32 -2 58 36 minecraft:yellow_stained_glass
fill 4 57 37 4 63 37 ladder[facing=east]
#B
fill 21 57 37 27 63 37 bedrock
fill 27 63 38 21 63 39 bedrock
fill 26 58 32 22 62 36 minecraft:yellow_stained_glass
fill 20 57 37 20 63 37 ladder[facing=west]


#> Blue
fill -14 34 -52 38 63 -56 deepslate_bricks
fill 38 34 -66 34 63 -57 deepslate_bricks
fill -14 34 -66 -10 63 -57 deepslate_bricks
#
fill 38 64 -52 34 68 -56 deepslate_bricks
fill 30 64 -52 26 68 -56 deepslate_bricks
fill 22 64 -52 18 68 -56 deepslate_bricks
fill 14 64 -52 10 68 -56 deepslate_bricks
fill 6 64 -52 2 68 -56 deepslate_bricks
fill -2 64 -52 -6 68 -56 deepslate_bricks
fill -10 64 -52 -14 68 -56 deepslate_bricks
fill -10 64 -62 -14 68 -66 deepslate_bricks
fill 38 64 -62 34 68 -66 deepslate_bricks
#
fill 36 64 -57 36 68 -57 ladder[facing=north]
fill 12 64 -57 12 68 -57 ladder[facing=north]
fill -12 64 -57 -12 68 -57 ladder[facing=north]
#Objectives
#Main
fill 10 56 -66 14 52 -52 minecraft:crying_obsidian
#A
fill 27 57 -33 21 63 -33 bedrock
fill 21 63 -34 27 63 -35 bedrock
fill 26 58 -28 22 62 -32 minecraft:blue_stained_glass
fill 20 57 -33 20 63 -33 ladder[facing=west]
#B
fill 3 57 -33 -3 63 -33 bedrock
fill -3 63 -34 3 63 -35 bedrock
fill 2 58 -28 -2 62 -32 minecraft:blue_stained_glass
fill 4 57 -33 4 63 -33 ladder[facing=east]



#> Bridges
function rr_crusade:arenaclear/bridgeplacement