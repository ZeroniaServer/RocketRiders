##Welcome/handle new players (anyone with a firstJoined score of 0 is a new player)
scoreboard players add @a firstJoined 0
tp @a[scores={firstJoined=0}] -43 211 78 90 0
scoreboard players set @a[scores={firstJoined=0}] LeaveGame 1
execute as @a[scores={firstJoined=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.2
execute as @a[scores={firstJoined=0}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1.5
title @a[scores={firstJoined=0}] times 10 80 20
title @a[scores={firstJoined=0}] title [{"text":"Welcome to","color":"white"}]
title @a[scores={firstJoined=0}] subtitle [{"text":"Rocket ","color":"blue","bold":true},{"text":"Riders","color":"gold","bold":true},{"text":" v1.0.6!","color":"green","bold":false}]

#Handle achievements
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a[scores={firstJoined=0}] run function achievements:roots
execute if entity @s[scores={servermode=0},tag=realms] as @a[scores={firstJoined=0}] run advancement grant @s only tutorial:root

#Welcome message
execute if entity @s[tag=SMActive] as @a[scores={firstJoined=0}] run tellraw @s ["",{"text":"Welcome to ","color":"gray"},{"text":"Rocket ","color":"blue"},{"text":"Riders","color":"gold"},{"text":", ","color":"gray"},{"selector":"@s","color":"green"},{"text":"! Use the ","color":"gray"},{"text":"Navigation Book","color":"dark_green"},{"text":" to explore the Lobby. You can join the game with join pads, see missiles in the Missile Display Area, or try the Parkour. Enjoy!","color":"gray"}]
execute if entity @s[tag=SMActive,scores={VoteServerMode=1..}] as @a[scores={firstJoined=0}] run tellraw @s [""]

tag @a[scores={firstJoined=0}] add informMeLate
scoreboard players add @a[scores={firstJoined=0}] firstJoined 1