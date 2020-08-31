function arenaclear:baseplacement

#Bases
summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap","DarkBlue"],Duration:1000}
summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap","DarkYellow"],Duration:1000}
tag @e[tag=RNGSwap,limit=1,sort=random,type=area_effect_cloud] add SelectRNGSwap
execute as @e[tag=DarkBlue,tag=SelectRNGSwap,type=area_effect_cloud] run scoreboard players set SwapSide swapside 1
execute as @e[tag=DarkYellow,tag=SelectRNGSwap,type=area_effect_cloud] run scoreboard players set SwapSide swapside 0
kill @e[tag=RNGSwap,type=area_effect_cloud]

function arenaclear:detailplacement

#1 = darkblue
execute if score SwapSide swapside matches 1 run fill 38 34 -61 -14 63 -57 black_stained_glass replace cyan_stained_glass
execute if score SwapSide swapside matches 1 run fill -14 34 -62 38 63 -66 black_concrete replace white_stained_glass
execute if score SwapSide swapside matches 1 run fill -14 63 57 38 34 61 white_stained_glass replace orange_stained_glass
execute if score SwapSide swapside matches 1 run fill 38 34 62 -14 63 66 white_concrete replace white_stained_glass

#0 = darkyellow
execute if score SwapSide swapside matches 0 run fill -14 34 -52 38 63 -56 light_blue_stained_glass replace blue_stained_glass
execute if score SwapSide swapside matches 0 if entity @s[scores={MiddleDeco=3}] run fill -14 34 -51 38 63 -49 light_blue_stained_glass replace blue_stained_glass
execute if score SwapSide swapside matches 0 run fill 38 34 -61 -14 63 -57 white_stained_glass replace cyan_stained_glass
execute if score SwapSide swapside matches 0 run fill -14 34 -62 38 63 -66 white_concrete replace white_stained_glass
execute if score SwapSide swapside matches 0 run fill 38 34 62 -14 63 66 black_concrete replace white_stained_glass

#Hardcore bases
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 1 run fill -14 63 66 38 34 66 white_concrete replace white_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 1 run fill -14 63 65 38 34 65 white_stained_glass replace orange_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 1 run fill -14 63 -66 38 34 -66 black_concrete replace white_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 1 run fill -14 63 -65 38 34 -65 black_stained_glass replace cyan_stained_glass

execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 0 run fill -14 63 66 38 34 66 black_concrete replace white_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 0 run fill -14 63 -66 38 34 -66 white_concrete replace white_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 0 run fill -14 63 -65 38 34 -65 white_stained_glass replace cyan_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 0 run fill -14 63 -64 38 34 -64 light_blue_stained_glass replace blue_stained_glass

#Pregame queue
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 1 run fill -89 201 63 -101 195 62 black_stained_glass
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 1 run fill -89 201 60 -101 195 61 black_concrete
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 1 run fill -89 201 94 -101 195 93 white_stained_glass
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 1 run fill -89 201 95 -101 195 96 white_concrete
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 1 run fill -89 201 65 -101 195 64 blue_stained_glass

execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 0 run fill -89 201 65 -101 195 64 light_blue_stained_glass
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 0 run fill -89 201 62 -101 195 63 white_stained_glass
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 0 run fill -89 201 60 -101 195 61 white_concrete
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 0 run fill -89 201 96 -101 195 95 black_concrete
execute if entity @s[tag=!Hardcore] if score SwapSide swapside matches 0 run fill -89 201 94 -101 195 93 orange_stained_glass

#Hardcore pregame queue
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 1 run fill -89 201 61 -101 195 61 black_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 1 run fill -89 201 60 -101 195 60 black_concrete
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 1 run fill -89 201 95 -101 195 95 white_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 1 run fill -89 201 96 -101 195 96 white_concrete

execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 0 run fill -89 201 62 -101 195 62 light_blue_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 0 run fill -89 201 61 -101 195 61 white_stained_glass
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 0 run fill -89 201 60 -101 195 60 white_concrete
execute if entity @s[tag=Hardcore] if score SwapSide swapside matches 0 run fill -89 201 96 -101 195 96 black_concrete

#Bossbar prep
bossbar set rr_swap:swap_progress players none
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0
scoreboard players set BossbarB swapside 0
scoreboard players set QuickSwap swapside 0