##Welcome/handle new players (anyone with a firstJoined score of 0 is a new player)
scoreboard players add @a firstJoined 0
scoreboard players set @a[scores={firstJoined=0}] LeaveGame 1
title @a[scores={firstJoined=0}] title [{"text":"Welcome to","color":"white","bold":"true"}]
title @a[scores={firstJoined=0}] subtitle [{"text":"Rocket ","color":"blue","bold":"true"},{"text":"Riders","color":"gold","bold":"true"},{"text":"!","color":"white","bold":"true"}]
scoreboard players add @a[scores={firstJoined=0}] firstJoined 1