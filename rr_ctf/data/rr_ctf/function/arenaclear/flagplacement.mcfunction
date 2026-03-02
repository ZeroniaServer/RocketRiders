scoreboard players set $flags_captured_by_blue global 0
scoreboard players set $flags_captured_by_yellow global 0
scoreboard players set Blue: FlagDisp 0
execute unless predicate game:gamemode_components/red_for_blue run scoreboard players display name Blue: FlagDisp [{color:"blue",text:"Blue"},{color:"white",text:" has captured 0"}]
execute if predicate game:gamemode_components/red_for_blue run scoreboard players display name Blue: FlagDisp [{color:"dark_red",text:"Red"},{color:"white",text:" has captured 0"}]
scoreboard players display numberformat Blue: FlagDisp blank
scoreboard players set Yellow: FlagDisp 0
scoreboard players display name Yellow: FlagDisp [{color:"gold",text:"Yellow"},{color:"white",text:" has captured 0"}]
scoreboard players display numberformat Yellow: FlagDisp blank
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
fill 34 66 64 34 72 64 oak_fence replace #custom:air
fill 34 65 65 34 72 65 air

#Yellow, left
setblock -9 64 64 bedrock
setblock -11 64 64 bedrock
setblock -10 64 65 bedrock
setblock -10 64 63 bedrock
setblock -10 64 64 bedrock
fill -10 66 64 -10 72 64 oak_fence replace #custom:air

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
fill -10 66 -64 -10 72 -64 minecraft:oak_fence replace #custom:air

#Blue, right
setblock 34 64 -65 bedrock
setblock 33 64 -64 bedrock
setblock 35 64 -64 bedrock
setblock 34 64 -63 bedrock
setblock 34 64 -64 bedrock
fill 34 66 -64 34 72 -64 minecraft:oak_fence replace #custom:air

#Wool
place template game:flag/yellow/stage_1 30 71 63
place template game:flag/yellow/stage_1 -14 71 63

place template game:flag/blue/stage_1 -14 71 -65
place template game:flag/blue/stage_1 30 71 -65
