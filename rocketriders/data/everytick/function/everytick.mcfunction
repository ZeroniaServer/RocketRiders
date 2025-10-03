####################################
## EVERYTICK: Where everything in ##
## the core RR Datapack runs from ##
####################################

# Store this tick's gametime (+1 because #tick functions run before gametime increments for this tick)
execute store result score $gametime global run time query gametime
scoreboard players add $gametime global 1

# Global Periodic Tick
scoreboard players add $periodic_tick.2 global 1
scoreboard players operation $periodic_tick.2 global %= $2 constant
scoreboard players add $periodic_tick.3 global 1
scoreboard players operation $periodic_tick.3 global %= $3 constant
scoreboard players add $periodic_tick.5 global 1
scoreboard players operation $periodic_tick.5 global %= $5 constant

# Handle events and flags
function everytick:team_count

execute as @e[x=0,type=player,scores={flag.is_dead=1}] at @s run function custom:event/player_respawns/main
scoreboard players set @a[x=0] flag.is_dead 1
scoreboard players set @e[x=0,type=player] flag.is_dead 0

execute as @a[scores={event.player_uses_pig_spawn_egg=1..}] at @s run function custom:event/player_uses_pig_spawn_egg/main
execute as @a[scores={event.player_uses_written_book=1..}] at @s run function custom:event/player_uses_written_book/main

execute as @a[scores={time_since_attack=101..,primary_damage_origin_uuid.0=-2147483648..}] run function custom:event/player_directly_attacked_by_another_player/reset_damage_origins
execute as @a[scores={time_since_attack=101..,secondary_damage_origin_uuid.0=-2147483648..}] run function custom:event/player_directly_attacked_by_another_player/reset_damage_origins

# Item timers
scoreboard players remove @a[x=0,scores={shooting_saber.infinity_time=1..2147483646}] shooting_saber.infinity_time 1
execute as @a[x=0,scores={shooting_saber.infinity_time=..0}] run function items:shooting_saber/infinity_deactivate
scoreboard players remove @a[x=0,scores={shooting_saber.multishot_time=1..2147483646}] shooting_saber.multishot_time 1
execute as @a[x=0,scores={shooting_saber.multishot_time=..0}] run function items:shooting_saber/multishot_deactivate
function everytick:elytra

# Thrown Items
execute as @e[x=0,type=item] run function everytick:no_drop

# Process primed TNT
scoreboard players set $instant_explosion_buffer var -1
execute as @e[x=0,type=tnt,tag=!tnt.processed] at @s run function game:tnt/init

scoreboard players set $maximum_tnt_explosions_per_tick var 25
execute if predicate game:modifiers/instant_tnt_explosions/on run scoreboard players set $maximum_tnt_explosions_per_tick var 10
scoreboard players set $tnt_explosions_this_tick var 0
execute as @e[x=0,type=tnt] if score @s tnt.explosion_timestamp = $gametime global at @s run function game:tnt/upon_explosion

# Tick entities
function entities:tick

# Tridents
execute as @e[x=0,type=trident,predicate=custom:in_void,tag=!return] run data modify entity @s DealtDamage set value true
tag @e[x=0,type=trident,tag=!return,nbt={inGround:1b}] add return
tag @e[x=0,type=trident,tag=!return,nbt={DealtDamage:1b}] add return
execute as @e[x=0,type=trident,tag=return] if items entity @s contents *[damage=7] at @s run function everytick:trident_entity_break
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!doStacking] as @e[x=0,type=trident,tag=return] at @s run function everytick:trident_antidupe
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team,predicate=custom:has_broken_trident_in_inventory] at @s run function everytick:trident_item_break
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team,predicate=custom:has_trident_in_inventory] if items entity @s weapon.* trident at @s run function everytick:trident_riptide

# Reset join pads barrier tags
tag @e[limit=3,x=0,type=marker,tag=join_pad] remove join_pad.was_showing_barrier
tag @e[limit=3,x=0,type=marker,tag=join_pad,tag=join_pad.show_barrier] add join_pad.was_showing_barrier
tag @e[limit=3,x=0,type=marker,tag=join_pad] remove join_pad.show_barrier

# Crafting Slots
execute as @a[x=0,gamemode=!spectator] if items entity @s player.crafting.* * run function items:crafting/check

# Hotbar auto-fill
execute if function experimental:enabled as @a[x=0,predicate=custom:on_blue_or_yellow_team,tag=do_hotbar_auto_fill,predicate=custom:do_hotbar_auto_fill] run function everytick:hotbar_auto_fill

#Server mode
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] if entity @a[x=0] run function servermode:loop
scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ServerModeVoting] VoteServerMode
execute unless entity @a[x=0,team=Lobby] run scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ServerModeVoting] VoteServerMode
execute if predicate rr:stop_game_if_server_is_empty unless entity @a[x=0] if predicate rr:server_mode/cubekrowd_custom run scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] RepeatSettings 0
execute if predicate rr:stop_game_if_server_is_empty unless entity @a[x=0] as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function game:forcestop
execute if predicate rr:stop_game_if_server_is_empty unless entity @a[x=0] if predicate rr:server_mode/cubekrowd_custom as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:globaldefaults
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
execute if predicate game:match_in_play as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] at @s run function game:ingame
execute if predicate rr:do_custom_regen_system as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:regen_system
execute unless predicate rr:do_custom_regen_system run gamerule naturalRegeneration true

#Night vision/saturation and more lobby functionality
effect give @a[x=0,team=Lobby,predicate=custom:apply_lobby_night_vision] night_vision infinite 100 true
effect clear @a[x=0,team=Lobby,predicate=!custom:apply_lobby_night_vision] night_vision
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Sonar] run effect give @a[x=0,team=Spectator] night_vision infinite 100 true
execute if predicate rr:apply_saturation_in_lobby run effect give @a[x=0] saturation infinite 0 true
execute unless predicate rr:apply_saturation_in_lobby run effect clear @a[x=0] saturation
execute as @a[x=0,team=Lobby,tag=hardcore] run function modifiers:hardcorereset
execute as @a[x=0,team=Lobby,tag=hobbit] run function modifiers:hobbit/reset
function lobby:bookwarp
scoreboard players enable @a[x=0,team=Lobby] displayinfo
scoreboard players enable @a[x=0,team=Developer] displayinfo
execute as @a[x=0,scores={displayinfo=1..}] at @s run function lobby:displayinfo
execute as @a[x=0,team=Lobby] run function everytick:score_reset
execute if loaded 25 184 -6 unless predicate game:game_running run function lobby:credits/cycle
execute if predicate rr:has_parkour as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function lobby:parkour/parkour
execute unless predicate rr:has_parkour as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function lobby:parkour/parkourserver
stopsound @a[x=0] ambient minecraft:ambient.cave

#Handling portals/roof with utilities
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:cancel_utility

#Arrow pickup
execute as @e[x=0,type=#arrows,tag=!arrow.processed] at @s run function everytick:arrow/init
execute unless predicate game:match_over run scoreboard players set @e[x=0,type=#arrows,predicate=!custom:not_moving] entity.age -1
execute unless predicate game:match_over as @e[x=0,type=#arrows,predicate=custom:not_moving] at @s run function everytick:arrow/while_on_ground

#Item entity pickup
execute as @e[x=0,type=item,tag=!item_entity.processed] at @s run function everytick:item_entity/init
execute if predicate game:gamemode_components/arrow_pickup/only_crusade_mode_archer_kit as @e[x=0,type=item,predicate=custom:item_entity_contains_any_arrow] at @s run function everytick:item_entity/while_contents_is_any_arrow

#Game ending and arena clearing
execute if predicate game:match_over as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled] run function game:gameend
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SuddenDeath,tag=!SuddenDeathCustom,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:suddendeath
execute if entity @e[x=0,type=marker,tag=ArenaClearChecker,tag=!Cleared,tag=!BasePlaced] run scoreboard players add $acdelay CmdData 1
execute if score $acdelay CmdData matches 7.. run tellraw @a[x=0] {"text":"Warning: Force clearing arena since previous gamemode is unknown.","color":"red"}
execute if score $acdelay CmdData matches 7.. run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add normalLast
execute if score $acdelay CmdData matches 7.. run scoreboard players reset $acdelay CmdData
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced] run scoreboard players reset $acdelay CmdData
kill @e[x=0,type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced]
execute unless predicate game:match_over as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings,tag=!NoModesInstalled,tag=!NoModesEnabled] run function arenaclear:customizer
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
execute if predicate rr:has_modification_room if score $mcancel CmdData matches -1 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] unless entity @a[x=0,team=Blue,limit=1] unless entity @a[x=0,team=Yellow,limit=1] run function lobby:cancelsettings/resume
execute if predicate rr:has_modification_room if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,0],scale:2} -56.3 203.5 79.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if predicate rr:has_modification_room if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,0],scale:2} -56.3 203.5 77.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
