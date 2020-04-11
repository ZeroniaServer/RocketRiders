#leavegame
spawnpoint @a[scores={LeaveGame=1}] -43 211 78
clear @a[scores={LeaveGame=1}]
tp @a[scores={LeaveGame=1}] -43 211 78 90 0
gamemode adventure @a[scores={LeaveGame=1}]
team join Lobby @a[scores={LeaveGame=1}]
scoreboard players reset @a[scores={LeaveGame=1}] LeaveGame