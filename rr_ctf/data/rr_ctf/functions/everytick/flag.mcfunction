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


scoreboard players set 29 FlagScore 29
scoreboard players set 20 FlagScore 20
scoreboard players set 40 FlagScore 40
scoreboard players set 0 FlagScore 0

#Blue, right
setblock -10 64 -63 minecraft:obsidian
setblock -9 64 -64 minecraft:obsidian
setblock -10 64 -65 minecraft:obsidian
setblock -11 64 -64 minecraft:obsidian
setblock -10 64 -64 minecraft:bedrock









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





#Clear flag etc from people who fall in the void or die
execute as @a[tag=CarryFY1,scores={deathCooldown=1}] run scoreboard players set FY1: FlagScore 7
execute as @a[tag=CarryFY2,scores={deathCooldown=1}] run scoreboard players set FY2: FlagScore 7
execute as @a[tag=CarryFB1,scores={deathCooldown=1}] run scoreboard players set FB1: FlagScore 7
execute as @a[tag=CarryFB2,scores={deathCooldown=1}] run scoreboard players set FB2: FlagScore 7
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFY1
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFY2
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFB1
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFB2

execute as @a[tag=CarryFY1,predicate=custom:nearvoid] run scoreboard players set FY1: FlagScore 7
execute as @a[tag=CarryFY2,predicate=custom:nearvoid] run scoreboard players set FY2: FlagScore 7
execute as @a[tag=CarryFB1,predicate=custom:nearvoid] run scoreboard players set FB1: FlagScore 7
execute as @a[tag=CarryFB2,predicate=custom:nearvoid] run scoreboard players set FB2: FlagScore 7
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFY1
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFY2
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFB1
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFB2



#Deliver Yellow flag at Blue base
execute as @a[team=Blue,tag=CarryFY1,predicate=rr_ctf:player_bluebase] run scoreboard players add Blue: FlagScore 1
execute as @a[team=Blue,tag=CarryFY1,predicate=rr_ctf:player_bluebase] run tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":" successfully captured a","color":"green"},{"text":" Yellow","color":"yellow"},{"text":" flag!","color":"green"}]
execute as @a[team=Blue,tag=CarryFY1,predicate=rr_ctf:player_bluebase] run scoreboard players set FY1: FlagScore -1
execute as @a[team=Blue,tag=CarryFY1,predicate=rr_ctf:player_bluebase] run tag @s remove CarryFY1

execute as @a[team=Blue,tag=CarryFY2,predicate=rr_ctf:player_bluebase] run scoreboard players add Blue: FlagScore 1
execute as @a[team=Blue,tag=CarryFY2,predicate=rr_ctf:player_bluebase] run tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":" successfully captured a","color":"green"},{"text":" Yellow","color":"yellow"},{"text":" flag!","color":"green"}]
execute as @a[team=Blue,tag=CarryFY2,predicate=rr_ctf:player_bluebase] run scoreboard players set FY2: FlagScore -1
execute as @a[team=Blue,tag=CarryFY2,predicate=rr_ctf:player_bluebase] run tag @s remove CarryFY2







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
execute as @a[tag=CarryFB2,scores={FlagScore=1}] run replaceitem entity @s armor.head blue_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFlag,scores={FlagScore=1}] at @s run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 2
execute as @a[tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":" stole a ","color":"green"},{"text":"Yellow","color":"yellow"},{"text":" flag!","color":"green"}]
execute as @a[tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":" stole a ","color":"green"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"green"}]
effect give @a[tag=CarryFlag] minecraft:glowing 1 100 true