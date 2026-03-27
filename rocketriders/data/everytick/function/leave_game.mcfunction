##Handles players who leave/rejoin the game
#For placing players where they belong based on team
tag @a[x=0,tag=WasInYellow] remove WasInYellow
tag @a[x=0,tag=WasInBlue] remove WasInBlue
tag @a[x=0,predicate=custom:team/yellow] add WasInYellow
tag @a[x=0,predicate=custom:team/blue] add WasInBlue
scoreboard players add @a[x=0] LeaveGame 0

# Tag 1v1 Duel Forfeiters
tag @a[x=0] remove leave_game.forfeiter
execute if predicate game:phase/match unless predicate game:phase/match/closing if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run tag @a[x=0,scores={LeaveGame=1..},predicate=custom:team/any_playing_team] add leave_game.forfeiter

#Clearing effects/tags and teleporting to lobby
tag @a[x=0,scores={LeaveGame=1..}] remove force_mount
execute as @a[x=0,scores={LeaveGame=1..}] run function custom:player_action/forget_canopy
execute as @a[x=0,scores={LeaveGame=1..}] run function custom:player_action/forget_nova_attach
execute as @a[x=0,scores={LeaveGame=1..}] run function custom:player_action/forget_spell_emitter
execute as @a[x=0,scores={LeaveGame=1..}] run ride @s dismount
tag @a[x=0,predicate=!custom:team/any_playing_team,tag=CarryFlag] remove CarryFlag
tag @a[x=0,predicate=!custom:team/any_playing_team,tag=CarryFY1] remove CarryFY1
tag @a[x=0,predicate=!custom:team/any_playing_team,tag=CarryFY2] remove CarryFY2
tag @a[x=0,predicate=!custom:team/any_playing_team,tag=CarryFB1] remove CarryFB1
tag @a[x=0,predicate=!custom:team/any_playing_team,tag=CarryFB2] remove CarryFB2
effect clear @a[x=0,scores={LeaveGame=1..}]
effect give @a[x=0,scores={LeaveGame=1..}] instant_health 1 100 true
effect give @a[x=0,scores={LeaveGame=1..}] resistance infinite 100 true
effect give @a[x=0,scores={LeaveGame=1..}] night_vision infinite 100 true
execute as @a[x=0,scores={LeaveGame=1..},predicate=!custom:team/lobby] run function custom:team/join_lobby
execute as @a[x=0,scores={LeaveGame=1..}] run function custom:reset_inventory
execute as @a[x=0,scores={LeaveGame=1..}] run gamemode survival
execute as @a[x=0,scores={LeaveGame=1..}] run gamemode adventure
title @a[x=0,scores={LeaveGame=1..}] times 5 30 5
title @a[x=0,scores={LeaveGame=1..}] actionbar ""
title @a[x=0,scores={LeaveGame=1..}] title ""
title @a[x=0,scores={LeaveGame=1..}] subtitle ""
spawnpoint @a[x=0,tag=!WasInYellow,tag=!WasInBlue,scores={LeaveGame=1..}] -43 211 78 90 0
spawnpoint @a[x=0,tag=WasInYellow,scores={LeaveGame=1..}] -36 211 96 90 0
spawnpoint @a[x=0,tag=WasInBlue,scores={LeaveGame=1..}] -36 211 61 90 0
clear @a[x=0,scores={LeaveGame=1..}]
tp @a[x=0,scores={LeaveGame=1..},tag=!WasInYellow,tag=!WasInBlue] -43 211 78 90 0
tp @a[x=0,scores={LeaveGame=1..},tag=WasInYellow] -36 211 96.0 90 0
tp @a[x=0,scores={LeaveGame=1..},tag=WasInBlue] -36 211 61.0 90 0
execute unless predicate game:phase/match/closing unless predicate game:phase_last/match/closing run tp @a[x=0,scores={LeaveGame=1..},tag=WasInYellow] -77.50 204.00 92.50 45.00 0.00
execute unless predicate game:phase/match/closing unless predicate game:phase_last/match/closing run tp @a[x=0,scores={LeaveGame=1..},tag=WasInBlue] -77.50 204.00 64.50 135.00 0.00
execute unless predicate game:phase/match/closing unless predicate game:phase_last/match/closing run tag @a[x=0,scores={LeaveGame=1..}] add teleport_sound
execute as @a[x=0,scores={LeaveGame=1..},predicate=custom:is_on_fire] at @s run function game:putoutfire
tag @a[x=0,scores={LeaveGame=1..}] remove cursorItem
scoreboard players reset @a[x=0,scores={LeaveGame=1..}] flag.is_nova_attached
scoreboard players reset @a[x=0,scores={LeaveGame=1..},predicate=items:shooting_saber/infinity] shooting_saber.infinity_time
scoreboard players reset @a[x=0,scores={LeaveGame=1..},predicate=items:shooting_saber/multishot] shooting_saber.multishot_time
scoreboard players reset @a[x=0,scores={LeaveGame=1..},predicate=items:elytra/elytra] elytra_time

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

#Notify game (if already selected)
execute if predicate game:joinable_match_phase unless entity @s[tag=SMSwitch] run tag @a[x=0,scores={LeaveGame=1..},tag=!informMeLate] add informMe

#Do so late for new players
execute if predicate game:joinable_match_phase unless entity @s[tag=SMSwitch] as @a[x=0,tag=informMeLate] run scoreboard players add @s informMeLate 1
execute if predicate game:joinable_match_phase unless entity @s[tag=SMSwitch] as @a[x=0,tag=informMeLate,scores={informMeLate=120..}] run tag @s add informMe
execute if predicate game:joinable_match_phase unless entity @s[tag=SMSwitch] as @a[x=0,tag=informMeLate,scores={informMeLate=120..}] run tag @s remove informMeLate
execute unless predicate game:joinable_match_phase run tag @a[x=0] remove informMeLate
execute if entity @s[tag=SMSwitch] run tag @a[x=0] remove informMeLate
scoreboard players reset @a[x=0,tag=!informMeLate] informMeLate

#Update Armor
execute as @a[x=0,scores={LeaveGame=1..}] run function custom:update_armor

#Reset
execute if entity @a[limit=1,x=0,scores={LeaveGame=1..}] run function everytick:team_count
scoreboard players set @a[x=0,scores={LeaveGame=1..}] LeaveMidgame 0
scoreboard players set @a[x=0,predicate=!custom:team/any_playing_team] LeaveMidgame 0
scoreboard players reset @a[x=0,scores={LeaveGame=1..}] VoteNum
scoreboard players reset @a[x=0,scores={LeaveGame=1..}] VoteServerMode
scoreboard players reset @a[x=0,scores={LeaveGame=1..}] LeaveGame

# 1v1 Duel Forfeit
execute if entity @a[limit=1,x=0,tag=leave_game.forfeiter] as @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run function rr_duel:game/upon_forfeit
tag @a[x=0] remove leave_game.forfeiter
