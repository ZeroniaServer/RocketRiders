##Handles players who leave/rejoin the game
#For placing players where they belong based on team
tag @a[tag=WasInYellow,tag=!hardcoreKilled] remove WasInYellow
tag @a[tag=WasInBlue,tag=!hardcoreKilled] remove WasInBlue
tag @a[team=Yellow] add WasInYellow
tag @a[team=Blue] add WasInBlue

#Clearing effects/tags and teleporting to lobby
effect clear @a[scores={LeaveGame=1..}]
effect give @a[scores={LeaveGame=1..}] regeneration 1 255 true
effect give @a[scores={LeaveGame=1..}] night_vision 1000000 100 true
team join Lobby @a[scores={LeaveGame=1..}]
gamemode adventure @a[scores={LeaveGame=1..}]
title @a[scores={LeaveGame=1..}] times 10 80 20
spawnpoint @a[tag=!WasInYellow,tag=!WasInBlue,team=Lobby] -43 211 78
spawnpoint @a[tag=WasInYellow,scores={LeaveGame=1..}] -36 211 96
spawnpoint @a[tag=WasInBlue,scores={LeaveGame=1..}] -36 211 61
clear @a[scores={LeaveGame=1..}]
tp @a[scores={LeaveGame=1..},tag=!WasInYellow,tag=!WasInBlue] -43 211 78 90 0
tp @a[scores={LeaveGame=1..},tag=WasInYellow] -36 211 96.0 90 0
tp @a[scores={LeaveGame=1..},tag=WasInBlue] -36 211 61.0 90 0
execute as @a[scores={LeaveGame=1..},predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[scores={LeaveGame=1..,LeaveMidgame=1}] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1
scoreboard players set @a[scores={LeaveGame=1..}] LeaveMidgame 0
scoreboard players set @a[team=!Yellow,team=!Blue] LeaveMidgame 0
tag @a[scores={LeaveGame=1..}] remove YellowNovaAttach
tag @a[scores={LeaveGame=1..}] remove BlueNovaAttach

#Hardcore compatibility
scoreboard players add @a[tag=hardcoreKilled] hardcoreKilled 1
execute as @a[tag=hardcoreKilled,scores={hardcoreKilled=4..},team=Lobby] at @s run tp @s ~ ~ ~ 90 0
execute as @s[tag=Hardcore] unless entity @s[tag=!GameStarted,tag=!GameEnd] as @a[tag=hardcoreKilled,scores={hardcoreKilled=3},team=Lobby] unless entity @s[tag=!WasInBlue,tag=!WasInYellow] at @s run tp @s ~ ~ ~-0.5
tag @a[tag=hardcoreKilled,scores={hardcoreKilled=4..}] remove hardcoreKilled
scoreboard players reset @a[tag=!hardcoreKilled] hardcoreKilled
execute as @s[tag=Hardcore] run gamerule showDeathMessages false
execute as @s[tag=Hardcore] as @a[scores={LeaveGame=1..},tag=!hardcoreKilled] run kill @s
execute as @s[tag=Hardcore] as @a[scores={LeaveGame=1..}] run tag @s add hardcoreKilled
execute as @s[tag=Hardcore] run gamerule showDeathMessages true

#Reset
scoreboard players reset @a[scores={LeaveGame=1..}] LeaveGame