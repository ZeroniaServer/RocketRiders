##Welcome/handle new players (anyone with a firstJoined score of 0 is a new player)
scoreboard players add @a firstJoined 0
scoreboard players set @a[scores={firstJoined=0}] LeaveGame 1
execute as @a[scores={firstJoined=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.2
execute as @a[scores={firstJoined=0}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1.5
title @a[scores={firstJoined=0}] title [{"text":"Welcome to","color":"white"}]
title @a[scores={firstJoined=0}] subtitle [{"text":"Rocket ","color":"blue","bold":"true"},{"text":"Riders","color":"gold","bold":"true"},{"text":"!","color":"white","bold":"false"}]

#Handle achievements
execute as @s[scores={servermode=0}] as @a[scores={firstJoined=0}] run function achievements:roots

scoreboard players add @a[scores={firstJoined=0}] firstJoined 1