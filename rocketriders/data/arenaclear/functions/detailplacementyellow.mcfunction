##Detail placement for Yellow specifically

#New Dawn - Yellow
execute if entity @s[scores={MiddleDeco=1}] run setblock 24 49 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute if entity @s[scores={MiddleDeco=1}] run setblock -8 49 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute if entity @s[scores={BottomDeco=1}] run setblock 8 39 47 structure_block{mode:"LOAD",name:"yellow_cornerhole"}
execute if entity @s[scores={TopCorner=1}] run setblock 17 59 46 structure_block{mode:"LOAD",name:"yellow_topplatform"}
execute if entity @s[scores={TopCorner=1}] run setblock 1 59 46 structure_block{mode:"LOAD",name:"yellow_topplatform"}
execute if entity @s[scores={TopDeco=1}] run setblock 2 64 54 structure_block{mode:"LOAD",name:"yellow_arch"}
execute if entity @s[scores={MiddleDeco=1}] run setblock 24 50 47 redstone_block
execute if entity @s[scores={MiddleDeco=1}] run setblock -8 50 47 redstone_block
execute if entity @s[scores={BottomDeco=1}] run setblock 8 40 47 redstone_block
execute if entity @s[scores={TopCorner=1}] run setblock 17 60 46 redstone_block
execute if entity @s[scores={TopCorner=1}] run setblock 1 60 46 redstone_block
execute if entity @s[scores={TopDeco=1}] run setblock 2 65 54 redstone_block
execute if entity @s[scores={MiddleDeco=1}] run setblock 24 49 47 air
execute if entity @s[scores={MiddleDeco=1}] run setblock -8 49 47 air
execute if entity @s[scores={BottomDeco=1}] run setblock 8 39 47 air
execute if entity @s[scores={TopCorner=1}] run setblock 17 58 46 air
execute if entity @s[scores={TopCorner=1}] run setblock 1 58 46 air
execute if entity @s[scores={TopDeco=1}] run setblock 2 63 54 yellow_stained_glass

#Towers - Yellow
execute if entity @s[scores={TopDeco=2}] run setblock 23 64 54 structure_block{mode:"LOAD",name:"yellow_archertower"}
execute if entity @s[scores={TopDeco=2}] run setblock -7 64 54 structure_block{mode:"LOAD",name:"yellow_archertower"}
execute if entity @s[scores={TopDeco=2}] run setblock 23 65 54 redstone_block
execute if entity @s[scores={TopDeco=2}] run setblock -7 65 54 redstone_block

#Spikes - Yellow
execute if entity @s[scores={TopDeco=3}] run setblock -2 64 48 structure_block{mode:"LOAD",name:"yellow_spiketop"}
execute if entity @s[scores={TopDeco=3}] run setblock -2 65 48 redstone_block
execute if entity @s[scores={TopDeco=3}] run fill -2 65 48 -2 64 48 air
execute if entity @s[scores={TopCorner=2}] run setblock 6 56 40 structure_block{mode:"LOAD",mirror:"FRONT_BACK",name:"minecraft:yellow_spikeside"}
execute if entity @s[scores={TopCorner=2}] run setblock 6 57 40 redstone_block
execute if entity @s[scores={TopCorner=2}] run fill 6 56 40 6 57 40 air
execute if entity @s[scores={TopCorner=2}] run setblock 18 56 40 structure_block{mode:"LOAD",name:"minecraft:yellow_spikeside"}
execute if entity @s[scores={TopCorner=2}] run setblock 18 57 40 redstone_block
execute if entity @s[scores={TopCorner=2}] run fill 18 56 40 18 57 40 air
execute if entity @s[scores={MiddleDeco=2}] run setblock -14 50 29 structure_block{mode:"LOAD",name:"yellow_spikemid_right"}
execute if entity @s[scores={MiddleDeco=2}] run setblock 18 50 29 structure_block{mode:"LOAD",name:"yellow_spikemid_left"}
execute if entity @s[scores={MiddleDeco=2}] run setblock -14 51 29 redstone_block
execute if entity @s[scores={MiddleDeco=2}] run setblock 18 51 29 redstone_block
execute if entity @s[scores={MiddleDeco=2}] run fill -14 50 29 -14 51 29 air
execute if entity @s[scores={MiddleDeco=2}] run fill 18 50 29 18 51 29 air
execute if entity @s[scores={BottomDeco=2}] run setblock 8 34 30 structure_block{mode:"LOAD",name:"yellow_spikebottom"}
execute if entity @s[scores={BottomDeco=2}] run setblock 8 35 30 redstone_block
execute if entity @s[scores={BottomDeco=2}] run fill 8 34 30 8 35 30 air

#Layered - Yellow
execute if entity @s[scores={MiddleDeco=3}] run fill 38 34 49 -14 40 51 minecraft:yellow_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill 38 41 50 -14 48 51 minecraft:yellow_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill -14 49 51 38 56 51 minecraft:yellow_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill 38 63 55 -14 63 52 minecraft:black_stained_glass replace minecraft:yellow_stained_glass
execute if entity @s[scores={MiddleDeco=3}] run fill -14 57 51 38 57 51 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill 38 49 50 -14 49 50 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3}] run fill -14 41 49 38 41 49 minecraft:black_stained_glass replace air

#Cannons - Yellow
execute if entity @s[scores={TopCorner=3}] run setblock 18 60 51 structure_block{mode:"LOAD",name:"minecraft:yellow_cannon"}
execute if entity @s[scores={TopCorner=3}] run setblock 18 61 51 redstone_block
execute if entity @s[scores={TopCorner=3}] run setblock 2 60 51 structure_block{mode:"LOAD",name:"minecraft:yellow_cannon"}
execute if entity @s[scores={TopCorner=3}] run setblock 2 61 51 redstone_block
execute if entity @s[scores={BottomDeco=3}] run setblock 8 37 47 structure_block{mode:"LOAD",name:"minecraft:yellow_cannon_bottom"}
execute if entity @s[scores={BottomDeco=3}] run setblock 8 38 47 redstone_block