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
execute as @s[scores={TopDeco=2}] run setblock -6 64 -61 structure_block{mode:"LOAD",name:"blue_archertower"}
execute as @s[scores={TopDeco=2}] run setblock 24 64 -61 structure_block{mode:"LOAD",name:"blue_archertower"}
execute as @s[scores={TopDeco=2}] run setblock -6 65 -61 redstone_block
execute as @s[scores={TopDeco=2}] run setblock 24 65 -61 redstone_block

#Spikes preset - Blue
execute as @s[scores={TopDeco=3}] run setblock 3 64 -59 structure_block{mode:"LOAD",name:"blue_spiketop_right"}
execute as @s[scores={TopDeco=3}] run setblock -10 64 -59 structure_block{mode:"LOAD",name:"blue_spiketop_left"}
execute as @s[scores={TopDeco=3}] run setblock 3 65 -59 redstone_block
execute as @s[scores={TopDeco=3}] run setblock -10 65 -59 redstone_block
execute as @s[scores={MiddleDeco=2}] run setblock 7 50 -51 structure_block{mode:"LOAD",name:"blue_spikemid_right"}
execute as @s[scores={MiddleDeco=2}] run setblock -14 50 -51 structure_block{mode:"LOAD",name:"blue_spikemid_left"}
execute as @s[scores={MiddleDeco=2}] run setblock 7 51 -51 redstone_block
execute as @s[scores={MiddleDeco=2}] run setblock -14 51 -51 redstone_block
execute as @s[scores={MiddleDeco=2}] run setblock 7 50 -51 air
execute as @s[scores={MiddleDeco=2}] run setblock -14 50 -51 air
execute as @s[scores={BottomDeco=2}] run setblock 8 34 -51 structure_block{mode:"LOAD",name:"blue_spikebottom"}
execute as @s[scores={BottomDeco=2}] run setblock 8 35 -51 redstone_block
execute as @s[scores={BottomDeco=2}] run setblock 8 34 -51 air

#Layered - Blue
execute as @s[scores={TopCorner=2}] run fill 38 34 -49 -14 40 -51 minecraft:blue_stained_glass
execute as @s[scores={TopCorner=2}] run fill -14 41 -50 38 48 -51 minecraft:blue_stained_glass
execute as @s[scores={TopCorner=2}] run fill 38 49 -51 -14 56 -51 minecraft:blue_stained_glass
execute as @s[scores={TopCorner=2}] run fill -14 63 -55 38 63 -52 minecraft:black_stained_glass
execute as @s[scores={TopCorner=2}] run fill 38 41 -49 -14 41 -49 minecraft:black_stained_glass
execute as @s[scores={TopCorner=2}] run fill 38 57 -51 -14 57 -51 minecraft:black_stained_glass
execute as @s[scores={TopCorner=2}] run fill -14 49 -50 38 49 -50 minecraft:black_stained_glass

#Portal glass pane rims - Blue
execute as @s[scores={PortalDeco=1}] run fill -11 59 -74 35 36 -74 blue_stained_glass_pane[east=true,west=true] replace air