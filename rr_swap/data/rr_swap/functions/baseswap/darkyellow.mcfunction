tag @s remove SwappingSides
scoreboard players set SwapSide swapside 0
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0

fill -14 34 -56 38 63 -52 light_blue_stained_glass replace minecraft:blue_stained_glass
execute if entity @s[scores={TopCorner=2}] run fill -14 34 -51 38 63 -49 light_blue_stained_glass replace minecraft:blue_stained_glass
fill -14 34 -57 38 63 -61 white_stained_glass replace minecraft:black_stained_glass
fill 38 34 -66 -14 63 -62 white_concrete replace minecraft:black_concrete

# fill 38 34 52 -14 63 56 orange_stained_glass replace minecraft:yellow_stained_glass
fill -14 34 61 38 63 57 minecraft:orange_stained_glass replace minecraft:white_stained_glass
fill 38 34 62 -14 63 66 minecraft:black_concrete replace minecraft:white_concrete