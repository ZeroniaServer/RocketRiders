tag @s remove SwappingSides
scoreboard players set SwapSide swapside 0
scoreboard players set SwapPlatform swapside 0

fill 15 50 -3 9 54 3 air destroy
kill @s

fill -14 34 -57 38 70 -47 light_blue_stained_glass replace minecraft:blue_stained_glass
fill -14 34 -46 38 70 -61 white_stained_glass replace minecraft:black_stained_glass
fill 38 34 -66 -14 70 -62 white_concrete replace minecraft:black_concrete

fill 38 34 47 -14 70 57 orange_stained_glass replace minecraft:yellow_stained_glass
fill -14 34 61 38 70 46 minecraft:black_stained_glass replace minecraft:white_stained_glass
fill 38 34 62 -14 70 66 minecraft:black_concrete replace minecraft:white_concrete