##Detail placement for Blue specifically

#New Dawn - Blue
execute as @s[scores={MiddleDeco=1}] run setblock 24 49 -55 structure_block{mode:"LOAD",name:"blue_cornerhole"}
execute as @s[scores={MiddleDeco=1}] run setblock -8 49 -55 structure_block{mode:"LOAD",name:"blue_cornerhole"}
execute as @s[scores={BottomDeco=1}] run setblock 8 39 -55 structure_block{mode:"LOAD",name:"blue_cornerhole"}
execute as @s[scores={TopCorner=1}] run setblock 17 59 -54 structure_block{mode:"LOAD",name:"blue_topplatform"}
execute as @s[scores={TopCorner=1}] run setblock 1 59 -54 structure_block{mode:"LOAD",name:"blue_topplatform"}
execute as @s[scores={TopDeco=1}] run setblock 2 64 -58 structure_block{mode:"LOAD",name:"blue_arch"}
execute as @s[scores={MiddleDeco=1}] run setblock 24 50 -55 redstone_block
execute as @s[scores={MiddleDeco=1}] run setblock -8 50 -55 redstone_block
execute as @s[scores={BottomDeco=1}] run setblock 8 40 -55 redstone_block
execute as @s[scores={TopCorner=1}] run setblock 17 60 -54 redstone_block
execute as @s[scores={TopCorner=1}] run setblock 1 60 -54 redstone_block
execute as @s[scores={TopDeco=1}] run setblock 2 65 -58 redstone_block
execute as @s[scores={MiddleDeco=1}] run setblock 24 49 -55 blue_stained_glass
execute as @s[scores={MiddleDeco=1}] run setblock -8 49 -55 blue_stained_glass
execute as @s[scores={BottomDeco=1}] run setblock 8 39 -55 blue_stained_glass
execute as @s[scores={TopCorner=1}] run setblock 17 59 -54 blue_stained_glass
execute as @s[scores={TopCorner=1}] run setblock 1 59 -54 blue_stained_glass
execute as @s[scores={TopDeco=1}] run setblock 2 64 -58 air

#Towers - Blue
execute as @s[scores={TopDeco=2}] run setblock -7 64 -62 structure_block{mode:"LOAD",name:"blue_archertower"}
execute as @s[scores={TopDeco=2}] run setblock 23 64 -62 structure_block{mode:"LOAD",name:"blue_archertower"}
execute as @s[scores={TopDeco=2}] run setblock -7 65 -62 redstone_block
execute as @s[scores={TopDeco=2}] run setblock 23 65 -62 redstone_block

#Spikes - Blue
execute as @s[scores={TopDeco=3}] run setblock -2 64 -66 structure_block{mode:"LOAD",name:"blue_spiketop"}
execute as @s[scores={TopDeco=3}] run setblock -2 65 -66 redstone_block
execute as @s[scores={TopDeco=3}] run fill -2 65 -66 -2 64 -66 air
execute as @s[scores={MiddleDeco=2}] run setblock 7 50 -51 structure_block{mode:"LOAD",name:"blue_spikemid_right"}
execute as @s[scores={MiddleDeco=2}] run setblock -14 50 -51 structure_block{mode:"LOAD",name:"blue_spikemid_left"}
execute as @s[scores={MiddleDeco=2}] run setblock 7 51 -51 redstone_block
execute as @s[scores={MiddleDeco=2}] run setblock -14 51 -51 redstone_block
execute as @s[scores={MiddleDeco=2}] run fill 7 50 -51 7 51 -51 air
execute as @s[scores={MiddleDeco=2}] run setblock -14 50 -51 cyan_stained_glass
execute as @s[scores={BottomDeco=2}] run setblock 8 34 -51 structure_block{mode:"LOAD",name:"blue_spikebottom"}
execute as @s[scores={BottomDeco=2}] run setblock 8 35 -51 redstone_block
execute as @s[scores={BottomDeco=2}] run fill 8 34 -51 8 35 -51 air

#Layered - Blue
execute as @s[scores={MiddleDeco=3}] run fill 38 34 -49 -14 40 -51 minecraft:blue_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -14 41 -50 38 48 -51 minecraft:blue_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill 38 49 -51 -14 56 -51 minecraft:blue_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -14 63 -55 38 63 -52 minecraft:black_stained_glass replace minecraft:blue_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill 38 41 -49 -14 41 -49 minecraft:black_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill 38 57 -51 -14 57 -51 minecraft:black_stained_glass
execute as @s[scores={MiddleDeco=3}] run fill -14 49 -50 38 49 -50 minecraft:black_stained_glass