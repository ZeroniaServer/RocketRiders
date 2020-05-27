tag @s remove BOTCONTROL
scoreboard players add @s BOTwalks 1


#RNG
execute as @s[scores={BOTwalks=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BotWalkRNG"]}
scoreboard players set @e[tag=BotWalkRNG] BotRNGmax 23
execute as @e[tag=BotWalkRNG] store result score @s BotRNG run data get entity @s UUIDMost 0.00000000023283064365386962890625
execute as @e[tag=BotWalkRNG] store result score @s BotRNG run scoreboard players operation @s BotRNG %= @s BotRNGmax

execute as @e[tag=BotWalkRNG,scores={BotRNG=0..5}] at @s unless block ~ ~-1 ~-1 air unless block ~ ~-1 ~-2 air if block ~ ~ ~-1 air if block ~ ~1 ~-2 air run tag @e[scores={BOTwalks=1},limit=1,sort=nearest,distance=..2] add BotwalkNorth
execute as @e[tag=BotWalkRNG,scores={BotRNG=6..11}] at @s unless block ~ ~-1 ~1 air unless block ~ ~-1 ~2 air if block ~ ~ ~1 air if block ~ ~1 ~2 air run tag @e[scores={BOTwalks=1},limit=1,sort=nearest,distance=..2] add BotwalkSouth
execute as @e[tag=BotWalkRNG,scores={BotRNG=12..17}] at @s unless block ~-2 ~-1 ~ air unless block ~-2 ~-1 ~ air if block ~-1 ~ ~ air if block ~-2 ~1 ~ air run tag @e[scores={BOTwalks=1},limit=1,sort=nearest,distance=..2] add BotwalkWest
execute as @e[tag=BotWalkRNG,scores={BotRNG=18..23}] at @s unless block ~1 ~-1 ~ air unless block ~2 ~-1 ~ air if block ~1 ~ ~ air if block ~2 ~1 ~ air run tag @e[scores={BOTwalks=1},limit=1,sort=nearest,distance=..2] add BotwalkEast

execute as @s[tag=BotWalks,scores={BOTwalks=1},tag=!BotwalkNorth,tag=!BotwalkEast,tag=!BotwalkSouth,tag=!BotwalkWest] run scoreboard players reset @s BOTwalks

kill @e[tag=BotWalkRNG]




execute as @s[tag=BotwalkNorth,scores={BOTwalks=1}] at @s run tp @s ~ ~ ~ 180 0
execute as @s[tag=BotwalkSouth,scores={BOTwalks=1}] at @s run tp @s ~ ~ ~ 0 0
execute as @s[tag=BotwalkWest,scores={BOTwalks=1}] at @s run tp @s ~ ~ ~ 90 0
execute as @s[tag=BotwalkEast,scores={BOTwalks=1}] at @s run tp @s ~ ~ ~ -90 0

execute as @s[tag=BotwalkSouth,scores={BOTwalks=1..8}] at @s run tp @s ~ ~ ~0.25
execute as @s[tag=BotwalkNorth,scores={BOTwalks=1..8}] at @s run tp @s ~ ~ ~-0.25
execute as @s[tag=BotwalkWest,scores={BOTwalks=1..8}] at @s run tp @s ~-0.25 ~ ~
execute as @s[tag=BotwalkEast,scores={BOTwalks=1..8}] at @s run tp @s ~0.25 ~ ~

execute as @s[scores={BOTwalks=1}] at @s unless entity @s[tag=!BotwalkNorth,tag=!BotwalkSouth,tag=!BotwalkWest,tag=!BotwalkEast] run playsound minecraft:block.glass.step player @a ~ ~ ~ 0.4 1
execute as @s[scores={BOTwalks=8}] at @s unless entity @s[tag=!BotwalkNorth,tag=!BotwalkSouth,tag=!BotwalkWest,tag=!BotwalkEast] run playsound minecraft:block.glass.step player @a ~ ~ ~ 0.4 1

execute as @s at @s unless entity @s[tag=!BotwalkNorth,tag=!BotwalkSouth,tag=!BotwalkWest,tag=!BotwalkEast] run function bot:animations/walkanim

tag @s[scores={BOTwalks=8..}] remove BotwalkNorth
tag @s[scores={BOTwalks=8..}] remove BotwalkSouth
tag @s[scores={BOTwalks=8..}] remove BotwalkWest
tag @s[scores={BOTwalks=8..}] remove BotwalkEast
tag @s[scores={BOTwalks=8..}] remove BotWalks
scoreboard players reset @s[scores={BOTwalks=8..}] BOTwalks