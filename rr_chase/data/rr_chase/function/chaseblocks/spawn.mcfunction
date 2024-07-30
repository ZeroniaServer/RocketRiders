summon marker -14 50 -51 {Tags:["SpawnChaseBlock"]}
summon marker -14 40 -51 {Tags:["ChaseBlockPos","ChaseBlockX"]}
summon marker -14 40 -51 {Tags:["ChaseBlockPos","ChaseBlockY"]}
summon marker -14 40 -51 {Tags:["ChaseBlockPos","ChaseBlockZ"]}
summon marker -14 40 -51 {Tags:["ChaseBlockPos","ChaseBlockType"]}
execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s store result score @s x run random value 5..30
execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s store result score @s y run random value 5..9
execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s store result score @s z run random value 5..18
execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s store result score @s CmdData run random value 5..109

execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s run function rr_chase:chaseblocks/teleport

kill @e[x=0,type=marker,tag=ChaseBlockPos]

scoreboard players remove $ChaseBlocks CmdData 1
execute if score $ChaseBlocks CmdData matches 1.. run function rr_chase:chaseblocks/spawn