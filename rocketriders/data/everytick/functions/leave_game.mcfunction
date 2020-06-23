#leavegame
effect clear @a[scores={LeaveGame=1..}]
team join Lobby @a[scores={LeaveGame=1..}]
gamemode adventure @a[scores={LeaveGame=1..}]
spawnpoint @a[scores={LeaveGame=1..}] -43 211 78
clear @a[scores={LeaveGame=1..}]
tp @a[scores={LeaveGame=1..}] -43 211 78 90 0
execute as @a[scores={LeaveGame=1..,LeaveMidgame=1}] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1
scoreboard players set @a[scores={LeaveGame=1..}] LeaveMidgame 0
scoreboard players set @a[team=!Yellow,team=!Blue] LeaveMidgame 0
tag @a[scores={LeaveGame=1..}] remove YellowNovaAttach
tag @a[scores={LeaveGame=1..}] remove BlueNovaAttach

#Hardcore compatibility
scoreboard players add @a[tag=hardcoreKilled] hardcoreKilled 1
execute as @a[tag=hardcoreKilled,scores={hardcoreKilled=3..},team=Lobby] at @s run tp @s ~ ~ ~ 90 0
tag @a[tag=hardcoreKilled,scores={hardcoreKilled=3..}] remove hardcoreKilled
scoreboard players reset @a[tag=!hardcoreKilled] hardcoreKilled
execute as @s[tag=GameStarted,tag=Hardcore] run gamerule showDeathMessages false
execute as @s[tag=GameStarted,tag=Hardcore] as @a[scores={LeaveGame=1..}] run kill @s
execute as @s[tag=GameStarted,tag=Hardcore] as @a[scores={LeaveGame=1..}] run tag @s add hardcoreKilled
execute as @s[tag=GameStarted,tag=Hardcore] run gamerule showDeathMessages true

scoreboard players reset @a[scores={LeaveGame=1..}] LeaveGame