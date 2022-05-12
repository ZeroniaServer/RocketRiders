##Detail placement for Yellow specifically

#New Dawn - Yellow
execute if entity @s[scores={MiddleDeco=1}] run place template yellow_cornerhole 24 49 47
execute if entity @s[scores={MiddleDeco=1}] run place template yellow_cornerhole -8 49 47
execute if entity @s[scores={BottomDeco=1}] run place template yellow_cornerhole 8 39 47
execute if entity @s[scores={TopCorner=1}] run place template yellow_topplatform 17 59 46
execute if entity @s[scores={TopCorner=1}] run place template yellow_topplatform 1 59 46
execute if entity @s[scores={TopDeco=1}] run place template yellow_arch 2 64 54

#Towers - Yellow
execute if entity @s[scores={TopDeco=2}] run place template yellow_archertower 23 64 54
execute if entity @s[scores={TopDeco=2}] run place template yellow_archertower -7 64 54

#Spikes - Yellow
execute if entity @s[scores={TopDeco=3}] run place template yellow_spiketop -2 64 48
execute if entity @s[scores={TopCorner=2}] run place template yellow_spikeside 6 56 40 none front_back
execute if entity @s[scores={TopCorner=2}] run place template yellow_spikeside 18 56 40
execute if entity @s[scores={MiddleDeco=2}] run place template yellow_spikemid_right -14 50 29
execute if entity @s[scores={MiddleDeco=2}] run place template yellow_spikemid_left 18 50 29
execute if entity @s[scores={BottomDeco=2}] run place template yellow_spikebottom 8 34 30

#Layered - Yellow
execute if entity @s[scores={MiddleDeco=3}] run fill 38 34 49 -14 40 51 minecraft:yellow_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill 38 41 50 -14 48 51 minecraft:yellow_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill -14 49 51 38 56 51 minecraft:yellow_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill 38 63 55 -14 63 52 minecraft:black_stained_glass replace minecraft:yellow_stained_glass
execute if entity @s[scores={MiddleDeco=3}] run fill -14 57 51 38 57 51 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill 38 49 50 -14 49 50 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill -14 41 49 38 41 49 minecraft:black_stained_glass replace air

#Cannons - Yellow
execute if entity @s[scores={TopCorner=3}] run place template yellow_cannon 18 60 51
execute if entity @s[scores={TopCorner=3}] run place template yellow_cannon 2 60 51
execute if entity @s[scores={BottomDeco=3}] run place template yellow_cannon_bottom 8 37 47