##Welcome/handle new players (anyone with a firstJoined score of 0 is a new player)
scoreboard players add @a[x=0] firstJoined 0
tp @a[x=0,scores={firstJoined=0}] -43 211 78 90 0
gamemode survival @a[x=0,scores={firstJoined=0}]
gamemode adventure @a[x=0,scores={firstJoined=0}]
scoreboard players set @a[x=0,scores={firstJoined=0}] LeaveGame 1

#Handle achievements
execute if predicate rr:has_achievements as @a[x=0,scores={firstJoined=0}] run function achievements:roots
execute if predicate rr:server_mode/realms as @a[x=0,scores={firstJoined=0}] run advancement grant @s only 2811iaj1:root

#Welcome message
execute as @a[x=0,scores={firstJoined=0}] run tellraw @s ["",{"text":"Welcome to ","color":"gray"},{"text":"Rocket ","color":"blue"},{"text":"Riders","color":"gold"},{"text":", ","color":"gray"},{"selector":"@s","color":"green"},{"text":"! Use the ","color":"gray"},{"text":"Navigation Book","color":"dark_green"},{"text":" to explore the Lobby. You can join the game with join pads, see missiles in the Missile Display Area, or try the Parkour. Enjoy!","color":"gray"}]

tag @a[x=0,scores={firstJoined=0}] add informMeLate
scoreboard players add @a[x=0,scores={firstJoined=0..1}] firstJoined 1