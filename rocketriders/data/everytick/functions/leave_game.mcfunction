##Handles players who leave/rejoin the game
#For placing players where they belong based on team
tag @a[tag=WasInYellow,tag=!hardcoreKilled] remove WasInYellow
tag @a[tag=WasInBlue,tag=!hardcoreKilled] remove WasInBlue
tag @a[team=Yellow] add WasInYellow
tag @a[team=Blue] add WasInBlue

#Clearing effects/tags and teleporting to lobby
tag @a[team=!Blue,team=!Yellow,tag=CarryFlag] remove CarryFlag
tag @a[team=!Blue,team=!Yellow,tag=CarryFY1] remove CarryFY1
tag @a[team=!Blue,team=!Yellow,tag=CarryFY2] remove CarryFY2
tag @a[team=!Blue,team=!Yellow,tag=CarryFB1] remove CarryFB1
tag @a[team=!Blue,team=!Yellow,tag=CarryFB2] remove CarryFB2
effect clear @a[scores={LeaveGame=1..}]
effect give @a[scores={LeaveGame=1..}] regeneration 1 255 true
effect give @a[scores={LeaveGame=1..}] resistance 1000000 255 true
effect give @a[scores={LeaveGame=1..}] night_vision 1000000 100 true
team join Lobby @a[scores={LeaveGame=1..},team=!Lobby]
gamemode adventure @a[scores={LeaveGame=1..},gamemode=!adventure]
spawnpoint @a[tag=!WasInYellow,tag=!WasInBlue,scores={LeaveGame=1..}] -43 211 78 90
spawnpoint @a[tag=WasInYellow,scores={LeaveGame=1..}] -36 211 96 90
spawnpoint @a[tag=WasInBlue,scores={LeaveGame=1..}] -36 211 61 90
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
execute as @s[tag=Hardcore] as @a[tag=hardcoreKilled,scores={hardcoreKilled=7..},team=Lobby] unless entity @s[tag=!WasInBlue,tag=!WasInYellow] at @s run tp @s ~ ~ ~-0.5 90 0
tag @a[tag=hardcoreKilled,scores={hardcoreKilled=7..}] remove hardcoreKilled
scoreboard players reset @a[tag=!hardcoreKilled] hardcoreKilled
execute as @s[tag=Hardcore] run gamerule showDeathMessages false
execute as @s[tag=Hardcore] as @a[scores={LeaveGame=1..},tag=!hardcoreKilled] unless entity @s[tag=!WasInBlue,tag=!WasInYellow] run kill @s
execute as @s[tag=Hardcore] as @a[scores={LeaveGame=1..}] unless entity @s[tag=!WasInBlue,tag=!WasInYellow] run tag @s add hardcoreKilled
execute as @s[tag=Hardcore] run gamerule showDeathMessages true

#Parkour quit
execute as @s[tag=!SMActive] as @a[scores={LeaveGame=1..},tag=inParkour] run tellraw @s [{"text":"You left the game, so your Parkour run was canceled.","color":"red"}]
execute as @a[scores={LeaveGame=1..},tag=inParkour] run tag @s remove inParkour

#Handle achievements with servermode
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a[scores={LeaveGame=1..}] run function achievements:roots
execute as @s[scores={servermode=0},tag=realms,tag=!SMCustom] as @a[scores={LeaveGame=1..}] run advancement grant @s only tutorial:root
execute as @s[scores={servermode=1..}] as @a[scores={LeaveGame=1..}] run function achievements:reset

#Traveler fix
tag @a[scores={LeaveGame=1..}] remove beenOnYellow
tag @a[scores={LeaveGame=1..}] remove beenOnBlue
tag @a[scores={LeaveGame=1..}] remove beenOnBoth

#Voting message if in voting phase
execute as @s[tag=ServerModeVoting,scores={VoteServerMode=3..}] as @a[scores={LeaveGame=1..}] run tellraw @s ["",{"text":"Rocket ","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":" - ","color":"dark_gray"},{"text":"Server Mode:","color":"green","bold":"true"},{"text":"\n"},{"text":"Click below or use ","color":"dark_green"},{"text":"/vote ","color":"green","bold":"true"},{"text":"to vote for gamemodes and maps:","color":"dark_green"}]
execute as @s[tag=ServerModeVoting,scores={VoteServerMode=3..}] as @a[scores={LeaveGame=1..}] run tellraw @s ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"1","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"selector":"@e[tag=ServermodeSet1]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"\n|","bold":true,"color":"dark_gray"}]
execute as @s[tag=ServerModeVoting,scores={VoteServerMode=3..}] as @a[scores={LeaveGame=1..}] run tellraw @s ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"2","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"selector":"@e[tag=ServermodeSet2]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"\n|","bold":true,"color":"dark_gray"}]
execute as @s[tag=ServerModeVoting,scores={VoteServerMode=3..}] as @a[scores={LeaveGame=1..}] run tellraw @s ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"3","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"selector":"@e[tag=ServermodeSet3]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"\n|","bold":true,"color":"dark_gray"}]
execute as @s[tag=ServerModeVoting,scores={VoteServerMode=3..}] as @a[scores={LeaveGame=1..}] run tellraw @s ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"4","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"selector":"@e[tag=ServermodeSet4]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":"\n"}]

#Notify game (if already selected)
execute as @s[tag=EditedSettings,tag=!switchServermode] run tag @a[scores={LeaveGame=1..}] add informMe

#Reset
scoreboard players reset @a[scores={LeaveGame=1..}] VoteNum
scoreboard players reset @a[scores={LeaveGame=1..}] VoteServerMode
scoreboard players reset @a[scores={LeaveGame=1..}] LeaveGame