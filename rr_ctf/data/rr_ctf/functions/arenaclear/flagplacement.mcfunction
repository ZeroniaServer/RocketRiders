scoreboard players set Blue: FlagScore 0
scoreboard players set Yellow: FlagScore 0
scoreboard players set FY1: FlagScore 30
scoreboard players set FY2: FlagScore 30
scoreboard players set FB1: FlagScore 30
scoreboard players set FB2: FlagScore 30

setblock 34 65 64 minecraft:purple_stained_glass
setblock -10 65 64 minecraft:purple_stained_glass
setblock 34 65 -64 minecraft:purple_stained_glass
setblock -10 65 -64 minecraft:purple_stained_glass

#Yellow, right
setblock 34 64 63 minecraft:obsidian
setblock 35 64 64 minecraft:obsidian
setblock 34 64 65 minecraft:obsidian
setblock 33 64 64 minecraft:obsidian
setblock 34 64 64 bedrock
fill 34 66 64 34 72 64 oak_fence replace air
fill 34 65 65 34 72 65 air

#Yellow, left
setblock -9 64 64 minecraft:obsidian
setblock -11 64 64 minecraft:obsidian
setblock -10 64 65 minecraft:obsidian
setblock -10 64 63 minecraft:obsidian
setblock -10 64 64 bedrock
fill -10 66 64 -10 72 64 oak_fence replace air

#Clear behind
fill -14 64 65 39 74 70 air replace yellow_wool
fill -14 64 65 39 74 70 air replace oak_fence
fill -14 64 65 39 74 70 air replace purple_stained_glass
fill -14 64 -65 39 74 -70 air replace yellow_wool
fill -14 64 -65 39 74 -70 air replace oak_fence
fill -14 64 -65 39 74 -70 air replace purple_stained_glass

#Blue, left
setblock -10 64 -63 minecraft:obsidian
setblock -9 64 -64 minecraft:obsidian
setblock -10 64 -65 minecraft:obsidian
setblock -11 64 -64 minecraft:obsidian
setblock -10 64 -64 minecraft:bedrock
fill -10 66 -64 -10 72 -64 minecraft:oak_fence replace air

#Blue, right
setblock 34 64 -65 minecraft:obsidian
setblock 33 64 -64 minecraft:obsidian
setblock 35 64 -64 minecraft:obsidian
setblock 34 64 -63 minecraft:obsidian
setblock 34 64 -64 minecraft:bedrock
fill 34 66 -64 34 72 -64 minecraft:oak_fence replace air

#Wool
setblock 34 72 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag1"}
setblock 34 71 64 minecraft:redstone_block
setblock -10 72 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag1"}
setblock -10 71 64 redstone_block

setblock -10 72 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag1"}
setblock -10 71 -64 redstone_block
setblock 34 72 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag1"}
setblock 34 71 -64 redstone_block