##Welcome/handle new players (anyone with a firstJoined score of 0 is a new player)
scoreboard players add @a[x=0] firstJoined 0
tp @a[x=0,scores={firstJoined=0}] -43 211 78 90 0
gamemode survival @a[x=0,scores={firstJoined=0}]
gamemode adventure @a[x=0,scores={firstJoined=0}]
scoreboard players set @a[x=0,scores={firstJoined=0}] LeaveGame 1
execute as @a[x=0,scores={firstJoined=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.2
execute as @a[x=0,scores={firstJoined=0}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1.5
title @a[x=0,scores={firstJoined=0}] times 10 80 20
title @a[x=0,scores={firstJoined=0}] title [{"text":"Welcome to","color":"white"}]
title @a[x=0,scores={firstJoined=0}] subtitle [{"text":"Rocket ","color":"blue","bold":true},{"text":"Riders","color":"gold","bold":true},{"text":" v1.3.0!","color":"green","bold":false}]

#Handle achievements
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a[x=0,scores={firstJoined=0}] run function achievements:roots
execute if entity @s[scores={servermode=0},tag=realms] as @a[x=0,scores={firstJoined=0}] run advancement grant @s only 2811iaj1:root

#Welcome message
execute if entity @s[tag=SMActive] as @a[x=0,scores={firstJoined=0}] run tellraw @s ["",{"text":"Welcome to ","color":"gray"},{"text":"Rocket ","color":"blue"},{"text":"Riders","color":"gold"},{"text":", ","color":"gray"},{"selector":"@s","color":"green"},{"text":"! Use the ","color":"gray"},{"text":"Navigation Book","color":"dark_green"},{"text":" to explore the Lobby. You can join the game with join pads, see missiles in the Missile Display Area, or try the Parkour. Enjoy!","color":"gray"}]

tag @a[x=0,scores={firstJoined=0}] add informMeLate
scoreboard players add @a[x=0,scores={firstJoined=0}] firstJoined 1