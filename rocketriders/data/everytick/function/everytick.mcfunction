####################################
## EVERYTICK: Where everything in ##
## the core RR Datapack runs from ##
####################################

# Handle events and flags
execute as @e[x=0,type=player,scores={flag.is_dead=1}] at @s run function custom:event/player_respawns/main
scoreboard players set @a[x=0] flag.is_dead 1
scoreboard players set @e[x=0,type=player] flag.is_dead 0

execute as @a[scores={event.player_uses_pig_spawn_egg=1..}] at @s run function custom:event/player_uses_pig_spawn_egg/main
execute as @a[scores={event.player_uses_written_book=1..}] at @s run function custom:event/player_uses_written_book/main

# Tick entities
function entities:tick

# Reset join pads barrier tags
tag @e[limit=3,x=0,type=marker,tag=join_pad] remove join_pad.was_showing_barrier
tag @e[limit=3,x=0,type=marker,tag=join_pad,tag=join_pad.show_barrier] add join_pad.was_showing_barrier
tag @e[limit=3,x=0,type=marker,tag=join_pad] remove join_pad.show_barrier

# Crafting Slots
execute as @a[x=0,gamemode=!spectator] if items entity @s player.crafting.* * run function items:crafting/check

#Server mode
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=!SMCustom] remove SMActive
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=1..}] add SMActive
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] if entity @a[x=0] run function servermode:loop
scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ServerModeVoting] VoteServerMode
execute unless entity @a[x=0,team=Lobby] run scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] VoteServerMode
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=1..}] unless entity @a[x=0] run function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=SMCustom] unless entity @a[x=0] run scoreboard players set @s RepeatSettings 0
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=SMCustom] unless entity @a[x=0] run function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=SMCustom] unless entity @a[x=0] run function arenaclear:globaldefaults
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] run scoreboard players reset @a[x=0] VoteServerMode
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] run kill @e[x=0,type=marker,tag=ServerMode]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMSwitch] run scoreboard players add $smswitch CmdData 1
execute if score $smswitch CmdData matches 5.. run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMSwitch] remove SMSwitch
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] unless entity @s[tag=SMSwitch] run scoreboard players reset $smswitch CmdData

#Player tags for plugin interaction
tag @a[x=0,team=Yellow] add OnTeam
tag @a[x=0,team=Blue] add OnTeam
tag @a[x=0,team=Spectator] add OnTeam
tag @a[x=0,team=Lobby] remove OnTeam

#Handling new/lobby players and miscellaneous stuff
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:new_player
scoreboard players add $curr leavecheck 1
scoreboard players add @a[x=0] leavecheck 1
execute as @a[x=0] unless score @s leavecheck = $curr leavecheck run scoreboard players set @s LeaveGame 1
scoreboard players operation @a[x=0] leavecheck = $curr leavecheck
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:leave_game
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] in minecraft:overworld run function everytick:general_settings_or_hotfixes

#Team/inventory counting and game-related effects
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:team_count
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:gamestart
execute if predicate game:game_started as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] at @s run function game:ingame
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run function everytick:regen_system
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run gamerule naturalRegeneration true

#Night vision/saturation and more lobby functionality
effect give @a[x=0,team=Lobby] night_vision infinite 100 true
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Sonar] run effect give @a[x=0,team=Spectator] night_vision infinite 100 true
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run effect give @a[x=0] saturation infinite 0 true
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run effect clear @a[x=0] saturation
execute as @a[x=0,team=Lobby,tag=hardcore] run function modifiers:hardcorereset
execute as @a[x=0,team=Lobby,tag=hobbit] run function modifiers:hobbit/reset
function lobby:bookwarp
scoreboard players enable @a[x=0,team=Lobby] displayinfo
scoreboard players enable @a[x=0,team=Developer] displayinfo
execute as @a[x=0,scores={displayinfo=1..}] at @s run function lobby:displayinfo
execute as @a[x=0,team=Lobby] run function everytick:score_reset
execute if loaded 25 184 -6 unless predicate game:game_started run function lobby:credits/cycle
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run function lobby:parkour/parkour
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run function lobby:parkour/parkourserver
stopsound @a[x=0] ambient minecraft:ambient.cave

#Handling portals/roof with utilities
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:cancel_utility

#Arrow pickup
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd,tag=!customArrowPickup] if entity @e[x=0,type=arrow] run function everytick:arrow_pickup

#Game ending and arena clearing
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameEnd,tag=!NoModesInstalled] run function game:gameend
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SuddenDeath,tag=!SuddenDeathCustom,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:suddendeath
execute if entity @e[x=0,type=marker,tag=ArenaClearChecker,tag=!Cleared,tag=!BasePlaced] run scoreboard players add $acdelay CmdData 1
execute if score $acdelay CmdData matches 7.. run tellraw @a[x=0] {"text":"Warning: Force clearing arena since previous gamemode is unknown.","color":"red"}
execute if score $acdelay CmdData matches 7.. run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add normalLast
execute if score $acdelay CmdData matches 7.. run scoreboard players reset $acdelay CmdData
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced] run scoreboard players reset $acdelay CmdData
kill @e[x=0,type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd,tag=!EditedSettings,tag=!NoModesInstalled,tag=!NoModesEnabled] run function arenaclear:customizer
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsignsquery
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=JustCleared] run scoreboard players add $justcleared CmdData 1
execute if score $justcleared CmdData matches 10.. run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=JustCleared] remove JustCleared
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] unless entity @s[tag=JustCleared] run scoreboard players reset $justcleared CmdData

#Gamemode/reload handling
execute if loaded -43 210 78 run function gamemodes:disableerror
execute if score $reloaded CmdData matches 1..100 run scoreboard players add $reloaded CmdData 1
execute if score $reloaded CmdData matches 101 run scoreboard players reset $reloaded

#Edit Settings
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] run scoreboard players enable @a[x=0,team=!Spectator,team=!Blue,team=!Yellow] editSettings
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] as @a[x=0] run trigger editSettings set 0
execute as @a[x=0,team=!Lobby,team=!Developer] run trigger editSettings set 0
execute as @a[x=0,team=!Spectator,team=!Blue,team=!Yellow,scores={editSettings=1..}] run function lobby:cancelsettings/interact
execute if score $mcancel CmdData matches -1 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings,scores={bluesCount=0,yellowsCount=0,servermode=0}] run function lobby:cancelsettings/resume
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings,scores={bluesCount=0,yellowsCount=0,servermode=..1}] if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,0,0],scale:2} -56.3 203.5 79.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings,scores={bluesCount=0,yellowsCount=0,servermode=..1}] if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,0,0],scale:2} -56.3 203.5 77.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

#Set maximum portal cooldown for all entities
execute as @e[type=!player,predicate=custom:belowroof,tag=!set_max_portal_cooldown] run function custom:set_max_portal_cooldown
