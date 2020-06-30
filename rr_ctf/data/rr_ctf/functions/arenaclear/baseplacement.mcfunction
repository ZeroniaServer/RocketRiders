function arenaclear:baseplacement
function arenaclear:detailplacement

#remove portals
fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air

##concrete bases
#Yellow Base
fill -14 34 52 38 63 56 minecraft:yellow_concrete replace yellow_stained_glass
fill 38 63 57 -14 34 61 minecraft:orange_concrete replace orange_stained_glass
fill -14 34 66 38 63 62 white_concrete replace white_stained_glass

#Set Blue Base
fill -14 34 -52 38 63 -56 blue_concrete replace blue_stained_glass
fill 38 63 -61 -14 34 -57 minecraft:cyan_concrete replace cyan_stained_glass
fill -14 34 -62 38 63 -66 minecraft:white_concrete replace white_stained_glass


function rr_ctf:arenaclear/flagplacement