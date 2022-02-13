execute store result score #current AI_Data run scoreboard players get @s AI_Data

execute as @e[tag=SpawningTrader] if score @s AI_Data = #current AI_Data run tag @s add ThisTrader
execute as @s if score @s AI_Data = #current AI_Data run tp @s @e[tag=ThisTrader,limit=1,sort=nearest]

item replace entity @e[type=minecraft:wandering_trader] weapon.mainhand with air
effect give @e[tag=SpawningTrader] invisibility 1000000 100 true

scoreboard players add @e[tag=SpawningTrader] CmdData 1

execute as @e[tag=ThisTrader,scores={CmdData=60..}] if score @s AI_Data = #current AI_Data run tp @s ~ ~-2000 ~
execute as @e[tag=ThisTrader,scores={CmdData=60..}] if score @s AI_Data = #current AI_Data run kill @s

tag @e[tag=ThisTrader] remove ThisTrader