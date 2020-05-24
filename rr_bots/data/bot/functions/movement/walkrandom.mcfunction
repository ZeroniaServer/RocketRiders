tag @s remove BOTCONTROL
scoreboard players add @s BOTwalks 1
execute as @s[scores={BOTwalks=1}] at @s unless block ~ ~-1 ~-1 air unless block ~ ~-1 ~-2 air run summon area_effect_cloud ~ ~ ~ {Tags:["BotWalk","BotNorth"]}
execute as @s[scores={BOTwalks=1}] at @s unless block ~ ~-1 ~1 air unless block ~ ~-1 ~2 air run summon area_effect_cloud ~ ~ ~ {Tags:["BotWalk","BotSouth"]}
execute as @s[scores={BOTwalks=1}] at @s unless block ~-1 ~-1 ~ air unless block ~-2 ~-1 ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["BotWalk","BotWest"]}
execute as @s[scores={BOTwalks=1}] at @s unless block ~1 ~-1 ~ air unless block ~2 ~-1 ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["BotWalk","BotEast"]}
execute as @s[scores={BOTwalks=1}] at @s run tag @e[tag=BotWalk,limit=1,sort=random,distance=..1] add SelectedBotwalk

execute as @s[scores={BOTwalks=1}] at @s if entity @e[tag=SelectedBotwalk,tag=BotNorth,limit=1,sort=nearest,distance=..1] run tag @s add BotwalkNorth
execute as @s[scores={BOTwalks=1}] at @s if entity @e[tag=SelectedBotwalk,tag=BotSouth,limit=1,sort=nearest,distance=..1] run tag @s add BotwalkSouth
execute as @s[scores={BOTwalks=1}] at @s if entity @e[tag=SelectedBotwalk,tag=BotWest,limit=1,sort=nearest,distance=..1] run tag @s add BotwalkWest
execute as @s[scores={BOTwalks=1}] at @s if entity @e[tag=SelectedBotwalk,tag=BotEast,limit=1,sort=nearest,distance=..1] run tag @s add BotwalkEast

kill @e[tag=BotWalk]

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