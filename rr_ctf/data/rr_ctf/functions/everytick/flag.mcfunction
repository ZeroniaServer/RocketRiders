#Flagpoles
fill 34 66 64 34 72 64 oak_fence replace air
fill -10 66 64 -10 72 64 oak_fence replace air
fill -10 66 -64 -10 72 -64 oak_fence replace air
fill 34 66 -64 34 72 -64 oak_fence replace air

#Flag base
execute positioned 34 64 63 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 35 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 65 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 33 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -9 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -11 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 65 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 63 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 -63 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -9 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 -65 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -11 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 -65 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 33 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 35 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 -63 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock

#Clear behind/in front
fill -14 64 66 39 74 70 air replace yellow_wool
fill -14 64 65 39 74 70 air replace oak_fence
fill -14 64 65 39 74 70 air replace purple_stained_glass
fill -14 64 65 39 74 70 air replace white_stained_glass
fill -14 64 -66 39 74 -70 air replace blue_wool
fill -14 64 -65 39 74 -70 air replace oak_fence
fill -14 64 -65 39 74 -70 air replace purple_stained_glass
fill -14 64 -65 39 74 -70 air replace white_stained_glass
fill -14 64 62 39 74 58 air replace yellow_wool
fill -14 64 63 39 74 58 air replace oak_fence
fill -14 64 63 39 74 58 air replace purple_stained_glass
fill -14 64 63 39 74 58 air replace white_stained_glass
fill -14 64 -63 39 74 -58 air replace blue_wool
fill -14 64 -63 39 74 -58 air replace oak_fence
fill -14 64 -63 39 74 -58 air replace purple_stained_glass
fill -14 64 -63 39 74 -58 air replace white_stained_glass
execute positioned 35 65 -64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 33 65 -64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 34 65 -65 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 34 65 -63 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -11 65 -64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -9 65 -64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -10 65 -63 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -10 65 -65 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 35 65 64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 33 65 64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 34 65 65 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 34 65 63 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -11 65 64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -9 65 64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -10 65 63 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -10 65 65 unless block ~ ~ ~ air run setblock ~ ~ ~ air

#Flag scores
scoreboard players set 29 FlagScore 29
scoreboard players set 20 FlagScore 20
scoreboard players set 40 FlagScore 40
scoreboard players set 0 FlagScore 0

scoreboard players add FlagWave FlagScore 1

#Actionbars for flag carrier
execute as @a[tag=CarryFlag,tag=!DelayActionbar] run title @s actionbar [{"text":"You stole a flag! Return to your base to capture it!","color":"white","bold":"true"}]

#Make flags wave around
execute if score FlagWave FlagScore matches 20 if score FY1: FlagScore > 29 FlagScore run setblock 34 72 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag1"}
execute if score FlagWave FlagScore matches 20 if score FY1: FlagScore > 29 FlagScore run setblock 34 71 64 redstone_block
execute if score FlagWave FlagScore >= 40 FlagScore if score FY1: FlagScore > 29 FlagScore run setblock 34 72 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FlagWave FlagScore >= 40 FlagScore if score FY1: FlagScore > 29 FlagScore run setblock 34 71 64 redstone_block

execute if score FlagWave FlagScore matches 20 if score FY2: FlagScore > 29 FlagScore run setblock -10 72 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag1"}
execute if score FlagWave FlagScore matches 20 if score FY2: FlagScore > 29 FlagScore run setblock -10 71 64 redstone_block
execute if score FlagWave FlagScore >= 40 FlagScore if score FY2: FlagScore > 29 FlagScore run setblock -10 72 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FlagWave FlagScore >= 40 FlagScore if score FY2: FlagScore > 29 FlagScore run setblock -10 71 64 redstone_block

execute if score FlagWave FlagScore matches 20 if score FB1: FlagScore > 29 FlagScore run setblock -10 72 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag1"}
execute if score FlagWave FlagScore matches 20 if score FB1: FlagScore > 29 FlagScore run setblock -10 71 -64 redstone_block
execute if score FlagWave FlagScore >= 40 FlagScore if score FB1: FlagScore > 29 FlagScore run setblock -10 72 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FlagWave FlagScore >= 40 FlagScore if score FB1: FlagScore > 29 FlagScore run setblock -10 71 -64 redstone_block

execute if score FlagWave FlagScore matches 20 if score FB2: FlagScore > 29 FlagScore run setblock 34 72 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag1"}
execute if score FlagWave FlagScore matches 20 if score FB2: FlagScore > 29 FlagScore run setblock 34 71 -64 redstone_block
execute if score FlagWave FlagScore >= 40 FlagScore if score FB2: FlagScore > 29 FlagScore run setblock 34 72 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FlagWave FlagScore >= 40 FlagScore if score FB2: FlagScore > 29 FlagScore run setblock 34 71 -64 redstone_block

execute if score FlagWave FlagScore >= 40 FlagScore run scoreboard players reset FlagWave FlagScore

#Capture Yellow Flag 1 (the flag on yellow's right)
execute positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass if entity @a[team=Blue,scores={MinePurpleGlass=1..},distance=..7] if score FY1: FlagScore > 29 FlagScore run scoreboard players set FY1: FlagScore 29
execute positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass unless entity @a[team=Blue,scores={MinePurpleGlass=1..},distance=..7] if score FY1: FlagScore > 29 FlagScore run setblock ~ ~ ~ purple_stained_glass
execute if score FY1: FlagScore <= 29 FlagScore run setblock 34 65 64 white_stained_glass

execute positioned 34 65 64 if score FY1: FlagScore <= 29 FlagScore if score FY1: FlagScore > 0 FlagScore run playsound entity.chicken.egg block @a ~ ~ ~ 1 0.8
execute if score FY1: FlagScore <= 29 FlagScore if score FY1: FlagScore > 0 FlagScore run scoreboard players remove FY1: FlagScore 1

execute if score FY1: FlagScore matches 0 positioned 34 65 64 if entity @a[team=Blue,distance=..3] unless entity @a[tag=CarryFY1] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,team=Blue,distance=..2,scores={respawn=0},tag=!probablyDied] add CarryFY1
execute if score FY1: FlagScore matches 0 positioned 34 65 64 if entity @a[team=Blue,distance=..7,scores={MineWhiteGlass=1..}] unless entity @a[tag=CarryFY1] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,team=Blue,distance=..7,scores={MineWhiteGlass=1..,respawn=0},tag=!probablyDied] add CarryFY1
execute if entity @a[tag=CarryFY1] run scoreboard players set FY1: FlagScore -1

execute if score FY1: FlagScore matches 26 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 26 run setblock 34 71 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY1: FlagScore matches 26 run setblock 34 70 64 redstone_block
execute if score FY1: FlagScore matches 22 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 22 run setblock 34 70 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY1: FlagScore matches 22 run setblock 34 69 64 redstone_block
execute if score FY1: FlagScore matches 18 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 18 run setblock 34 69 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY1: FlagScore matches 18 run setblock 34 68 64 redstone_block
execute if score FY1: FlagScore matches 14 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 14 run setblock 34 68 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY1: FlagScore matches 14 run setblock 34 67 64 redstone_block
execute if score FY1: FlagScore matches 10 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 10 run setblock 34 67 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY1: FlagScore matches 10 run setblock 34 66 64 redstone_block
execute if score FY1: FlagScore matches 6 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 6 run setblock 34 66 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY1: FlagScore matches 6 run setblock 34 65 64 redstone_block
#END

#Keep placing FY1 once flag lowered
execute if score FY1: FlagScore matches 0 run setblock 34 66 64 yellow_wool
execute if score FY1: FlagScore matches 0 run fill 33 66 63 33 65 63 yellow_wool
execute if score FY1: FlagScore matches 0 run fill 32 66 64 31 65 64 yellow_wool
execute if score FY1: FlagScore matches 0 run setblock 30 65 64 yellow_wool

#Capture Yellow Flag 2 (the flag on yellow's left)
execute positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass if entity @a[team=Blue,scores={MinePurpleGlass=1..},distance=..7] if score FY2: FlagScore > 29 FlagScore run scoreboard players set FY2: FlagScore 29
execute positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass unless entity @a[team=Blue,scores={MinePurpleGlass=1..},distance=..7] if score FY2: FlagScore > 29 FlagScore run setblock ~ ~ ~ purple_stained_glass
execute if score FY2: FlagScore <= 29 FlagScore run setblock -10 65 64 white_stained_glass

execute positioned -10 65 64 if score FY2: FlagScore <= 29 FlagScore if score FY2: FlagScore > 0 FlagScore run playsound entity.chicken.egg block @a ~ ~ ~ 1 0.8
execute if score FY2: FlagScore <= 29 FlagScore if score FY2: FlagScore > 0 FlagScore run scoreboard players remove FY2: FlagScore 1

execute if score FY2: FlagScore matches 0 positioned -10 65 64 if entity @a[team=Blue,distance=..3] unless entity @a[tag=CarryFY2] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,team=Blue,distance=..2,scores={respawn=0},tag=!probablyDied] add CarryFY2
execute if score FY2: FlagScore matches 0 positioned -10 65 64 if entity @a[team=Blue,distance=..7,scores={MineWhiteGlass=1..}] unless entity @a[tag=CarryFY2] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,team=Blue,distance=..7,scores={MineWhiteGlass=1..,respawn=0},tag=!probablyDied] add CarryFY2
execute if entity @a[tag=CarryFY2] run scoreboard players set FY2: FlagScore -1

execute if score FY2: FlagScore matches 26 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 26 run setblock -10 71 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY2: FlagScore matches 26 run setblock -10 70 64 redstone_block
execute if score FY2: FlagScore matches 22 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 22 run setblock -10 70 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY2: FlagScore matches 22 run setblock -10 69 64 redstone_block
execute if score FY2: FlagScore matches 18 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 18 run setblock -10 69 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY2: FlagScore matches 18 run setblock -10 68 64 redstone_block
execute if score FY2: FlagScore matches 14 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 14 run setblock -10 68 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY2: FlagScore matches 14 run setblock -10 67 64 redstone_block
execute if score FY2: FlagScore matches 10 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 10 run setblock -10 67 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY2: FlagScore matches 10 run setblock -10 66 64 redstone_block
execute if score FY2: FlagScore matches 6 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 6 run setblock -10 66 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"yellow_flag2"}
execute if score FY2: FlagScore matches 6 run setblock -10 65 64 redstone_block
#END

#Keep placing FY2 once flag lowered
execute if score FY2: FlagScore matches 0 run setblock -10 66 64 yellow_wool
execute if score FY2: FlagScore matches 0 run fill -11 66 63 -11 65 63 yellow_wool
execute if score FY2: FlagScore matches 0 run fill -12 66 64 -13 65 64 yellow_wool
execute if score FY2: FlagScore matches 0 run setblock -14 65 64 yellow_wool

#Capture Blue Flag 1 (the flag on blue's right)
execute positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @a[team=Yellow,scores={MinePurpleGlass=1..},distance=..7] if score FB1: FlagScore > 29 FlagScore run scoreboard players set FB1: FlagScore 29
execute positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass unless entity @a[team=Yellow,scores={MinePurpleGlass=1..},distance=..7] if score FB1: FlagScore > 29 FlagScore run setblock ~ ~ ~ purple_stained_glass
execute if score FB1: FlagScore <= 29 FlagScore run setblock -10 65 -64 white_stained_glass

execute positioned -10 65 -64 if score FB1: FlagScore <= 29 FlagScore if score FB1: FlagScore > 0 FlagScore run playsound entity.chicken.egg block @a ~ ~ ~ 1 0.8
execute if score FB1: FlagScore <= 29 FlagScore if score FB1: FlagScore > 0 FlagScore run scoreboard players remove FB1: FlagScore 1

execute if score FB1: FlagScore matches 0 positioned -10 65 -64 if entity @a[team=Yellow,distance=..3] unless entity @a[tag=CarryFB1] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,team=Yellow,distance=..2,scores={respawn=0},tag=!probablyDied] add CarryFB1
execute if score FB1: FlagScore matches 0 positioned -10 65 -64 if entity @a[team=Yellow,distance=..7,scores={MineWhiteGlass=1..}] unless entity @a[tag=CarryFB1] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,team=Yellow,distance=..7,scores={MineWhiteGlass=1..,respawn=0},tag=!probablyDied] add CarryFB1
execute if entity @a[tag=CarryFB1] run scoreboard players set FB1: FlagScore -1

execute if score FB1: FlagScore matches 26 run fill -10 64 -65 -14 72 -64 air replace blue_wool
execute if score FB1: FlagScore matches 26 run setblock -10 71 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB1: FlagScore matches 26 run setblock -10 70 -64 redstone_block
execute if score FB1: FlagScore matches 22 run fill -10 64 -65 -14 72 -64 air replace blue_wool
execute if score FB1: FlagScore matches 22 run setblock -10 70 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB1: FlagScore matches 22 run setblock -10 69 -64 redstone_block
execute if score FB1: FlagScore matches 18 run fill -10 64 -65 -14 72 -64 air replace blue_wool
execute if score FB1: FlagScore matches 18 run setblock -10 69 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB1: FlagScore matches 18 run setblock -10 68 -64 redstone_block
execute if score FB1: FlagScore matches 14 run fill -10 64 -65 -14 72 -64 air replace blue_wool
execute if score FB1: FlagScore matches 14 run setblock -10 68 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB1: FlagScore matches 14 run setblock -10 67 -64 redstone_block
execute if score FB1: FlagScore matches 10 run fill -10 64 -65 -14 72 -64 air replace blue_wool
execute if score FB1: FlagScore matches 10 run setblock -10 67 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB1: FlagScore matches 10 run setblock -10 66 -64 redstone_block
execute if score FB1: FlagScore matches 6 run fill -10 64 -65 -14 72 -64 air replace blue_wool
execute if score FB1: FlagScore matches 6 run setblock -10 66 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB1: FlagScore matches 6 run setblock -10 65 -64 redstone_block
#END

#Keep placing FB1 once flag lowered
execute if score FB1: FlagScore matches 0 run setblock -10 66 -64 blue_wool
execute if score FB1: FlagScore matches 0 run fill -11 66 -65 -11 65 -65 blue_wool
execute if score FB1: FlagScore matches 0 run fill -12 66 -64 -13 65 -64 blue_wool
execute if score FB1: FlagScore matches 0 run setblock -14 65 -64 blue_wool

#Capture Blue Flag 2 (the flag on blue's left)
execute positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @a[team=Yellow,scores={MinePurpleGlass=1..},distance=..7] if score FB2: FlagScore > 29 FlagScore run scoreboard players set FB2: FlagScore 29
execute positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass unless entity @a[team=Yellow,scores={MinePurpleGlass=1..},distance=..7] if score FB2: FlagScore > 29 FlagScore run setblock ~ ~ ~ purple_stained_glass
execute if score FB2: FlagScore <= 29 FlagScore run setblock 34 65 -64 white_stained_glass

execute positioned 34 65 -64 if score FB2: FlagScore <= 29 FlagScore if score FB2: FlagScore > 0 FlagScore run playsound entity.chicken.egg block @a ~ ~ ~ 1 0.8
execute if score FB2: FlagScore <= 29 FlagScore if score FB2: FlagScore > 0 FlagScore run scoreboard players remove FB2: FlagScore 1

execute if score FB2: FlagScore matches 0 positioned 34 65 -64 if entity @a[team=Yellow,distance=..3] unless entity @a[tag=CarryFB2] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,team=Yellow,distance=..2,scores={respawn=0},tag=!probablyDied] add CarryFB2
execute if score FB2: FlagScore matches 0 positioned 34 65 -64 if entity @a[team=Yellow,distance=..7,scores={MineWhiteGlass=1..}] unless entity @a[tag=CarryFB2] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,team=Yellow,distance=..7,scores={MineWhiteGlass=1..,respawn=0},tag=!probablyDied] add CarryFB2
execute if entity @a[tag=CarryFB2] run scoreboard players set FB2: FlagScore -1

execute if score FB2: FlagScore matches 26 run fill 30 64 -64 34 72 -65 air replace blue_wool
execute if score FB2: FlagScore matches 26 run setblock 34 71 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB2: FlagScore matches 26 run setblock 34 70 -64 redstone_block
execute if score FB2: FlagScore matches 22 run fill 30 64 -64 34 72 -65 air replace blue_wool
execute if score FB2: FlagScore matches 22 run setblock 34 70 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB2: FlagScore matches 22 run setblock 34 69 -64 redstone_block
execute if score FB2: FlagScore matches 18 run fill 30 64 -64 34 72 -65 air replace blue_wool
execute if score FB2: FlagScore matches 18 run setblock 34 69 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB2: FlagScore matches 18 run setblock 34 68 -64 redstone_block
execute if score FB2: FlagScore matches 14 run fill 30 64 -64 34 72 -65 air replace blue_wool
execute if score FB2: FlagScore matches 14 run setblock 34 68 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB2: FlagScore matches 14 run setblock 34 67 -64 redstone_block
execute if score FB2: FlagScore matches 10 run fill 30 64 -64 34 72 -65 air replace blue_wool
execute if score FB2: FlagScore matches 10 run setblock 34 67 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB2: FlagScore matches 10 run setblock 34 66 -64 redstone_block
execute if score FB2: FlagScore matches 6 run fill 30 64 -64 34 72 -65 air replace blue_wool
execute if score FB2: FlagScore matches 6 run setblock 34 66 -64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"blue_flag2"}
execute if score FB2: FlagScore matches 6 run setblock 34 65 -64 redstone_block
#END

#Keep placing FB2 once flag lowered
execute if score FB2: FlagScore matches 0 run setblock 34 66 -64 blue_wool
execute if score FB2: FlagScore matches 0 run fill 33 66 -65 33 65 -65 blue_wool
execute if score FB2: FlagScore matches 0 run fill 32 66 -64 31 65 -64 blue_wool
execute if score FB2: FlagScore matches 0 run setblock 30 65 -64 blue_wool

#Add tags for flag carriers
tag @a[tag=CarryFY1] add CarryFlag
tag @a[tag=CarryFY2] add CarryFlag
tag @a[tag=CarryFB1] add CarryFlag
tag @a[tag=CarryFB2] add CarryFlag

#If flag carrier disconnects completely
execute unless entity @a[tag=CarryFB1] if score FB1: FlagScore matches -1 run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"text":"A player left the match while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
execute unless entity @a[tag=CarryFB2] if score FB2: FlagScore matches -1 run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"text":"A player left the match while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
execute unless entity @a[tag=CarryFY1] if score FY1: FlagScore matches -1 run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"text":"A player left the match while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute unless entity @a[tag=CarryFY2] if score FY2: FlagScore matches -1 run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"text":"A player left the match while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]

execute unless entity @a[tag=CarryFB1] if score FB1: FlagScore matches -1 as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute unless entity @a[tag=CarryFB2] if score FB2: FlagScore matches -1 as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute unless entity @a[tag=CarryFY1] if score FY1: FlagScore matches -1 as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute unless entity @a[tag=CarryFY2] if score FY2: FlagScore matches -1 as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7

execute unless entity @a[tag=CarryFB1] if score FB1: FlagScore matches -1 run scoreboard players set FB1: FlagScore 0
execute unless entity @a[tag=CarryFB2] if score FB2: FlagScore matches -1 run scoreboard players set FB2: FlagScore 0
execute unless entity @a[tag=CarryFY1] if score FY1: FlagScore matches -1 run scoreboard players set FY1: FlagScore 0
execute unless entity @a[tag=CarryFY2] if score FY2: FlagScore matches -1 run scoreboard players set FY2: FlagScore 0

#Handle non-players (leaving midgame)
#Does not apply if there's already another flag carrier (in case of relog)
execute as @a[tag=CarryFB1,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFB1,team=!Lobby,team=!Spectator] if score FB1: FlagScore matches -1 run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" left the match while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
execute as @a[tag=CarryFB2,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFB2,team=!Lobby,team=!Spectator] if score FB2: FlagScore matches -1 run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" left the match while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
execute as @a[tag=CarryFY1,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFY1,team=!Lobby,team=!Spectator] if score FY1: FlagScore matches -1 run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" left the match while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFY2,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFY2,team=!Lobby,team=!Spectator] if score FY2: FlagScore matches -1 run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" left the match while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]

execute as @a[tag=CarryFB1,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFB1,team=!Lobby,team=!Spectator] if score FB1: FlagScore matches -1 as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFB2,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFB2,team=!Lobby,team=!Spectator] if score FB2: FlagScore matches -1 as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFY1,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFY1,team=!Lobby,team=!Spectator] if score FY1: FlagScore matches -1 as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFY2,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFY2,team=!Lobby,team=!Spectator] if score FY2: FlagScore matches -1 as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7

execute as @a[tag=CarryFB1,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFB1,team=!Lobby,team=!Spectator] if score FB1: FlagScore matches -1 run scoreboard players set FB1: FlagScore 0
execute as @a[tag=CarryFB2,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFB2,team=!Lobby,team=!Spectator] if score FB2: FlagScore matches -1 run scoreboard players set FB2: FlagScore 0
execute as @a[tag=CarryFY1,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFY1,team=!Lobby,team=!Spectator] if score FY1: FlagScore matches -1 run scoreboard players set FY1: FlagScore 0
execute as @a[tag=CarryFY2,team=!Blue,team=!Yellow] unless entity @a[tag=CarryFY2,team=!Lobby,team=!Spectator] if score FY2: FlagScore matches -1 run scoreboard players set FY2: FlagScore 0

tag @a[team=!Blue,team=!Yellow] remove CarryFY1
tag @a[team=!Blue,team=!Yellow] remove CarryFY2
tag @a[team=!Blue,team=!Yellow] remove CarryFB1
tag @a[team=!Blue,team=!Yellow] remove CarryFB2
tag @a[team=!Blue,team=!Yellow] remove CarryFlag
tag @a[team=!Blue,team=!Yellow] remove FlipMissile
scoreboard players reset @a[team=!Blue,team=!Yellow] FlagScore

scoreboard players reset @a MinePurpleGlass
scoreboard players reset @a MineWhiteGlass

#Carry flag
execute if entity @a[tag=CarryFlag] run function rr_ctf:everytick/carryflag
tag @a[tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] remove CarryFlag
scoreboard players reset @a[tag=!CarryFlag] FlagScore
effect clear @a[tag=!CarryFlag] minecraft:glowing

#Flip missile tags
tag @a[tag=CarryFlag,tag=!FlipMissile] add FlipMissile
tag @a[tag=!CarryFlag] remove FlipMissile

#Respawn clears
execute as @e[tag=YellowSpawnZone] at @s run scoreboard players set @a[team=Yellow,tag=!beenOnBlue,distance=..6] respawn 0
execute as @e[tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,tag=!beenOnYellow,distance=..6] respawn 0