function arenaclear:baseplacement

#bases
summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap","DarkBlue"],Duration:1000}
summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap","DarkYellow"],Duration:1000}
tag @e[tag=RNGSwap,limit=1,sort=random] add SelectRNGSwap
execute as @e[tag=DarkBlue,tag=SelectRNGSwap] run scoreboard players set SwapSide swapside 1
execute as @e[tag=DarkYellow,tag=SelectRNGSwap] run scoreboard players set SwapSide swapside 0
kill @e[tag=RNGSwap]

function arenaclear:detailplacement

#1 = darkblue
# execute if score SwapSide swapside matches 1 run fill -14 34 -52 38 63 -56 minecraft:blue_stained_glass replace minecraft:blue_stained_glass
execute if score SwapSide swapside matches 1 run fill 38 34 -61 -14 63 -57 minecraft:black_stained_glass replace minecraft:cyan_stained_glass
execute if score SwapSide swapside matches 1 run fill -14 34 -62 38 63 -66 minecraft:black_concrete replace minecraft:white_stained_glass

# execute if score SwapSide swapside matches 1 run fill 38 34 52 -14 63 56 minecraft:yellow_stained_glass replace minecraft:yellow_stained_glass
execute if score SwapSide swapside matches 1 run fill -14 63 57 38 34 61 minecraft:white_stained_glass replace minecraft:orange_stained_glass
execute if score SwapSide swapside matches 1 run fill 38 34 62 -14 63 66 minecraft:white_concrete replace minecraft:white_stained_glass

#0 = darkyellow
execute if score SwapSide swapside matches 0 run fill -14 34 -52 38 63 -56 minecraft:light_blue_stained_glass replace minecraft:blue_stained_glass
execute if score SwapSide swapside matches 0 run fill 38 34 -61 -14 63 -57 minecraft:white_stained_glass replace minecraft:cyan_stained_glass
execute if score SwapSide swapside matches 0 run fill -14 34 -62 38 63 -66 minecraft:white_concrete replace minecraft:white_stained_glass

# execute if score SwapSide swapside matches 0 run fill 38 34 52 -14 63 56 minecraft:orange_stained_glass replace minecraft:yellow_stained_glass
# execute if score SwapSide swapside matches 0 run fill -14 63 57 38 34 61 minecraft:black_stained_glass replace minecraft:orange_stained_glass
execute if score SwapSide swapside matches 0 run fill 38 34 62 -14 63 66 minecraft:black_concrete replace minecraft:white_stained_glass

bossbar set rr_swap:swap_progress players none
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0
scoreboard players set BossbarB swapside 0