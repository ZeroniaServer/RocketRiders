tag @s remove SwappingSides
scoreboard players set SwapSide swapside 1
scoreboard players set SwapPlatform swapside 0

fill 15 50 -3 9 54 3 air destroy
kill @s

fill -14 34 -57 38 70 -47 blue_stained_glass replace minecraft:light_blue_stained_glass
fill -14 34 -46 38 70 -61 black_stained_glass replace minecraft:white_stained_glass
fill 38 34 -66 -14 70 -62 black_concrete replace minecraft:white_concrete

fill 38 34 47 -14 70 57 yellow_stained_glass replace minecraft:orange_stained_glass
fill -14 34 61 38 70 46 minecraft:white_stained_glass replace minecraft:black_stained_glass
fill 38 34 62 -14 70 66 minecraft:white_concrete replace minecraft:black_concrete