function arenaclear:baseplacement
function arenaclear:detailplacement

#Remove portals
fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air

##Concrete bases
#Yellow Base
fill -14 34 52 38 63 56 yellow_concrete replace yellow_stained_glass
fill 38 63 57 -14 34 61 orange_concrete replace orange_stained_glass
fill -14 34 66 38 63 62 white_concrete replace white_stained_glass

#Yellow Decorations
fill -14 84 66 38 63 48 yellow_concrete replace yellow_stained_glass
fill -14 84 66 38 63 48 orange_concrete replace orange_stained_glass
fill -14 84 66 38 63 48 white_concrete replace white_stained_glass
fill -14 84 66 38 63 48 black_concrete replace black_stained_glass

fill -14 63 55 38 34 40 yellow_concrete replace yellow_stained_glass
fill -14 63 55 38 34 40 orange_concrete replace orange_stained_glass
fill -14 63 55 38 34 40 white_concrete replace white_stained_glass
fill -14 63 55 38 34 40 black_concrete replace black_stained_glass

fill -14 63 39 38 34 29 yellow_concrete replace yellow_stained_glass
fill -14 63 39 38 34 29 orange_concrete replace orange_stained_glass
fill -14 63 39 38 34 29 white_concrete replace white_stained_glass
fill -14 63 39 38 34 29 black_concrete replace black_stained_glass

fill -14 63 73 38 34 75 yellow_concrete replace yellow_stained_glass
fill -14 63 73 38 34 75 orange_concrete replace orange_stained_glass
fill -14 63 73 38 34 75 white_concrete replace white_stained_glass
fill -14 63 73 38 34 75 black_concrete replace black_stained_glass

#Blue Base
fill -14 34 -52 38 63 -56 blue_concrete replace blue_stained_glass
fill 38 63 -61 -14 34 -57 cyan_concrete replace cyan_stained_glass
fill -14 34 -62 38 63 -66 white_concrete replace white_stained_glass

#Blue Decorations
fill -14 84 -66 38 63 -48 blue_concrete replace blue_stained_glass
fill -14 84 -66 38 63 -48 cyan_concrete replace cyan_stained_glass
fill -14 84 -66 38 63 -48 white_concrete replace white_stained_glass
fill -14 84 -66 38 63 -48 black_concrete replace black_stained_glass

fill 38 63 -55 -14 34 -40 blue_concrete replace blue_stained_glass
fill 38 63 -55 -14 34 -40 cyan_concrete replace cyan_stained_glass
fill 38 63 -55 -14 34 -40 white_concrete replace white_stained_glass
fill 38 63 -55 -14 34 -40 black_concrete replace black_stained_glass

fill 38 63 -39 -14 34 -29 blue_concrete replace blue_stained_glass
fill 38 63 -39 -14 34 -29 cyan_concrete replace cyan_stained_glass
fill 38 63 -39 -14 34 -29 white_concrete replace white_stained_glass
fill 38 63 -39 -14 34 -29 black_concrete replace black_stained_glass

fill -14 63 -73 38 34 -75 blue_concrete replace blue_stained_glass
fill -14 63 -73 38 34 -75 cyan_concrete replace cyan_stained_glass
fill -14 63 -73 38 34 -75 white_concrete replace white_stained_glass
fill -14 63 -73 38 34 -75 black_concrete replace black_stained_glass

#Flag placement
function rr_ctf:arenaclear/flagplacement

#Pregame queue
fill -89 201 96 -101 195 95 white_concrete
fill -89 201 94 -101 195 93 orange_concrete
fill -89 201 91 -101 195 92 yellow_concrete
setblock -90 202 95 yellow_banner[rotation=8]
setblock -100 202 95 yellow_banner[rotation=8]
fill -89 201 60 -101 195 61 white_concrete
fill -89 201 62 -101 195 63 cyan_concrete
fill -89 201 64 -101 195 65 blue_concrete
setblock -100 202 61 blue_banner[rotation=0]
setblock -90 202 61 blue_banner[rotation=0]