summon marker -14 50 -51 {Tags:["SpawnChaseBlock"]}
execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s store result score @s x run random value 0..25
execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s store result score @s y run random value 0..4
execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s store result score @s z run random value 5..18
execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s store result score @s CmdData run random value 0..104

execute as @e[x=0,type=marker,tag=SpawnChaseBlock] at @s run function rr_chase:chaseblocks/teleport

scoreboard players remove $ChaseBlocks CmdData 1
execute if score $ChaseBlocks CmdData matches 1.. run function rr_chase:chaseblocks/spawn