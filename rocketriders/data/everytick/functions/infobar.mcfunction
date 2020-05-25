scoreboard players add @s InfoTimer 1
execute as @s[scores={InfoTimer=200..}] run scoreboard players add @s InfoDisplay 1
execute as @s[scores={InfoTimer=200..}] run scoreboard players set @s InfoTimer 0
bossbar set minecraft:infobar players @a[team=Lobby]
execute store result bossbar minecraft:infobar value run scoreboard players get @s InfoTimer

execute as @s[scores={InfoDisplay=1}] run bossbar set minecraft:infobar name ["",{"text":"Welcome to Rocket Riders!","color":"green","bold":true}]
execute as @s[scores={InfoDisplay=2}] run bossbar set minecraft:infobar name ["",{"text":"You are currently playing on an early version!","color":"green","bold":true}]
execute as @s[scores={InfoDisplay=3}] run bossbar set minecraft:infobar name ["",{"text":"Rocket Riders is a work in progress! Please report bugs on our Discord!","color":"green","bold":true}]
scoreboard players set @s[scores={InfoDisplay=4..}] InfoDisplay 1