tag @s remove SwappingSides
scoreboard players set $swap_side global 0
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0

function rr_swap:baseswap/observerconvert1

execute unless predicate game:gamemode_components/red_for_blue run fill -14 34 -56 38 63 -52 light_blue_stained_glass replace minecraft:blue_stained_glass
execute if predicate game:gamemode_components/red_for_blue run fill -14 34 -56 38 63 -52 pink_stained_glass replace minecraft:red_stained_glass

execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=1}] run fill 11 43 -53 13 43 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=1}] run fill 9 41 -52 15 41 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=1}] run fill 10 40 -52 14 40 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=1}] run fill 12 39 -52 12 39 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=3}] run fill 11 43 -53 13 43 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=3}] run fill 9 41 -52 15 41 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=3}] run fill 10 40 -52 14 40 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=3}] run fill 12 39 -52 12 39 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=3}] run fill 8 42 -52 8 42 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={BottomDeco=3}] run fill 16 42 -52 16 42 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=1}] run fill -5 53 -53 -3 53 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=1}] run fill -7 51 -52 -1 51 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=1}] run fill -6 50 -52 -2 50 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=1}] run fill -4 49 -52 -4 49 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=1}] run fill 27 53 -53 29 53 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=1}] run fill 25 51 -52 31 51 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=1}] run fill 26 50 -52 30 50 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=1}] run fill 28 49 -52 28 49 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute unless predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=3}] run fill -14 34 -51 38 63 -49 light_blue_stained_glass replace minecraft:blue_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={MiddleDeco=3}] run fill -14 34 -51 38 63 -49 pink_stained_glass replace minecraft:red_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=1}] run fill 5 63 -52 3 63 -53 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=1}] run fill 21 63 -52 19 63 -53 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=2}] run fill -1 63 -52 4 63 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=2}] run fill 20 63 -52 25 63 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=3}] run fill 3 63 -54 5 64 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=3}] run fill 4 63 -53 4 63 -53 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=3}] run fill 2 61 -52 6 61 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=3}] run fill 3 60 -52 5 60 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=3}] run fill 19 63 -54 21 64 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=3}] run fill 20 63 -53 20 63 -53 minecraft:pink_stained_glass replace minecraft:red_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=3}] run fill 18 61 -52 22 61 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass
execute if predicate game:gamemode_components/red_for_blue if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={TopCorner=3}] run fill 19 60 -52 21 60 -52 minecraft:red_stained_glass replace minecraft:pink_stained_glass

fill -14 34 -57 38 63 -61 white_stained_glass replace minecraft:black_stained_glass
fill 38 34 -73 -14 63 -62 white_concrete replace minecraft:black_concrete

# fill 38 34 52 -14 63 56 orange_stained_glass replace minecraft:yellow_stained_glass
fill -14 34 61 38 63 57 minecraft:orange_stained_glass replace minecraft:white_stained_glass
fill 38 34 62 -14 63 73 minecraft:black_concrete replace minecraft:white_concrete

execute if predicate game:modifiers/hardcore/on run fill -14 63 73 38 34 66 black_concrete replace white_concrete
execute if predicate game:modifiers/hardcore/on run fill -14 63 65 38 34 65 orange_stained_glass replace white_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -14 63 -73 38 34 -66 white_concrete replace black_concrete
execute if predicate game:modifiers/hardcore/on run fill -14 63 -65 38 34 -65 white_stained_glass replace black_stained_glass
execute if predicate game:modifiers/hardcore/on unless predicate game:gamemode_components/red_for_blue run fill -14 63 -64 38 34 -64 light_blue_stained_glass replace blue_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate game:gamemode_components/red_for_blue run fill -14 63 -64 38 34 -64 pink_stained_glass replace red_stained_glass

function rr_swap:baseswap/observerconvert2

#Visual titles and subtitles.
schedule function rr_swap:baseswap/visuals_indimension 60t

#tetris resets
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_swap:items/tetrisreset

#armor
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor