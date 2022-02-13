execute store result score #current AI_Data run scoreboard players get @s AI_Data

execute as @e[tag=PatrolTrader] if score @s AI_Data = #current AI_Data run tag @s add ThisTrader
execute as @s if score @s AI_Data = #current AI_Data run tp @s @e[tag=ThisTrader,limit=1,sort=nearest]

item replace entity @e[type=minecraft:wandering_trader] weapon.mainhand with air
effect give @e[tag=PatrolTrader] invisibility 1000000 100 true

scoreboard players add @e[tag=PatrolTrader] CmdData 1
execute as @e[tag=PatrolTrader,tag=!NewPatrolTrader,scores={CmdData=40..}] store result score @s x run data get entity @s Motion[0]
execute as @e[tag=PatrolTrader,tag=!NewPatrolTrader,scores={CmdData=40..}] store result score @s z run data get entity @s Motion[2]

execute as @s if score @e[tag=ThisTrader,scores={x=0,z=0},limit=1] AI_Data = @s AI_Data run tag @s remove BasePatrol 
execute as @e[tag=ThisTrader,scores={x=0,z=0}] if score @s AI_Data = #current AI_Data run tp @s ~ ~-2000 ~
execute as @e[tag=ThisTrader,scores={x=0,z=0}] if score @s AI_Data = #current AI_Data run kill @s

tag @e[tag=ThisTrader] remove ThisTrader