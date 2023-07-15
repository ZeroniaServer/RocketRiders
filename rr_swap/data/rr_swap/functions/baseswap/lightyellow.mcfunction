tag @s remove SwappingSides
scoreboard players set SwapSide swapside 1
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0

function rr_swap:baseswap/observerconvert1

fill -14 34 -56 38 63 -52 blue_stained_glass replace minecraft:light_blue_stained_glass
execute if entity @e[type=armor_stand,tag=Selection,scores={MiddleDeco=3}] run fill -14 34 -51 38 63 -49 blue_stained_glass replace minecraft:light_blue_stained_glass
fill -14 34 -57 38 63 -61 black_stained_glass replace minecraft:white_stained_glass
fill 38 34 -73 -14 63 -62 black_concrete replace minecraft:white_concrete

# fill 38 34 52 -14 63 56 yellow_stained_glass replace minecraft:orange_stained_glass
fill -14 34 61 38 63 57 minecraft:white_stained_glass replace minecraft:orange_stained_glass
fill 38 34 62 -14 63 73 minecraft:white_concrete replace minecraft:black_concrete

execute if entity @e[type=armor_stand,tag=Selection,tag=Hardcore] run fill -14 63 73 38 34 66 white_concrete replace black_concrete
execute if entity @e[type=armor_stand,tag=Selection,tag=Hardcore] run fill -14 63 65 38 34 65 white_stained_glass replace orange_stained_glass
execute if entity @e[type=armor_stand,tag=Selection,tag=Hardcore] run fill -14 63 -73 38 34 -66 black_concrete replace white_concrete
execute if entity @e[type=armor_stand,tag=Selection,tag=Hardcore] run fill -14 63 -65 38 34 -65 black_stained_glass replace white_stained_glass
execute if entity @e[type=armor_stand,tag=Selection,tag=Hardcore] run fill -14 63 -64 38 34 -64 blue_stained_glass replace light_blue_stained_glass

function rr_swap:baseswap/observerconvert2

#Visual titles and subtitles.
schedule function rr_swap:baseswap/visuals 60t

#tetris resets
execute as @e[type=armor_stand,tag=Selection] run function rr_swap:items/tetrisreset

#armor
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=!Lobby,team=!Spectator] run function rr_swap:baseswap/gear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=!Lobby,team=!Spectator] run function servermode:giveswapgear