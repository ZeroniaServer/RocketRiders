execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run return fail

fill 38 34 52 -14 63 56 glass replace yellow_stained_glass
fill 38 34 -57 -14 63 -61 minecraft:pink_stained_glass replace cyan_stained_glass
fill -14 34 -52 38 63 -56 minecraft:red_stained_glass replace blue_stained_glass
fill 38 34 57 -14 63 61 minecraft:light_gray_stained_glass replace orange_stained_glass

fill 38 34 52 -14 63 56 glass replace yellow_stained_glass
fill 38 34 52 -14 63 56 glass replace orange_stained_glass

#Remove portals
fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air

#Flag placement
fill 12 64 65 12 71 65 oak_fence replace #custom:air
place template game:flag/checkered/stage_1 8 70 63

#Stair placement
kill @e[x=0,type=marker,tag=chaseStairs]
summon marker 10 63 66 {Tags:["chaseStairs"]}
execute positioned 10 63 66 run function rr_chase:arenaclear/stairleft
execute positioned 14 63 66 run function rr_chase:arenaclear/stairright
fill 11 63 64 13 63 62 obsidian replace white_stained_glass
execute if predicate game:modifiers/hardcore/on run fill 11 63 64 13 63 62 obsidian replace yellow_stained_glass

#Yellow Base
summon marker 36 63 52 {Tags:["ChaseChecker","ChaseChecker1"]}
summon marker 36 56 52 {Tags:["ChaseChecker","ChaseChecker2"]}
summon marker 36 49 52 {Tags:["ChaseChecker","ChaseChecker1"]}
summon marker 36 42 52 {Tags:["ChaseChecker","ChaseChecker2"]}
summon marker 36 35 52 {Tags:["ChaseChecker","ChaseChecker3"]}

execute if predicate game:modifiers/hardcore/on as @e[x=0,type=marker,tag=ChaseChecker] at @s run tp @s ~ ~ 64
fill 38 63 64 -14 34 64 glass replace yellow_stained_glass

execute as @e[x=0,type=marker,tag=ChaseChecker] at @s run function rr_chase:arenaclear/checkerboard
kill @e[x=0,type=marker,tag=ChaseChecker]

fill 37 63 56 38 57 52 minecraft:black_stained_glass
fill 38 50 56 37 56 52 minecraft:white_stained_glass
fill 38 49 56 37 43 52 minecraft:black_stained_glass
fill 38 42 56 37 36 52 minecraft:white_stained_glass
fill 38 35 56 37 34 52 minecraft:black_stained_glass

fill -13 63 56 -14 57 52 minecraft:black_stained_glass
fill -13 50 56 -14 56 52 minecraft:white_stained_glass
fill -13 49 56 -14 43 52 minecraft:black_stained_glass
fill -13 42 56 -14 36 52 minecraft:white_stained_glass
fill -13 35 56 -14 34 52 minecraft:black_stained_glass


fill -14 34 52 38 63 56 black_stained_glass replace yellow_stained_glass
fill 38 63 57 -14 34 61 light_gray_stained_glass replace orange_stained_glass
fill -14 34 66 38 63 62 white_stained_glass replace white_stained_glass

#Yellow Decorations
fill -14 84 66 38 63 48 gray_stained_glass replace yellow_stained_glass
fill -14 84 66 38 63 48 gray_stained_glass replace orange_stained_glass

fill -14 63 55 38 34 40 gray_stained_glass replace yellow_stained_glass
fill -14 63 55 38 34 40 gray_stained_glass replace orange_stained_glass

fill -14 63 39 38 34 29 gray_stained_glass replace yellow_stained_glass
fill -14 63 39 38 34 29 gray_stained_glass replace orange_stained_glass

fill -14 63 73 38 34 75 gray_stained_glass replace yellow_stained_glass
fill -14 63 73 38 34 75 gray_stained_glass replace orange_stained_glass

fill 4 64 54 4 65 52 minecraft:gray_glazed_terracotta[facing=east] replace minecraft:yellow_glazed_terracotta
fill 20 64 54 20 65 52 minecraft:gray_glazed_terracotta[facing=east] replace minecraft:yellow_glazed_terracotta

#Blue Decorations
fill -14 84 -66 38 63 -48 red_stained_glass replace blue_stained_glass
fill -14 84 -66 38 63 -48 pink_stained_glass replace cyan_stained_glass

fill 38 63 -55 -14 34 -40 red_stained_glass replace blue_stained_glass
fill 38 63 -55 -14 34 -40 pink_stained_glass replace cyan_stained_glass

fill 38 63 -39 -14 34 -29 red_stained_glass replace blue_stained_glass
fill 38 63 -39 -14 34 -29 pink_stained_glass replace cyan_stained_glass

fill -14 63 -73 38 34 -75 red_stained_glass replace blue_stained_glass
fill -14 63 -73 38 34 -75 pink_stained_glass replace cyan_stained_glass

#Hardcore bases
execute if predicate game:modifiers/hardcore/on run fill -14 63 -65 38 34 -65 pink_stained_glass replace cyan_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -14 63 -64 38 34 -64 red_stained_glass replace blue_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -14 63 65 38 34 65 gray_stained_glass replace orange_stained_glass
execute if predicate game:modifiers/hardcore/on run clone 38 63 56 -14 34 56 -14 34 64 masked move
execute if predicate game:modifiers/hardcore/on run fill 38 63 55 37 34 52 air
execute if predicate game:modifiers/hardcore/on run fill -13 63 55 -14 34 52 air

#Chase blocks
function rr_chase:chaseblocks/killall
scoreboard players set $ChaseBlocks CmdData 150
function rr_chase:chaseblocks/spawn
