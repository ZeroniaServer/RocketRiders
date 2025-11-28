##Welcome/handle new players (anyone with a firstJoined score of 0 is a new player)
tp @s -43 211 78 90 0
gamemode survival @s
gamemode adventure @s
scoreboard players set @s LeaveGame 1

#Handle achievements
execute if predicate game:achievements_can_be_awarded run function achievements:roots
execute if predicate rr:server_mode/realms run advancement grant @s only 2811iaj1:root

#Welcome message
tellraw @s ["",{"text":"Welcome to ","color":"gray"},{"text":"Rocket ","color":"blue"},{"text":"Riders","color":"gold"},{"text":", ","color":"gray"},{"selector":"@s","color":"green"},{"text":"! Use the ","color":"gray"},{"text":"Navigation Book","color":"dark_green"},{"text":" to explore the Lobby. You can join the game with join pads, see missiles in the Missile Display Area, or try the Parkour. Enjoy!","color":"gray"}]

tag @s add informMeLate
scoreboard players set @s firstJoined 1
