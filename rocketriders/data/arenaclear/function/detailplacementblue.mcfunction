##Detail placement for Blue specifically

#New Dawn - Blue
execute if entity @s[scores={MiddleDeco=1}] run place template blue_cornerhole 24 49 -55
execute if entity @s[scores={MiddleDeco=1}] run place template blue_cornerhole -8 49 -55
execute if entity @s[scores={BottomDeco=1}] run place template blue_cornerhole 8 39 -55
execute if entity @s[scores={TopCorner=1}] run place template blue_topplatform 17 59 -54
execute if entity @s[scores={TopCorner=1}] run place template blue_topplatform 1 59 -54
execute if entity @s[scores={TopDeco=1}] run place template blue_arch 2 64 -58

#Towers - Blue
execute if entity @s[scores={TopDeco=2}] run place template blue_archertower -7 64 -62
execute if entity @s[scores={TopDeco=2}] run place template blue_archertower 23 64 -62

#Spikes - Blue
execute if entity @s[scores={TopDeco=3}] run place template blue_spiketop -2 64 -66
execute if entity @s[scores={TopCorner=2}] run place template blue_spikeside -7 56 -53
execute if entity @s[scores={TopCorner=2}] run place template blue_spikeside 31 56 -53 none front_back
execute if entity @s[scores={MiddleDeco=2}] run place template blue_spikemid_right 7 50 -51
execute if entity @s[scores={MiddleDeco=2}] run place template blue_spikemid_left -14 50 -51
execute if entity @s[scores={BottomDeco=2}] run place template blue_spikebottom 8 34 -51

#Layered - Blue
execute if entity @s[scores={MiddleDeco=3}] run fill 38 34 -49 -14 40 -51 minecraft:blue_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill -14 41 -50 38 48 -51 minecraft:blue_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill 38 49 -51 -14 56 -51 minecraft:blue_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill -14 63 -55 38 63 -52 minecraft:black_stained_glass replace minecraft:blue_stained_glass
execute if entity @s[scores={MiddleDeco=3}] run fill 38 41 -49 -14 41 -49 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill 38 57 -51 -14 57 -51 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill -14 49 -50 38 49 -50 minecraft:black_stained_glass replace air

#Cannons - Blue
execute if entity @s[scores={TopCorner=3}] positioned ~ ~ ~-4 run place template blue_cannon 18 60 -51
execute if entity @s[scores={TopCorner=3}] positioned ~ ~ ~-4 run place template blue_cannon 2 60 -51
execute if entity @s[scores={BottomDeco=3}] run place template blue_cannon_bottom 8 39 -55