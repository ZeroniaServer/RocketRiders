################################################
## STRUCTUREBLOCK: How each missile structure ##
## is actually placed using a Structure Block ##
################################################

##Place structure block (copies surrounding blocks up)
clone ~ ~ ~ ~ ~-1 ~ ~ 254 ~ replace
setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0}

##Name structures
execute if entity @s[tag=!missileflip] run function items:namestructure
execute if entity @s[tag=missileflip] run function items:flip/namestructure

##Portal spawn offsets
execute if entity @s[tag=portalSpawn] run data modify block ~ ~ ~ posY set value -2
execute unless entity @s[tag=!portalSpawn2,tag=!portalspawn3] run scoreboard players set 8 posZ 8
execute unless entity @s[tag=!portalSpawn2,tag=!portalspawn3] store result score @s posZ run data get block ~ ~ ~ posZ
scoreboard players operation @s[tag=portalSpawn2] posZ -= 8 posZ
scoreboard players operation @s[tag=portalSpawn3] posZ += 8 posZ
execute unless entity @s[tag=!portalSpawn2,tag=!portalspawn3] store result block ~ ~ ~ posZ int 1 run scoreboard players get @s posZ
scoreboard players reset * posZ

##After structure block placed (copies surrounding blocks back)
setblock ~ ~-1 ~ observer[powered=true,facing=down]
setblock ~ ~-1 ~ observer[powered=true,facing=down]
clone ~ 255 ~ ~ 254 ~ ~ ~-1 ~ replace move

##Add 1 to appropriate missile count
execute if entity @s[tag=bluemissile] run scoreboard players add @e[tag=Selection,type=armor_stand] bMissileCount 1
execute if entity @s[tag=yellowmissile] run scoreboard players add @e[tag=Selection,type=armor_stand] yMissileCount 1