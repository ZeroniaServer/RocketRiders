# Reset join pads barrier tags
tag @e[limit=3,x=0,type=marker,tag=join_pad] remove join_pad.was_showing_barrier
tag @e[limit=3,x=0,type=marker,tag=join_pad,tag=join_pad.show_barrier] add join_pad.was_showing_barrier
tag @e[limit=3,x=0,type=marker,tag=join_pad] remove join_pad.show_barrier

# Crafting Slots
execute as @a[x=0,gamemode=!spectator] if items entity @s player.crafting.* * run function items:crafting/check

# Hotbar auto-fill
execute if function experimental:enabled as @a[x=0,predicate=custom:team/any_playing_team,tag=do_hotbar_auto_fill,predicate=custom:do_hotbar_auto_fill] run function everytick:hotbar_auto_fill

#Server mode
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] if entity @a[x=0] run function servermode:loop
scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ServerModeVoting] VoteServerMode
execute unless entity @a[x=0,predicate=custom:team/lobby] run scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] VoteServerMode
execute if predicate rr:stop_game_if_server_is_empty unless entity @a[x=0] if predicate rr:server_mode/cubekrowd_custom run scoreboard players reset $extra_match_repetitions config
execute if predicate rr:stop_game_if_server_is_empty unless entity @a[x=0] as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function game:forcestop
execute if predicate rr:stop_game_if_server_is_empty unless entity @a[x=0] if predicate rr:server_mode/cubekrowd_custom as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:globaldefaults
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] run scoreboard players reset @a[x=0] VoteServerMode
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] run kill @e[x=0,type=marker,tag=ServerMode]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMSwitch] run scoreboard players add $smswitch CmdData 1
execute if score $smswitch CmdData matches 5.. run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMSwitch] remove SMSwitch
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] unless entity @s[tag=SMSwitch] run scoreboard players reset $smswitch CmdData

#Player tags for plugin interaction
tag @a[x=0,predicate=custom:team/yellow] add OnTeam
tag @a[x=0,predicate=custom:team/blue] add OnTeam
tag @a[x=0,predicate=custom:team/spectator] add OnTeam
tag @a[x=0,predicate=custom:team/lobby] remove OnTeam

#Handling new/lobby players and miscellaneous stuff
scoreboard players add $curr leavecheck 1
scoreboard players add @a[x=0] leavecheck 1
execute as @a[x=0] unless score @s leavecheck = $curr leavecheck run scoreboard players set @s LeaveGame 1
scoreboard players operation @a[x=0] leavecheck = $curr leavecheck
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:leave_game
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] in minecraft:overworld run function everytick:general_settings_or_hotfixes

#Team/inventory counting and game-related effects
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:team_count
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:gamestart
execute if predicate game:phase/match as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] at @s run function game:while_phase/match
execute if predicate game:phase/match/play as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] at @s run function game:while_phase/match/play
execute if predicate rr:do_custom_regen_system as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:regen_system
execute unless predicate rr:do_custom_regen_system run function custom:game_rules/natural_health_regeneration/on

#Night vision/saturation and more lobby functionality
effect give @a[x=0,predicate=custom:team/lobby,predicate=custom:apply_lobby_night_vision] night_vision infinite 100 true
effect clear @a[x=0,predicate=custom:team/lobby,predicate=!custom:apply_lobby_night_vision] night_vision
execute unless predicate game:modifiers/sonar/on run effect give @a[x=0,predicate=custom:team/spectator] night_vision infinite 100 true
effect give @a[x=0] saturation infinite 0 true
execute as @a[x=0,predicate=custom:team/lobby,tag=hardcore] run function modifiers:hardcorereset
execute as @a[x=0,predicate=custom:team/lobby,tag=hobbit] run function modifiers:hobbit/reset
execute as @a[x=0,predicate=custom:team/lobby,tag=long_arms] run function modifiers:long_arms/reset
function lobby:bookwarp
scoreboard players enable @a[x=0,predicate=custom:team/lobby] displayinfo
scoreboard players enable @a[x=0,predicate=custom:team/developer] displayinfo
execute as @a[x=0,scores={displayinfo=1..}] at @s run function lobby:displayinfo
execute as @a[x=0,predicate=custom:team/lobby] run function everytick:score_reset
execute if loaded 25 184 -6 unless predicate game:phase/match run function lobby:credits/cycle
execute if predicate rr:has_parkour as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function lobby:parkour/parkour
execute unless predicate rr:has_parkour as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function lobby:parkour/parkourserver
stopsound @a[x=0] ambient minecraft:ambient.cave

#Handling portals/roof with utilities
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:cancel_utility

#Arrow pickup
execute as @e[x=0,type=#arrows,tag=!arrow.processed] at @s run function everytick:arrow/init
execute unless predicate game:phase/match/over run scoreboard players set @e[x=0,type=#arrows,predicate=custom:is_moving] entity.age -1
execute unless predicate game:phase/match/over as @e[x=0,type=#arrows,predicate=!custom:is_moving] at @s run function everytick:arrow/while_on_ground

#Game ending and arena clearing
execute if predicate game:phase/match/over as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled] run function game:while_phase/match/over
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SuddenDeath,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:suddendeath
execute if entity @e[x=0,type=marker,tag=ArenaClearChecker,tag=!Cleared,tag=!BasePlaced] run scoreboard players add $acdelay CmdData 1
execute if score $acdelay CmdData matches 7.. run tellraw @a[x=0] {"text":"Warning: Force clearing arena since previous gamemode is unknown.","color":"red"}
execute if score $acdelay CmdData matches 7.. run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add normalLast
execute if score $acdelay CmdData matches 7.. run scoreboard players reset $acdelay CmdData
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced] run scoreboard players reset $acdelay CmdData
kill @e[x=0,type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced]
execute unless predicate game:phase/match/over as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings,tag=!NoModesInstalled,tag=!NoModesEnabled] run function arenaclear:customizer
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsignsquery
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=JustCleared] run scoreboard players add $justcleared CmdData 1
execute if score $justcleared CmdData matches 10.. run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=JustCleared] remove JustCleared
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] unless entity @s[tag=JustCleared] run scoreboard players reset $justcleared CmdData

#Gamemode/reload handling
execute if loaded -43 210 78 run function gamemodes:disableerror
execute if score $reloaded CmdData matches 1..100 run scoreboard players add $reloaded CmdData 1
execute if score $reloaded CmdData matches 101 run scoreboard players reset $reloaded

#Edit Settings
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] run scoreboard players enable @a[x=0,predicate=!custom:team/any_arena_team] editSettings
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] as @a[x=0] run trigger editSettings set 0
execute as @a[x=0,predicate=!custom:team/lobby,predicate=!custom:team/developer] run trigger editSettings set 0
execute as @a[x=0,predicate=!custom:team/any_arena_team,scores={editSettings=1..}] run function lobby:cancelsettings/interact
execute if predicate rr:has_modification_room if score $mcancel CmdData matches -1 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] unless entity @a[x=0,predicate=custom:team/blue,limit=1] unless entity @a[x=0,predicate=custom:team/yellow,limit=1] run function lobby:cancelsettings/resume
execute if predicate rr:has_modification_room if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,0],scale:2} -56.3 203.5 79.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute if predicate rr:has_modification_room if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,0],scale:2} -56.3 203.5 77.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
