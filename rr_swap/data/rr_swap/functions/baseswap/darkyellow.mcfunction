tag @s remove SwappingSides
scoreboard players set SwapSide swapside 0
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0

fill -14 34 -56 38 63 -52 light_blue_stained_glass replace minecraft:blue_stained_glass
execute if entity @e[tag=Selection,scores={MiddleDeco=3},type=armor_stand] run fill -14 34 -51 38 63 -49 light_blue_stained_glass replace minecraft:blue_stained_glass
fill -14 34 -57 38 63 -61 white_stained_glass replace minecraft:black_stained_glass
fill 38 34 -73 -14 63 -62 white_concrete replace minecraft:black_concrete

# fill 38 34 52 -14 63 56 orange_stained_glass replace minecraft:yellow_stained_glass
fill -14 34 61 38 63 57 minecraft:orange_stained_glass replace minecraft:white_stained_glass
fill 38 34 62 -14 63 73 minecraft:black_concrete replace minecraft:white_concrete

execute if entity @e[tag=Selection,tag=Hardcore,type=armor_stand] run fill -14 63 66 38 34 66 black_concrete replace white_concrete
execute if entity @e[tag=Selection,tag=Hardcore,type=armor_stand] run fill -14 63 65 38 34 65 orange_stained_glass replace white_stained_glass
execute if entity @e[tag=Selection,tag=Hardcore,type=armor_stand] run fill -14 63 -66 38 34 -66 white_concrete replace black_concrete
execute if entity @e[tag=Selection,tag=Hardcore,type=armor_stand] run fill -14 63 -65 38 34 -65 white_stained_glass replace black_stained_glass
execute if entity @e[tag=Selection,tag=Hardcore,type=armor_stand] run fill -14 63 -64 38 34 -64 light_blue_stained_glass replace blue_stained_glass