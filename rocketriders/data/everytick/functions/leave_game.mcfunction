##Handles players who leave/rejoin the game
#For placing players where they belong based on team
tag @a[tag=WasInYellow] remove WasInYellow
tag @a[tag=WasInBlue] remove WasInBlue
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
gamemode survival @a[scores={LeaveGame=1..}]
gamemode adventure @a[scores={LeaveGame=1..}]
spawnpoint @a[tag=!WasInYellow,tag=!WasInBlue,scores={LeaveGame=1..}] -43 211 78 90
spawnpoint @a[tag=WasInYellow,scores={LeaveGame=1..}] -36 211 96 90
spawnpoint @a[tag=WasInBlue,scores={LeaveGame=1..}] -36 211 61 90
clear @a[scores={LeaveGame=1..}]
tp @a[scores={LeaveGame=1..},tag=!WasInYellow,tag=!WasInBlue] -43 211 78 90 0
tp @a[scores={LeaveGame=1..},tag=WasInYellow] -36 211 96.0 90 0
tp @a[scores={LeaveGame=1..},tag=WasInBlue] -36 211 61.0 90 0
execute as @a[scores={LeaveGame=1..},predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[scores={LeaveGame=1..,LeaveMidgame=1}] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1
tag @a[scores={LeaveGame=1..}] remove YellowNovaAttach
tag @a[scores={LeaveGame=1..}] remove BlueNovaAttach
scoreboard players reset @a[scores={LeaveGame=1..}] novattach
tag @a[scores={LeaveGame=1..}] remove threwCanopy
tag @a[scores={LeaveGame=1..}] remove cursorItem

#Parkour quit
execute if entity @s[tag=!SMActive] as @a[scores={LeaveGame=1..},tag=inParkour] run tellraw @s [{"text":"You left the game, so your Parkour run was canceled.","color":"red"}]
execute as @a[scores={LeaveGame=1..},tag=inParkour] run tag @s remove inParkour

#Handle achievements with servermode
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a[scores={LeaveGame=1..}] run function achievements:roots
execute if entity @s[scores={servermode=0},tag=realms,tag=!SMCustom] as @a[scores={LeaveGame=1..}] run advancement grant @s only 2811iaj1:root
execute if entity @s[scores={servermode=1..}] as @a[scores={LeaveGame=1..}] run function achievements:reset

#Traveler fix
tag @a[scores={LeaveGame=1..}] remove beenOnYellow
tag @a[scores={LeaveGame=1..}] remove beenOnBlue
tag @a[scores={LeaveGame=1..}] remove beenOnBoth

#Voting message if in voting phase
execute if entity @s[tag=ServerModeVoting,scores={VoteServerMode=3..}] as @a[scores={LeaveGame=1..}] run function servermode:notifyvote
#Notify game (if already selected)
execute if entity @s[tag=!GameEnd,tag=EditedSettings,tag=!SMSwitch] run tag @a[scores={LeaveGame=1..,LeaveMidgame=0},tag=!informMeLate] add informMe
execute if entity @s[tag=!GameEnd,tag=EditedSettings,tag=!SMSwitch] run scoreboard players add @a[scores={informMeLate=1..120}] informMeLate 1
execute if entity @s[tag=!GameEnd,tag=EditedSettings,tag=!SMSwitch] run scoreboard players add @a[tag=informMeLate] informMeLate 1
execute if entity @s[tag=!GameEnd,tag=EditedSettings,tag=!SMSwitch] run tag @a[scores={informMeLate=1..}] remove informMeLate
execute if entity @s[tag=!GameEnd,tag=EditedSettings,tag=!SMSwitch] run tag @a[scores={informMeLate=120..}] add informMe
execute if entity @s[tag=!GameEnd,tag=EditedSettings,tag=!SMSwitch] run scoreboard players reset @a[tag=informMe] informMeLate
execute unless entity @s[tag=!GameEnd,tag=EditedSettings,tag=!SMSwitch] run tag @a remove informMeLate
execute unless entity @s[tag=!GameEnd,tag=EditedSettings,tag=!SMSwitch] run scoreboard players reset @a informMeLate

#Reset
scoreboard players set @a[scores={LeaveGame=1..}] LeaveMidgame 0
scoreboard players set @a[team=!Yellow,team=!Blue] LeaveMidgame 0
scoreboard players reset @a[scores={LeaveGame=1..}] VoteNum
scoreboard players reset @a[scores={LeaveGame=1..}] VoteServerMode
scoreboard players reset @a[scores={LeaveGame=1..}] LeaveGame