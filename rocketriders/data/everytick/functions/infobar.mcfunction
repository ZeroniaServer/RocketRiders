scoreboard players add @e[tag=Selection] InfoTimer 1
execute as @e[tag=Selection,scores={InfoTimer=200..}] run scoreboard players add @s InfoDisplay 1
execute as @e[tag=Selection,scores={InfoTimer=200..}] run scoreboard players set @s InfoTimer 0
bossbar set minecraft:infobar players @a[team=Lobby]
execute store result bossbar minecraft:infobar value run scoreboard players get @e[tag=Selection,limit=1] InfoTimer

execute as @e[tag=Selection,scores={InfoDisplay=1}] run bossbar set minecraft:infobar name ["",{"text":"Welcome to Rocket Riders!","color":"green","bold":true}]
execute as @e[tag=Selection,scores={InfoDisplay=2}] run bossbar set minecraft:infobar name ["",{"text":"You are currently playing on a early version!","color":"green","bold":true}]
execute as @e[tag=Selection,scores={InfoDisplay=3}] run bossbar set minecraft:infobar name ["",{"text":"Rocket Riders is a work in progress! Please report bugs on our Discord!","color":"green","bold":true}]
scoreboard players set @e[tag=Selection,scores={InfoDisplay=4..}] InfoDisplay 1