#leavegame
team join Lobby @a[scores={LeaveGame=1..}]
gamemode adventure @a[scores={LeaveGame=1..}]
spawnpoint @a[scores={LeaveGame=1..}] -43 211 78
clear @a[scores={LeaveGame=1..}]
tp @a[scores={LeaveGame=1..}] -43 211 78 90 0
execute as @a[scores={LeaveGame=1..,LeaveMidgame=1}] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1
scoreboard players set @a[scores={LeaveGame=1..}] LeaveMidgame 0
scoreboard players set @a[team=!Yellow,team=!Blue] LeaveMidgame 0
scoreboard players reset @a[scores={LeaveGame=1..}] LeaveGame