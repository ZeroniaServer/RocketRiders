scoreboard players add @e[tag=SpawningMissile] CmdData 1
execute as @e[scores={AI_HasMis=1..,CmdData=1}] at @s run function rr_bots:action/missile/selectmissile
execute as @e[scores={AI_HasMis=1..,CmdData=1}] at @s run function rr_bots:action/missile/holdmissile
execute as @e[scores={AI_HasMis=1..,CmdData=1}] run scoreboard players set @s CmdData 2

execute as @e[scores={AI_HasMis=1..,CmdData=60..}] at @s if entity @e[tag=BotMissile,x=-3,z=-3,dx=6,dz=6,y=-64,dy=255,distance=..100] run tag @s add SpawnComplete
execute as @e[scores={AI_HasMis=1..,CmdData=60..}] at @s if entity @e[tag=BotMissile,x=-3,z=-3,dx=6,dz=6,y=-64,dy=255,distance=..100] run function rr_bots:movement/basepatrol/start
execute as @e[scores={AI_HasMis=1..,CmdData=60..},limit=1,sort=random] at @s unless entity @e[tag=BotMissile,x=-3,z=-3,dx=6,dz=6,y=-64,dy=255,distance=..100] run function rr_bots:action/missile/placemissile

scoreboard players reset @e[tag=SpawnComplete,scores={CmdData=60..}] CmdData
item replace entity @e[tag=SpawnComplete] weapon.mainhand with air
tag @e[tag=SpawnComplete] remove SpawnComplete