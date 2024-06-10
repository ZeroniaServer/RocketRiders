scoreboard players set Blue: FlagDisp 0
scoreboard players set Yellow: FlagDisp 0
scoreboard players set FY1: FlagScore 30
scoreboard players set FY2: FlagScore 30
scoreboard players set FB1: FlagScore 30
scoreboard players set FB2: FlagScore 30

setblock 34 65 64 minecraft:purple_stained_glass
setblock -10 65 64 minecraft:purple_stained_glass
setblock 34 65 -64 minecraft:purple_stained_glass
setblock -10 65 -64 minecraft:purple_stained_glass

#Yellow, right
setblock 34 64 63 bedrock
setblock 35 64 64 bedrock
setblock 34 64 65 bedrock
setblock 33 64 64 bedrock
setblock 34 64 64 bedrock
fill 34 66 64 34 72 64 oak_fence replace air
fill 34 65 65 34 72 65 air

#Yellow, left
setblock -9 64 64 bedrock
setblock -11 64 64 bedrock
setblock -10 64 65 bedrock
setblock -10 64 63 bedrock
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
setblock -10 64 -63 bedrock
setblock -9 64 -64 bedrock
setblock -10 64 -65 bedrock
setblock -11 64 -64 bedrock
setblock -10 64 -64 bedrock
fill -10 66 -64 -10 72 -64 minecraft:oak_fence replace air

#Blue, right
setblock 34 64 -65 bedrock
setblock 33 64 -64 bedrock
setblock 35 64 -64 bedrock
setblock 34 64 -63 bedrock
setblock 34 64 -64 bedrock
fill 34 66 -64 34 72 -64 minecraft:oak_fence replace air

#Wool
place template yellow_flag1 30 71 63
place template yellow_flag1 -14 71 63

place template blue_flag1 -14 71 -65
place template blue_flag1 30 71 -65