#Normal map - Structureblocks Yellow Base
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock 24 49 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock -8 49 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute as @e[tag=Selection,scores={BottomDeco=1}] run setblock 8 39 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 17 59 46 structure_block{mode:"LOAD",name:"yellow_topplatform"}
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 1 59 46 structure_block{mode:"LOAD",name:"yellow_topplatform"}
execute as @e[tag=Selection,scores={TopDeco=1}] run setblock 2 64 54 structure_block{mode:"LOAD",name:"yellow_arch"}
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock 24 50 47 redstone_block
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock -8 50 47 redstone_block
execute as @e[tag=Selection,scores={BottomDeco=1}] run setblock 8 40 47 redstone_block
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 17 60 46 redstone_block
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 1 60 46 redstone_block
execute as @e[tag=Selection,scores={TopDeco=1}] run setblock 2 65 54 redstone_block
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock 24 49 47 air
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock -8 49 47 air
execute as @e[tag=Selection,scores={BottomDeco=1}] run setblock 8 39 47 air
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 17 58 46 air
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 1 58 46 air
execute as @e[tag=Selection,scores={TopDeco=1}] run setblock 2 63 54 yellow_stained_glass

#Normal map - Structureblocks Blue Base
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock 24 49 -55 structure_block{mode:"LOAD",name:"blue_cornerhole"}
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock -8 49 -55 structure_block{mode:"LOAD",name:"blue_cornerhole"}
execute as @e[tag=Selection,scores={BottomDeco=1}] run setblock 8 39 -55 structure_block{mode:"LOAD",name:"blue_cornerhole"}
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 17 59 -54 structure_block{mode:"LOAD",name:"blue_topplatform"}
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 1 59 -54 structure_block{mode:"LOAD",name:"blue_topplatform"}
execute as @e[tag=Selection,scores={TopDeco=1}] run setblock 2 64 -58 structure_block{mode:"LOAD",name:"blue_arch"}
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock 24 50 -55 redstone_block
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock -8 50 -55 redstone_block
execute as @e[tag=Selection,scores={BottomDeco=1}] run setblock 8 40 -55 redstone_block
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 17 60 -54 redstone_block
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 1 60 -54 redstone_block
execute as @e[tag=Selection,scores={TopDeco=1}] run setblock 2 65 -58 redstone_block
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock 24 49 -55 blue_stained_glass
execute as @e[tag=Selection,scores={MiddleDeco=1}] run setblock -8 49 -55 blue_stained_glass
execute as @e[tag=Selection,scores={BottomDeco=1}] run setblock 8 39 -55 blue_stained_glass
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 17 59 -54 blue_stained_glass
execute as @e[tag=Selection,scores={TopCorner=1}] run setblock 1 59 -54 blue_stained_glass
execute as @e[tag=Selection,scores={TopDeco=1}] run setblock 2 64 -58 air

#Vicous base design - structure blocks yellow base
execute as @e[tag=Selection,scores={TopDeco=2}] run setblock 24 64 55 structure_block{mode:"LOAD",name:"yellow_archertower"}
execute as @e[tag=Selection,scores={TopDeco=2}] run setblock -6 64 55 structure_block{mode:"LOAD",name:"yellow_archertower"}
execute as @e[tag=Selection,scores={TopDeco=2}] run setblock 24 65 55 redstone_block
execute as @e[tag=Selection,scores={TopDeco=2}] run setblock -6 65 55 redstone_block
execute as @e[tag=Selection,scores={TopDeco=2}] run setblock -6 64 -61 structure_block{mode:"LOAD",name:"blue_archertower"}
execute as @e[tag=Selection,scores={TopDeco=2}] run setblock 24 64 -61 structure_block{mode:"LOAD",name:"blue_archertower"}
execute as @e[tag=Selection,scores={TopDeco=2}] run setblock -6 65 -61 redstone_block
execute as @e[tag=Selection,scores={TopDeco=2}] run setblock 24 65 -61 redstone_block



#Obsidian placement
fill 11 63 -65 13 63 -66 obsidian
setblock 12 63 -64 obsidian
setblock 10 63 -66 obsidian
setblock 14 63 -66 obsidian
fill 11 65 -67 13 65 -67 obsidian
setblock 12 66 -67 obsidian
fill 14 63 66 10 63 66 minecraft:obsidian
fill 13 63 65 11 63 65 obsidian
setblock 14 63 66 minecraft:obsidian
setblock 10 63 66 minecraft:obsidian
setblock 12 63 64 minecraft:obsidian
fill 13 65 67 11 65 67 obsidian
setblock 12 66 67 minecraft:obsidian