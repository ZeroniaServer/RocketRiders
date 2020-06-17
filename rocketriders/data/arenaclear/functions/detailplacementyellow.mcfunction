#New Dawn - Yellow
execute as @s[scores={MiddleDeco=1}] run setblock 24 49 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute as @s[scores={MiddleDeco=1}] run setblock -8 49 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute as @s[scores={BottomDeco=1}] run setblock 8 39 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute as @s[scores={TopCorner=1}] run setblock 17 59 46 structure_block{mode:"LOAD",name:"yellow_topplatform"}
execute as @s[scores={TopCorner=1}] run setblock 1 59 46 structure_block{mode:"LOAD",name:"yellow_topplatform"}
execute as @s[scores={TopDeco=1}] run setblock 2 64 54 structure_block{mode:"LOAD",name:"yellow_arch"}
execute as @s[scores={MiddleDeco=1}] run setblock 24 50 47 redstone_block
execute as @s[scores={MiddleDeco=1}] run setblock -8 50 47 redstone_block
execute as @s[scores={BottomDeco=1}] run setblock 8 40 47 redstone_block
execute as @s[scores={TopCorner=1}] run setblock 17 60 46 redstone_block
execute as @s[scores={TopCorner=1}] run setblock 1 60 46 redstone_block
execute as @s[scores={TopDeco=1}] run setblock 2 65 54 redstone_block
execute as @s[scores={MiddleDeco=1}] run setblock 24 49 47 air
execute as @s[scores={MiddleDeco=1}] run setblock -8 49 47 air
execute as @s[scores={BottomDeco=1}] run setblock 8 39 47 air
execute as @s[scores={TopCorner=1}] run setblock 17 58 46 air
execute as @s[scores={TopCorner=1}] run setblock 1 58 46 air
execute as @s[scores={TopDeco=1}] run setblock 2 63 54 yellow_stained_glass

#Towers - Yellow
execute as @s[scores={TopDeco=2}] run setblock 24 64 55 structure_block{mode:"LOAD",name:"yellow_archertower"}
execute as @s[scores={TopDeco=2}] run setblock -6 64 55 structure_block{mode:"LOAD",name:"yellow_archertower"}
execute as @s[scores={TopDeco=2}] run setblock 24 65 55 redstone_block
execute as @s[scores={TopDeco=2}] run setblock -6 65 55 redstone_block

#Spikes preset - Yellow
execute as @s[scores={TopDeco=3}] run setblock -10 64 54 structure_block{mode:"LOAD",name:"yellow_spiketop_right"}
execute as @s[scores={TopDeco=3}] run setblock 22 64 54 structure_block{mode:"LOAD",name:"yellow_spiketop_left"}
execute as @s[scores={TopDeco=3}] run setblock -10 65 54 redstone_block
execute as @s[scores={TopDeco=3}] run setblock 22 65 54 redstone_block
execute as @s[scores={MiddleDeco=2}] run setblock -14 50 29 structure_block{mode:"LOAD",name:"yellow_spikemid_right"}
execute as @s[scores={MiddleDeco=2}] run setblock 18 50 29 structure_block{mode:"LOAD",name:"yellow_spikemid_left"}
execute as @s[scores={MiddleDeco=2}] run setblock -14 51 29 redstone_block
execute as @s[scores={MiddleDeco=2}] run setblock 18 51 29 redstone_block
execute as @s[scores={MiddleDeco=2}] run setblock -14 50 29 air
execute as @s[scores={MiddleDeco=2}] run setblock 18 50 29 air
execute as @s[scores={BottomDeco=2}] run setblock 8 34 30 structure_block{mode:"LOAD",name:"yellow_spikebottom"}
execute as @s[scores={BottomDeco=2}] run setblock 8 35 30 redstone_block
execute as @s[scores={BottomDeco=2}] run setblock 8 35 30 air

#Layered - Yellow
execute as @s[scores={TopCorner=2}] run fill 38 34 49 -14 40 51 minecraft:yellow_stained_glass
execute as @s[scores={TopCorner=2}] run fill 38 41 50 -14 48 51 minecraft:yellow_stained_glass
execute as @s[scores={TopCorner=2}] run fill -14 49 51 38 56 51 minecraft:yellow_stained_glass
execute as @s[scores={TopCorner=2}] run fill 38 63 55 -14 63 52 minecraft:black_stained_glass
execute as @s[scores={TopCorner=2}] run fill -14 57 51 38 57 51 minecraft:black_stained_glass
execute as @s[scores={TopCorner=2}] run fill 38 49 50 -14 49 50 minecraft:black_stained_glass
execute as @s[scores={TopCorner=2}] run fill -14 41 49 38 41 49 minecraft:black_stained_glass

#Portal detail - Yellow
execute as @s[scores={PortalDeco=1}] run fill -11 59 74 35 36 74 yellow_stained_glass_pane[east=true,west=true] replace air
execute as @s[scores={PortalDeco=2}] run fill -11 59 73 35 36 75 yellow_stained_glass replace air
execute as @s[scores={PortalDeco=3}] run fill -11 59 73 35 36 75 end_stone replace air