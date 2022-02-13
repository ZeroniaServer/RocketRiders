summon marker -14 50 -51 {Tags:["SpawnChaseBlock"]}
summon marker -14 40 -51 {Tags:["ChaseBlockPos","ChaseBlockX"]}
scoreboard players set @e[tag=ChaseBlockX] RNGmax 26
summon marker -14 40 -51 {Tags:["ChaseBlockPos","ChaseBlockY"]}
scoreboard players set @e[tag=ChaseBlockY] RNGmax 5
summon marker -14 40 -51 {Tags:["ChaseBlockPos","ChaseBlockZ"]}
scoreboard players set @e[tag=ChaseBlockZ] RNGmax 14
summon marker -14 40 -51 {Tags:["ChaseBlockPos","ChaseBlockType"]}
scoreboard players set @e[tag=ChaseBlockType] RNGmax 105

execute as @e[tag=ChaseBlockPos] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=ChaseBlockPos] run scoreboard players operation @s RNGscore %= @s RNGmax
scoreboard players add @e[tag=ChaseBlockZ] RNGscore 5
execute as @e[tag=SpawnChaseBlock] at @s store result score @s x run scoreboard players get @e[tag=ChaseBlockX,limit=1,sort=nearest] RNGscore
execute as @e[tag=SpawnChaseBlock] at @s store result score @s y run scoreboard players get @e[tag=ChaseBlockY,limit=1,sort=nearest] RNGscore
execute as @e[tag=SpawnChaseBlock] at @s store result score @s z run scoreboard players get @e[tag=ChaseBlockZ,limit=1,sort=nearest] RNGscore
execute as @e[tag=SpawnChaseBlock] at @s store result score @s CmdData run scoreboard players get @e[tag=ChaseBlockType,limit=1,sort=nearest] RNGscore

execute as @e[tag=SpawnChaseBlock] at @s run function rr_chase:chaseblocks/teleport

kill @e[tag=ChaseBlockPos]

scoreboard players remove $ChaseBlocks CmdData 1
execute if score $ChaseBlocks CmdData matches 1.. run function rr_chase:chaseblocks/spawn