#Yellow, right
setblock 34 64 63 minecraft:obsidian
setblock 35 64 64 minecraft:obsidian
setblock 34 64 65 minecraft:obsidian
setblock 33 64 64 minecraft:obsidian
setblock 34 64 64 bedrock
fill 34 66 64 34 72 64 oak_fence replace air
fill -10 66 64 -10 72 64 oak_fence replace air
fill 34 65 65 34 72 65 air


#Yellow, left
setblock -9 64 64 minecraft:obsidian
setblock -11 64 64 minecraft:obsidian
setblock -10 64 65 minecraft:obsidian
setblock -10 64 63 minecraft:obsidian
setblock -10 64 64 bedrock


#Clear behind
fill -14 64 65 39 74 70 air replace yellow_wool
fill -14 64 65 39 74 70 air replace oak_fence
fill -14 64 65 39 74 70 air replace purple_stained_glass
fill -14 64 -65 39 74 -70 air replace yellow_wool
fill -14 64 -65 39 74 -70 air replace oak_fence
fill -14 64 -65 39 74 -70 air replace purple_stained_glass

#Blue, right
setblock -10 64 -63 minecraft:obsidian
setblock -9 64 -64 minecraft:obsidian
setblock -10 64 -65 minecraft:obsidian
setblock -11 64 -64 minecraft:obsidian
setblock -10 64 -64 minecraft:bedrock
fill -10 66 -64 -10 72 -64 minecraft:oak_fence replace air
fill 34 66 -64 34 72 -64 minecraft:oak_fence replace air

#Blue, right
setblock 34 64 -65 minecraft:obsidian
setblock 33 64 -64 minecraft:obsidian
setblock 35 64 -64 minecraft:obsidian
setblock 34 64 -63 minecraft:obsidian
setblock 34 64 -64 minecraft:bedrock


scoreboard players set 29 FlagScore 29
scoreboard players set 20 FlagScore 20
scoreboard players set 40 FlagScore 40
scoreboard players set 0 FlagScore 0








scoreboard players add FlagWave FlagScore 1

#Make flags wave around
execute if score FlagWave FlagScore matches 20 if score FY1: FlagScore > 29 FlagScore run setblock 34 72 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag1"}
execute if score FlagWave FlagScore matches 20 if score FY1: FlagScore > 29 FlagScore run setblock 34 71 64 minecraft:redstone_block
execute if score FlagWave FlagScore >= 40 FlagScore if score FY1: FlagScore > 29 FlagScore run setblock 34 72 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FlagWave FlagScore >= 40 FlagScore if score FY1: FlagScore > 29 FlagScore run setblock 34 71 64 minecraft:redstone_block

execute if score FlagWave FlagScore matches 20 if score FY2: FlagScore > 29 FlagScore run setblock -10 72 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag1"}
execute if score FlagWave FlagScore matches 20 if score FY2: FlagScore > 29 FlagScore run setblock -10 71 64 redstone_block
execute if score FlagWave FlagScore >= 40 FlagScore if score FY2: FlagScore > 29 FlagScore run setblock -10 72 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FlagWave FlagScore >= 40 FlagScore if score FY2: FlagScore > 29 FlagScore run setblock -10 71 64 redstone_block

execute if score FlagWave FlagScore matches 20 if score FB1: FlagScore > 29 FlagScore run setblock -10 72 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag1"}
execute if score FlagWave FlagScore matches 20 if score FB1: FlagScore > 29 FlagScore run setblock -10 71 -64 redstone_block
execute if score FlagWave FlagScore >= 40 FlagScore if score FB1: FlagScore > 29 FlagScore run setblock -10 72 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FlagWave FlagScore >= 40 FlagScore if score FB1: FlagScore > 29 FlagScore run setblock -10 71 -64 redstone_block

execute if score FlagWave FlagScore matches 20 if score FB2: FlagScore > 29 FlagScore run setblock 34 72 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag1"}
execute if score FlagWave FlagScore matches 20 if score FB2: FlagScore > 29 FlagScore run setblock 34 71 -64 redstone_block
execute if score FlagWave FlagScore >= 40 FlagScore if score FB2: FlagScore > 29 FlagScore run setblock 34 72 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FlagWave FlagScore >= 40 FlagScore if score FB2: FlagScore > 29 FlagScore run setblock 34 71 -64 redstone_block


execute if score FlagWave FlagScore >= 40 FlagScore run scoreboard players reset FlagWave FlagScore

#Capture Yellow Flag 1 (the flag on yellow's right)
execute unless block 34 65 64 purple_stained_glass if score FY1: FlagScore > 29 FlagScore run scoreboard players set FY1: FlagScore 29
execute if score FY1: FlagScore <= 29 FlagScore run setblock 34 65 64 minecraft:white_stained_glass

execute positioned 34 65 64 if score FY1: FlagScore <= 29 FlagScore if score FY1: FlagScore > 0 FlagScore run playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 0.8
execute if score FY1: FlagScore <= 29 FlagScore if score FY1: FlagScore > 0 FlagScore run scoreboard players remove FY1: FlagScore 1

execute if score FY1: FlagScore matches 0 positioned 34 65 64 if entity @a[team=Blue,distance=..2] unless entity @a[tag=CarryFY1] run tag @p[tag=!CarryFlag,team=Blue,distance=..2] add CarryFY1

execute if score FY1: FlagScore matches 26 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 26 run setblock 34 71 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY1: FlagScore matches 26 run setblock 34 70 64 minecraft:redstone_block
execute if score FY1: FlagScore matches 22 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 22 run setblock 34 70 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY1: FlagScore matches 22 run setblock 34 69 64 minecraft:redstone_block
execute if score FY1: FlagScore matches 18 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 18 run setblock 34 69 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY1: FlagScore matches 18 run setblock 34 68 64 minecraft:redstone_block
execute if score FY1: FlagScore matches 14 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 14 run setblock 34 68 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY1: FlagScore matches 14 run setblock 34 67 64 minecraft:redstone_block
execute if score FY1: FlagScore matches 10 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 10 run setblock 34 67 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY1: FlagScore matches 10 run setblock 34 66 64 minecraft:redstone_block
execute if score FY1: FlagScore matches 6 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 6 run setblock 34 66 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY1: FlagScore matches 6 run setblock 34 65 64 minecraft:redstone_block
#END

#Capture Yellow Flag 2 (the flag on yellow's left)
execute unless block -10 65 64 purple_stained_glass if score FY2: FlagScore > 29 FlagScore run scoreboard players set FY2: FlagScore 29
execute if score FY2: FlagScore <= 29 FlagScore run setblock -10 65 64 minecraft:white_stained_glass

execute positioned -10 65 64 if score FY2: FlagScore <= 29 FlagScore if score FY2: FlagScore > 0 FlagScore run playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 0.8
execute if score FY2: FlagScore <= 29 FlagScore if score FY2: FlagScore > 0 FlagScore run scoreboard players remove FY2: FlagScore 1

execute if score FY2: FlagScore matches 0 positioned -10 65 64 if entity @a[team=Blue,distance=..2] unless entity @a[tag=CarryFY2] run tag @p[tag=!CarryFlag,team=Blue,distance=..2] add CarryFY2

execute if score FY2: FlagScore matches 26 run fill -10 64 63 -14 72 64 air replace minecraft:yellow_wool
execute if score FY2: FlagScore matches 26 run setblock -10 71 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY2: FlagScore matches 26 run setblock -10 70 64 minecraft:redstone_block
execute if score FY2: FlagScore matches 22 run fill -10 64 63 -14 72 64 air replace minecraft:yellow_wool
execute if score FY2: FlagScore matches 22 run setblock -10 70 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY2: FlagScore matches 22 run setblock -10 69 64 minecraft:redstone_block
execute if score FY2: FlagScore matches 18 run fill -10 64 63 -14 72 64 air replace minecraft:yellow_wool
execute if score FY2: FlagScore matches 18 run setblock -10 69 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY2: FlagScore matches 18 run setblock -10 68 64 minecraft:redstone_block
execute if score FY2: FlagScore matches 14 run fill -10 64 63 -14 72 64 air replace minecraft:yellow_wool
execute if score FY2: FlagScore matches 14 run setblock -10 68 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY2: FlagScore matches 14 run setblock -10 67 64 minecraft:redstone_block
execute if score FY2: FlagScore matches 10 run fill -10 64 63 -14 72 64 air replace minecraft:yellow_wool
execute if score FY2: FlagScore matches 10 run setblock -10 67 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY2: FlagScore matches 10 run setblock -10 66 64 minecraft:redstone_block
execute if score FY2: FlagScore matches 6 run fill -10 64 63 -14 72 64 air replace minecraft:yellow_wool
execute if score FY2: FlagScore matches 6 run setblock -10 66 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:yellow_flag2"}
execute if score FY2: FlagScore matches 6 run setblock -10 65 64 minecraft:redstone_block
#END

#Capture Blue Flag 1 (the flag on blue's right)
execute unless block -10 65 -64 purple_stained_glass if score FB1: FlagScore > 29 FlagScore run scoreboard players set FB1: FlagScore 29
execute if score FB1: FlagScore <= 29 FlagScore run setblock -10 65 -64 minecraft:white_stained_glass

execute positioned -10 65 -64 if score FB1: FlagScore <= 29 FlagScore if score FB1: FlagScore > 0 FlagScore run playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 0.8
execute if score FB1: FlagScore <= 29 FlagScore if score FB1: FlagScore > 0 FlagScore run scoreboard players remove FB1: FlagScore 1

execute if score FB1: FlagScore matches 0 positioned -10 65 -64 if entity @a[team=Yellow,distance=..2] unless entity @a[tag=CarryFB2] run tag @p[tag=!CarryFlag,team=Yellow,distance=..2] add CarryFB1

execute if score FB1: FlagScore matches 26 run fill -10 64 -65 -14 72 -64 air replace minecraft:blue_wool
execute if score FB1: FlagScore matches 26 run setblock -10 71 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB1: FlagScore matches 26 run setblock -10 70 -64 minecraft:redstone_block
execute if score FB1: FlagScore matches 22 run fill -10 64 -65 -14 72 -64 air replace minecraft:blue_wool
execute if score FB1: FlagScore matches 22 run setblock -10 70 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB1: FlagScore matches 22 run setblock -10 69 -64 minecraft:redstone_block
execute if score FB1: FlagScore matches 18 run fill -10 64 -65 -14 72 -64 air replace minecraft:blue_wool
execute if score FB1: FlagScore matches 18 run setblock -10 69 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB1: FlagScore matches 18 run setblock -10 68 -64 minecraft:redstone_block
execute if score FB1: FlagScore matches 14 run fill -10 64 -65 -14 72 -64 air replace minecraft:blue_wool
execute if score FB1: FlagScore matches 14 run setblock -10 68 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB1: FlagScore matches 14 run setblock -10 67 -64 minecraft:redstone_block
execute if score FB1: FlagScore matches 10 run fill -10 64 -65 -14 72 -64 air replace minecraft:blue_wool
execute if score FB1: FlagScore matches 10 run setblock -10 67 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB1: FlagScore matches 10 run setblock -10 66 -64 minecraft:redstone_block
execute if score FB1: FlagScore matches 6 run fill -10 64 -65 -14 72 -64 air replace minecraft:blue_wool
execute if score FB1: FlagScore matches 6 run setblock -10 66 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB1: FlagScore matches 6 run setblock -10 65 -64 minecraft:redstone_block
#END

#Capture Blue Flag 2 (the flag on blue's left)
execute unless block 34 65 -64 purple_stained_glass if score FB2: FlagScore > 29 FlagScore run scoreboard players set FB2: FlagScore 29
execute if score FB2: FlagScore <= 29 FlagScore run setblock 34 65 -64 minecraft:white_stained_glass

execute positioned 34 65 -64 if score FB2: FlagScore <= 29 FlagScore if score FB2: FlagScore > 0 FlagScore run playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 0.8
execute if score FB2: FlagScore <= 29 FlagScore if score FB2: FlagScore > 0 FlagScore run scoreboard players remove FB2: FlagScore 1

execute if score FB2: FlagScore matches 0 positioned 34 65 -64 if entity @a[team=Yellow,distance=..2] unless entity @a[tag=CarryFB2] run tag @p[tag=!CarryFlag,team=Yellow,distance=..2] add CarryFB2

execute if score FB2: FlagScore matches 26 run fill 30 64 -64 34 72 -65 air replace minecraft:blue_wool
execute if score FB2: FlagScore matches 26 run setblock 34 71 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB2: FlagScore matches 26 run setblock 34 70 -64 minecraft:redstone_block
execute if score FB2: FlagScore matches 22 run fill 30 64 -64 34 72 -65 air replace minecraft:blue_wool
execute if score FB2: FlagScore matches 22 run setblock 34 70 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB2: FlagScore matches 22 run setblock 34 69 -64 minecraft:redstone_block
execute if score FB2: FlagScore matches 18 run fill 30 64 -64 34 72 -65 air replace minecraft:blue_wool
execute if score FB2: FlagScore matches 18 run setblock 34 69 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB2: FlagScore matches 18 run setblock 34 68 -64 minecraft:redstone_block
execute if score FB2: FlagScore matches 14 run fill 30 64 -64 34 72 -65 air replace minecraft:blue_wool
execute if score FB2: FlagScore matches 14 run setblock 34 68 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB2: FlagScore matches 14 run setblock 34 67 -64 minecraft:redstone_block
execute if score FB2: FlagScore matches 10 run fill 30 64 -64 34 72 -65 air replace minecraft:blue_wool
execute if score FB2: FlagScore matches 10 run setblock 34 67 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB2: FlagScore matches 10 run setblock 34 66 -64 minecraft:redstone_block
execute if score FB2: FlagScore matches 6 run fill 30 64 -64 34 72 -65 air replace minecraft:blue_wool
execute if score FB2: FlagScore matches 6 run setblock 34 66 -64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:blue_flag2"}
execute if score FB2: FlagScore matches 6 run setblock 34 65 -64 minecraft:redstone_block
#END





#Clear flag etc from people who fall in the void or die
execute as @a[tag=CarryFY1,scores={deathCooldown=1}] run scoreboard players set FY1: FlagScore 7
execute as @a[tag=CarryFY1,scores={deathCooldown=1}] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFY2,scores={deathCooldown=1}] run scoreboard players set FY2: FlagScore 7
execute as @a[tag=CarryFY2,scores={deathCooldown=1}] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFB1,scores={deathCooldown=1}] run scoreboard players set FB1: FlagScore 7
execute as @a[tag=CarryFB1,scores={deathCooldown=1}] run tellraw @a ["",{"text":"Flag Restored! ","color":"dark_blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"blue"}]
execute as @a[tag=CarryFB2,scores={deathCooldown=1}] run scoreboard players set FB2: FlagScore 7
execute as @a[tag=CarryFB2,scores={deathCooldown=1}] run tellraw @a ["",{"text":"Flag Restored! ","color":"dark_blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"blue"}]
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFY1
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFY2
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFB1
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFB2

execute as @a[tag=CarryFY1,predicate=custom:nearvoid] run scoreboard players set FY1: FlagScore 7
execute as @a[tag=CarryFY2,predicate=custom:nearvoid] run scoreboard players set FY2: FlagScore 7
execute as @a[tag=CarryFB1,predicate=custom:nearvoid] run scoreboard players set FB1: FlagScore 7
execute as @a[tag=CarryFB2,predicate=custom:nearvoid] run scoreboard players set FB2: FlagScore 7


execute as @a[tag=CarryFB1,predicate=custom:nearvoid] run tellraw @a ["",{"text":"Flag Restored! ","color":"dark_blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"blue"}]
execute as @a[tag=CarryFB2,predicate=custom:nearvoid] run tellraw @a ["",{"text":"Flag Restored! ","color":"dark_blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"blue"}]
execute as @a[tag=CarryFY1,predicate=custom:nearvoid] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFY2,predicate=custom:nearvoid] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]

tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFY1
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFY2
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFB1
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFB2



#Deliver Yellow flag at Blue base
execute as @a[team=Blue,tag=CarryFY1,predicate=rr_ctf:player_bluebase] run scoreboard players add Blue: FlagScore 1
execute as @a[team=Blue,tag=CarryFY1,predicate=rr_ctf:player_bluebase] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" successfully captured a","color":"gold"},{"text":" Yellow","color":"yellow"},{"text":" flag!","color":"gold"}]
execute as @a[team=Blue,tag=CarryFY1,predicate=rr_ctf:player_bluebase] run scoreboard players set FY1: FlagScore -1
execute as @a[team=Blue,tag=CarryFY1,predicate=rr_ctf:player_bluebase] run tag @s remove CarryFY1

execute as @a[team=Blue,tag=CarryFY2,predicate=rr_ctf:player_bluebase] run scoreboard players add Blue: FlagScore 1
execute as @a[team=Blue,tag=CarryFY2,predicate=rr_ctf:player_bluebase] run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" successfully captured a","color":"gold"},{"text":" Yellow","color":"yellow"},{"text":" flag!","color":"gold"}]
execute as @a[team=Blue,tag=CarryFY2,predicate=rr_ctf:player_bluebase] run scoreboard players set FY2: FlagScore -1
execute as @a[team=Blue,tag=CarryFY2,predicate=rr_ctf:player_bluebase] run tag @s remove CarryFY2

#Deliver Blue flag at Yellow base
execute as @a[team=Yellow,tag=CarryFB1,predicate=rr_ctf:player_yellowbase] run scoreboard players add Yellow: FlagScore 1
execute as @a[team=Yellow,tag=CarryFB1,predicate=rr_ctf:player_yellowbase] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"dark_blue"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"dark_blue"}]
execute as @a[team=Yellow,tag=CarryFB1,predicate=rr_ctf:player_yellowbase] run scoreboard players set FB1: FlagScore -1
execute as @a[team=Yellow,tag=CarryFB1,predicate=rr_ctf:player_yellowbase] run tag @s remove CarryFB1

execute as @a[team=Yellow,tag=CarryFB2,predicate=rr_ctf:player_yellowbase] run scoreboard players add Yellow: FlagScore 1
execute as @a[team=Yellow,tag=CarryFB2,predicate=rr_ctf:player_yellowbase] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"dark_blue"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"dark_blue"}]
execute as @a[team=Yellow,tag=CarryFB2,predicate=rr_ctf:player_yellowbase] run scoreboard players set FB2: FlagScore -1
execute as @a[team=Yellow,tag=CarryFB2,predicate=rr_ctf:player_yellowbase] run tag @s remove CarryFB2







#Add and remove tags and items from players
tag @a[tag=CarryFY1] add CarryFlag
tag @a[tag=CarryFY2] add CarryFlag
tag @a[tag=CarryFB1] add CarryFlag
tag @a[tag=CarryFB2] add CarryFlag
tag @a[team=!Blue,team=!Yellow] remove CarryFY1
tag @a[team=!Blue,team=!Yellow] remove CarryFY2
tag @a[team=!Blue,team=!Yellow] remove CarryFB1
tag @a[team=!Blue,team=!Yellow] remove CarryFB2

replaceitem entity @a[tag=CarryFlag,tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] armor.head air
tag @a[tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] remove CarryFlag

tag @a[tag=CarryFlag] add FlipMissile
tag @a[tag=!CarryFlag] remove FlipMissile

scoreboard players add @a[tag=CarryFlag] FlagScore 1
scoreboard players reset @a[tag=!CarryFlag] FlagScore

execute as @a[tag=CarryFY1,scores={FlagScore=1}] run replaceitem entity @s armor.head yellow_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFY1,scores={FlagScore=1}] run fill 34 65 63 30 72 64 air replace minecraft:yellow_wool
execute as @a[tag=CarryFY2,scores={FlagScore=1}] run replaceitem entity @s armor.head yellow_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFY2,scores={FlagScore=1}] run fill -10 66 64 -14 65 63 air replace minecraft:yellow_wool
execute as @a[tag=CarryFB1,scores={FlagScore=1}] run replaceitem entity @s armor.head blue_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFB1,scores={FlagScore=1}] run fill -14 65 -64 -10 66 -65 air replace minecraft:blue_wool
execute as @a[tag=CarryFB2,scores={FlagScore=1}] run replaceitem entity @s armor.head blue_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFB2,scores={FlagScore=1}] run fill 30 65 -64 34 66 -65 air replace blue_wool
execute as @a[tag=CarryFlag,scores={FlagScore=1}] at @s run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 2
execute as @a[tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" stole a ","color":"dark_blue"},{"text":"Yellow","color":"yellow"},{"text":" flag!","color":"dark_blue"}]
execute as @a[tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" stole a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
effect give @a[tag=CarryFlag] minecraft:glowing 1 100 true