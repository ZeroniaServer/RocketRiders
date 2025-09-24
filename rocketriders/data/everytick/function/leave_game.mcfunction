##Handles players who leave/rejoin the game
#For placing players where they belong based on team
tag @a[x=0,tag=WasInYellow] remove WasInYellow
tag @a[x=0,tag=WasInBlue] remove WasInBlue
tag @a[x=0,team=Yellow] add WasInYellow
tag @a[x=0,team=Blue] add WasInBlue
scoreboard players add @a[x=0] LeaveGame 0

#Clearing effects/tags and teleporting to lobby
tag @a[x=0,team=!Blue,team=!Yellow,tag=CarryFlag] remove CarryFlag
tag @a[x=0,team=!Blue,team=!Yellow,tag=CarryFY1] remove CarryFY1
tag @a[x=0,team=!Blue,team=!Yellow,tag=CarryFY2] remove CarryFY2
tag @a[x=0,team=!Blue,team=!Yellow,tag=CarryFB1] remove CarryFB1
tag @a[x=0,team=!Blue,team=!Yellow,tag=CarryFB2] remove CarryFB2
effect clear @a[x=0,scores={LeaveGame=1..}]
effect give @a[x=0,scores={LeaveGame=1..}] instant_health 1 100 true
effect give @a[x=0,scores={LeaveGame=1..}] resistance infinite 100 true
effect give @a[x=0,scores={LeaveGame=1..}] night_vision infinite 100 true
team join Lobby @a[x=0,scores={LeaveGame=1..},team=!Lobby]
execute as @a[x=0,scores={LeaveGame=1..}] run gamemode survival
execute as @a[x=0,scores={LeaveGame=1..}] run gamemode adventure
title @a[x=0,scores={LeaveGame=1..,firstJoined=2}] times 5 30 5
title @a[x=0,scores={LeaveGame=1..,firstJoined=2}] actionbar [""]
title @a[x=0,scores={LeaveGame=1..,firstJoined=2}] title [""]
title @a[x=0,scores={LeaveGame=1..,firstJoined=2}] subtitle [""]
spawnpoint @a[x=0,tag=!WasInYellow,tag=!WasInBlue,scores={LeaveGame=1..}] -43 211 78 90 0
spawnpoint @a[x=0,tag=WasInYellow,scores={LeaveGame=1..}] -36 211 96 90 0
spawnpoint @a[x=0,tag=WasInBlue,scores={LeaveGame=1..}] -36 211 61 90 0
clear @a[x=0,scores={LeaveGame=1..}]
tp @a[x=0,scores={LeaveGame=1..},tag=!WasInYellow,tag=!WasInBlue] -43 211 78 90 0
tp @a[x=0,scores={LeaveGame=1..},tag=WasInYellow] -36 211 96.0 90 0
tp @a[x=0,scores={LeaveGame=1..},tag=WasInBlue] -36 211 61.0 90 0
execute as @a[x=0,scores={LeaveGame=1..},predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[x=0,scores={LeaveGame=1..,LeaveMidgame=1}] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1
tag @a[x=0,scores={LeaveGame=1..}] remove cursorItem
scoreboard players reset @a[x=0,scores={LeaveGame=1..}] flag.is_nova_attached
tag @a[x=0,scores={LeaveGame=1..}] remove wearing_elytra
tag @a[x=0,scores={LeaveGame=1..}] remove was_using_voting_ballot
tag @a[x=0,scores={LeaveGame=1..}] remove is_using_voting_ballot

#Parkour quit
execute if predicate rr:has_parkour as @a[x=0,scores={LeaveGame=1..},tag=inParkour] run tellraw @s [{"text":"You left the game, so your Parkour run was canceled.","color":"red"}]
execute as @a[x=0,scores={LeaveGame=1..},tag=inParkour] run tag @s remove inParkour

#Handle achievements with servermode
execute if predicate rr:has_achievements as @a[x=0,scores={LeaveGame=1..}] run function achievements:roots
execute unless predicate rr:has_achievements if predicate rr:server_mode/realms as @a[x=0,scores={LeaveGame=1..}] run advancement grant @s only 2811iaj1:root
execute unless predicate rr:has_achievements if predicate rr:is_cubekrowd as @a[x=0,scores={LeaveGame=1..}] run function achievements:reset

#Traveler fix
tag @a[x=0,scores={LeaveGame=1..}] remove beenOnYellow
tag @a[x=0,scores={LeaveGame=1..}] remove beenOnBlue
tag @a[x=0,scores={LeaveGame=1..}] remove beenOnBoth

#Infinity/Multishot fix
scoreboard players reset @a[x=0,scores={LeaveGame=1..},predicate=items:shooting_saber/infinity] shooting_saber.infinity_time
scoreboard players reset @a[x=0,scores={LeaveGame=1..},predicate=items:shooting_saber/multishot] shooting_saber.multishot_time

#Voting message if in voting phase
execute if entity @s[tag=ServerModeVoting,scores={VoteServerMode=3..}] as @a[x=0,scores={LeaveGame=1..}] run function servermode:notifyvote
#Notify game (if already selected)
execute unless predicate game:game_ended if entity @s[tag=EditedSettings,tag=!SMSwitch] run tag @a[x=0,scores={LeaveGame=1..,LeaveMidgame=0},tag=!informMeLate] add informMe
execute unless predicate game:game_ended if entity @s[tag=EditedSettings,tag=!SMSwitch] run scoreboard players add @a[x=0,scores={informMeLate=1..120}] informMeLate 1
execute unless predicate game:game_ended if entity @s[tag=EditedSettings,tag=!SMSwitch] run scoreboard players add @a[x=0,tag=informMeLate] informMeLate 1
execute unless predicate game:game_ended if entity @s[tag=EditedSettings,tag=!SMSwitch] run tag @a[x=0,scores={informMeLate=1..}] remove informMeLate
execute unless predicate game:game_ended if entity @s[tag=EditedSettings,tag=!SMSwitch] run tag @a[x=0,scores={informMeLate=120..}] add informMe
execute unless predicate game:game_ended if entity @s[tag=EditedSettings,tag=!SMSwitch] run scoreboard players reset @a[x=0,tag=informMe] informMeLate
execute unless entity @s[predicate=!game:game_ended,tag=EditedSettings,tag=!SMSwitch] run tag @a[x=0] remove informMeLate
execute unless entity @s[predicate=!game:game_ended,tag=EditedSettings,tag=!SMSwitch] run scoreboard players reset @a[x=0] informMeLate

#Reset
scoreboard players set @a[x=0,scores={LeaveGame=1..}] LeaveMidgame 0
scoreboard players set @a[x=0,team=!Yellow,team=!Blue] LeaveMidgame 0
scoreboard players reset @a[x=0,scores={LeaveGame=1..}] VoteNum
scoreboard players reset @a[x=0,scores={LeaveGame=1..}] VoteServerMode
scoreboard players reset @a[x=0,scores={LeaveGame=1..}] LeaveGame

#Update Armor
execute as @a[x=0,scores={LeaveGame=1..}] run function custom:update_armor
