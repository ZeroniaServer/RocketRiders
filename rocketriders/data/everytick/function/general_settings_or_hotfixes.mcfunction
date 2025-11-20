#######################################################
## GENERAL SETTINGS OR HOTFIXES: Where miscellaneous ##
## things happen that don't really fit anywhere else ##
#######################################################

#Player UUID storage
execute as @a[x=0] store result score @s playerUUID run data get entity @s UUID[0]

#Missile Display Area
function lobby:missiledisplay/placedisp

#Tutorial advancements
execute if predicate rr:has_tutorial run function 2811iaj1:advantriggers

#Fix weirdness with join pads
execute if entity @s[tag=!EditedSettings,tag=!JustCleared] run tag @e[x=0,type=marker,tag=join_pad.yellow] add CancelJoin
execute if entity @s[tag=!EditedSettings,tag=!JustCleared] run tag @e[x=0,type=marker,tag=join_pad.blue] add CancelJoin
execute if entity @s[tag=!EditedSettings,tag=!JustCleared] run tag @e[x=0,type=marker,tag=join_pad.spectator] add CancelJoin

#Toggle particles
scoreboard players enable @a[x=0] toggleParticles
tellraw @a[x=0,scores={toggleParticles=1..},tag=!hideParticles] [{"text":"Disabled particles from Rocket Riders gameplay elements.","color":"red"}]
tellraw @a[x=0,scores={toggleParticles=1..},tag=hideParticles] [{"text":"Enabled particles from Rocket Riders gameplay elements.","color":"green"}]
tag @a[x=0,scores={toggleParticles=1..},tag=hideParticles] add hidParticles
tag @a[x=0,scores={toggleParticles=1..},tag=hideParticles] remove hideParticles
tag @a[x=0,scores={toggleParticles=1..},tag=!hideParticles,tag=!hidParticles] add hideParticles
tag @a[x=0,scores={toggleParticles=1..},tag=hidParticles] remove hidParticles
execute as @a[x=0,scores={toggleParticles=1..}] run function custom:player_action/playerdata/save
scoreboard players set @a[x=0] toggleParticles 0

#Toggle hotbar auto-fill
scoreboard players enable @a[x=0] toggleHotbarAutoFill
tag @a[x=0,scores={toggleHotbarAutoFill=1..},tag=do_hotbar_auto_fill] add disabled_do_hotbar_auto_fill
tag @a[x=0,scores={toggleHotbarAutoFill=1..},tag=do_hotbar_auto_fill] remove do_hotbar_auto_fill
tag @a[x=0,scores={toggleHotbarAutoFill=1..},tag=!do_hotbar_auto_fill,tag=!disabled_do_hotbar_auto_fill] add do_hotbar_auto_fill
tag @a[x=0,scores={toggleHotbarAutoFill=1..},tag=disabled_do_hotbar_auto_fill] remove disabled_do_hotbar_auto_fill
tellraw @a[x=0,scores={toggleHotbarAutoFill=1..},tag=!do_hotbar_auto_fill] [{"text":"Disabled automatic hotbar filling.","color":"red"}]
tellraw @a[x=0,scores={toggleHotbarAutoFill=1..},tag=do_hotbar_auto_fill] [{"text":"Enabled automatic hotbar filling.","color":"green"}]
execute as @a[x=0,scores={toggleHotbarAutoFill=1..}] run function custom:player_action/playerdata/save
scoreboard players set @a[x=0] toggleHotbarAutoFill 0

#Toggle ingame tips
scoreboard players add @a[x=0] GamesPlayed 0
scoreboard players enable @a[x=0] toggleTips
tellraw @a[x=0,scores={toggleTips=1..},tag=!hideTips] [{"text":"You will no longer see ingame tips.","color":"red"}]
tellraw @a[x=0,scores={toggleTips=1..},tag=hideTips] [{"text":"You will now see ingame tips.","color":"green"}]
tag @a[x=0,scores={toggleTips=1..},tag=hideTips] add hidTips
tag @a[x=0,scores={toggleTips=1..},tag=hideTips] remove hideTips
tag @a[x=0,scores={toggleTips=1..},tag=!hideTips,tag=!hidTips] add hideTips
tag @a[x=0,scores={toggleTips=1..},tag=hidTips] remove hidTips
execute as @a[x=0,scores={toggleTips=1..}] run function custom:player_action/playerdata/save
scoreboard players set @a[x=0] toggleTips 0

# Fix for players joining with legacy canopyTP tag
execute as @a[x=0,tag=canopyTP] run attribute @s minecraft:safe_fall_distance base reset
execute as @a[x=0,tag=canopyTP] run attribute @s minecraft:jump_strength base reset
execute as @a[x=0,tag=canopyTP] run attribute @s minecraft:movement_speed base reset
tag @a[x=0,tag=canopyTP] remove canopyTP

#Disable trigger objectives when appropriate
scoreboard players reset @a[predicate=!custom:indimension] LeaveMidgame
scoreboard players reset @a[predicate=!custom:indimension] MaxItemSec
scoreboard players reset @a[predicate=!custom:indimension] VoteServerMode
scoreboard players reset @a[predicate=!custom:indimension] daytime
scoreboard players reset @a[predicate=!custom:indimension] leaveSpec
scoreboard players reset @a[predicate=!custom:indimension] displayinfo
scoreboard players reset @a[predicate=!custom:indimension] toggleTips
scoreboard players reset @a[predicate=!custom:indimension] toggleParticles
scoreboard players reset @a[predicate=!custom:indimension] toggleParkourTips
scoreboard players reset @a[predicate=!custom:indimension] toggleHotbarAutoFill
execute as @a[x=0,predicate=!custom:team/any_playing_team] run trigger LeaveMidgame set 0
scoreboard players reset @a[x=0,predicate=!custom:team/lobby] MaxItemSec
execute if entity @s[tag=EditedSettings] run scoreboard players reset @a[x=0] MaxItemSec
execute unless predicate rr:has_modification_room run scoreboard players reset @a[x=0] MaxItemSec
execute if entity @s[tag=EditedSettings] run scoreboard players reset @a[x=0] VoteServerMode
scoreboard players reset @a[x=0,predicate=!custom:team/lobby] daytime
execute if entity @s[tag=EditedSettings] run scoreboard players reset @a[x=0] daytime
execute unless predicate rr:has_modification_room run scoreboard players reset @a[x=0] daytime
scoreboard players reset @a[x=0,predicate=!custom:team/spectator] leaveSpec
scoreboard players reset @a[x=0,predicate=!custom:team/lobby,predicate=!custom:team/developer] displayinfo
execute unless predicate rr:has_parkour run scoreboard players reset @a[x=0] toggleParkourTips

#Launch pad in Modification Room
execute if predicate rr:has_modification_room unless predicate game:game_running as @a[x=-63.5,y=190.5,z=78.5,distance=..1] unless entity @s[predicate=!custom:team/lobby,predicate=!custom:team/developer] run effect give @s jump_boost 1 20 true
execute if predicate rr:has_modification_room unless predicate game:game_running as @a[x=-63.5,y=190.5,z=78.5,distance=1..10] unless entity @s[predicate=!custom:team/lobby,predicate=!custom:team/developer] run effect clear @s jump_boost

#Lobby easter eggs
function lobby:secrets/main

#Lobby players can't enter arena (security)
execute as @a[x=0,predicate=custom:team/lobby] at @s if predicate custom:in_arena run tellraw @s [{"text":"You shouldn't be here!","color":"red"}]
execute as @a[x=0,predicate=custom:team/lobby] at @s if predicate custom:in_arena run scoreboard players set @s LeaveGame 1

#Locked Modification Room
execute if score $lockmodroom CmdData matches 1 as @a[x=0,predicate=custom:team/lobby] at @s if predicate 2811iaj1:in_modification run function game:kickout

#Lobby players can't switch out of adventure mode (security, disabled in servermodes)
execute if predicate rr:force_gamemodes as @a[x=0,predicate=custom:team/lobby,gamemode=!adventure] run gamemode adventure

#Spectators can't switch out of spectator mode (security, disabled in servermodes)
execute if predicate rr:force_gamemodes if predicate game:game_running run gamemode spectator @a[x=0,predicate=custom:team/spectator,gamemode=!spectator]
execute if predicate rr:force_gamemodes unless predicate game:game_running run gamemode adventure @a[x=0,predicate=custom:team/spectator,gamemode=!adventure]

#Spectator void
execute as @a[x=0,gamemode=spectator,predicate=custom:in_void] at @s run function game:void

#Blue/Yellow players can't switch out of adventure mode before game (security, disabled in servermodes)
execute if predicate rr:force_gamemodes unless predicate game:game_running as @a[x=0,predicate=custom:team/blue,gamemode=!adventure] run gamemode adventure
execute if predicate rr:force_gamemodes unless predicate game:game_running as @a[x=0,predicate=custom:team/yellow,gamemode=!adventure] run gamemode adventure

#Full offhand check
tag @a[x=0] remove fullOffhand
execute as @a[x=0] if items entity @s weapon.offhand * run tag @s add fullOffhand

#Remove some tags for Lobby players. Just a failsave
tag @a[x=0,predicate=!custom:team/any_playing_team] remove Winner
tag @a[x=0,predicate=!custom:team/any_playing_team] remove Loser
tag @a[x=0,predicate=!custom:team/any_playing_team] remove getItem

#For Canopies to continue operating (necessary for void falling)
scoreboard players add @a[x=0] ThrowPlat 0
scoreboard players add @a[x=0,scores={ThrowPlat=1..30}] ThrowPlat 1
scoreboard players set @a[x=0,scores={ThrowPlat=31..}] ThrowPlat 0

#Part of hotfix for item deduction/drop dupes
tag @a[x=0,tag=itemDeducted] remove itemDeducted
tag @a[x=0,tag=wasFullHotbar] remove wasFullHotbar

#Remove dragon breath
kill @e[x=0,type=area_effect_cloud,predicate=custom:is_dragon_breath_area_effect_cloud]

#Fill portals before game starts
execute unless predicate game:game_running if entity @s[tag=EditedSettings] unless predicate game:gamemode_components/portal_crystal_protection run function game:place_portal/all

#Disable damage gamerules if no game has started
execute unless entity @s[predicate=game:game_running,predicate=!game:match_over] run gamerule fallDamage false
execute unless entity @s[predicate=game:game_running,predicate=!game:match_over] run gamerule drowningDamage false
execute unless entity @s[predicate=game:game_running,predicate=!game:match_over] run gamerule fireDamage false

#Lobby players have no items besides a book (and boots, if Duel is present or if noYZELO is active)
#If servermode is not active
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.0 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.1 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.2 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour] hotbar.3 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour] hotbar.5 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.6 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.7 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour] hotbar.8 with air

#If servermode is active
execute if predicate rr:is_cubekrowd unless entity @s[tag=ServerModeVoting] run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.0 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.1 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.2 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.3 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.5 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.6 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.7 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.8 with air

item replace entity @a[x=0,predicate=custom:team/lobby] armor.head with air
item replace entity @a[x=0,predicate=custom:team/lobby] armor.chest with air
item replace entity @a[x=0,predicate=custom:team/lobby] armor.legs with air
execute if function game:norankboots run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour] armor.feet with air

#Lobby player books + antidupe
tag @a[x=0,predicate=custom:team/lobby] remove HasNavBook
execute as @a[x=0,predicate=custom:team/lobby] if items entity @s hotbar.4 written_book run tag @s add HasNavBook
clear @a[x=0,predicate=custom:team/lobby,tag=!HasNavBook] written_book
loot replace entity @a[x=0,predicate=custom:team/lobby,tag=!HasNavBook] hotbar.4 loot items:books/nav_book

#Servermode teleport out of modification room
execute unless predicate rr:has_modification_room run tellraw @a[x=0,predicate=2811iaj1:in_modification] ["",{"text":"You shouldn't be here!","color":"red"}]
execute unless predicate rr:has_modification_room as @a[x=0,predicate=!custom:team/spectator,predicate=2811iaj1:in_modification] at @s run function custom:leave
execute unless predicate rr:has_modification_room as @a[x=0,predicate=custom:team/spectator,predicate=2811iaj1:in_modification] run tp @s 12 100 0.5 90 90

#Servermode quick fix for Duel Mode
execute if predicate rr:server_mode/cubekrowd_duels run tag @s add duelLast

# Fix for players not being able to jump up onto the slab from the modification room pool
execute as @a[x=-70,y=200,z=77,dz=2,gamemode=!spectator] run attribute @s minecraft:gravity modifier add rocketriders:learning_to_swim -0.75 add_multiplied_base
execute as @a[x=0] unless entity @s[x=-70,y=200,z=77,dy=0.5,dz=2] run attribute @s minecraft:gravity modifier remove rocketriders:learning_to_swim

#Make armour visible again after invisibility wears off
execute as @a[x=0,tag=was_invisible,predicate=!custom:invisible] run function custom:event/player_becomes_visible/main
tag @a[x=0,tag=was_invisible,predicate=!custom:invisible] remove was_invisible

# Remove custom team colour from those not playing
execute as @a[x=0,scores={custom_team_color=1..}] unless entity @s[predicate=custom:team/any_playing_team,predicate=game:gamemode_components/custom_team_colors] run scoreboard players reset @s custom_team_color

# Clear the XP bar in the lobby if YZELO is disabled
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!noYZELO] as @a[x=0,predicate=!custom:team/any_playing_team] run function custom:set_xp_bar {level:0,progress:0}

# Set item timer in xp bar in-game
execute unless predicate game:game_running as @a[x=0,predicate=custom:team/any_playing_team] run function custom:set_xp_bar {level:0,progress:0}
execute if predicate game:game_running unless predicate game:match_over unless predicate game:gamemode_components/no_item_timer if score $game_duration global matches 3.. run scoreboard players operation $item_time_progress var = @e[limit=1,x=0,type=armor_stand,tag=Selection] RandomItem
execute if predicate game:game_running unless predicate game:match_over unless predicate game:gamemode_components/no_item_timer if score $game_duration global matches 3.. run scoreboard players operation $item_time_progress var *= $1000 constant
execute if predicate game:game_running unless predicate game:match_over unless predicate game:gamemode_components/no_item_timer if score $game_duration global matches 3.. run data modify storage rocketriders:main item_time_progress set value {level:0}
execute if predicate game:game_running unless predicate game:match_over unless predicate game:gamemode_components/no_item_timer if score $game_duration global matches 3.. if predicate game:modifiers/minute_mix/on store result storage rocketriders:main item_time_progress.progress float 0.001 run scoreboard players operation $item_time_progress var /= $1200 constant
execute if predicate game:game_running unless predicate game:match_over unless predicate game:gamemode_components/no_item_timer if score $game_duration global matches 3.. unless predicate game:modifiers/minute_mix/on store result storage rocketriders:main item_time_progress.progress float 0.001 run scoreboard players operation $item_time_progress var /= @e[limit=1,x=0,type=armor_stand,tag=Selection] MaxItemTime
execute if predicate game:game_running unless predicate game:match_over unless predicate game:gamemode_components/no_item_timer if score $game_duration global matches 3.. as @a[x=0,predicate=custom:team/any_playing_team] run function custom:set_xp_bar with storage rocketriders:main item_time_progress
execute if predicate game:game_running unless predicate game:match_over unless predicate game:gamemode_components/no_item_timer if score $game_duration global matches ..2 as @a[x=0,predicate=custom:team/any_playing_team] run function custom:set_xp_bar {level:0,progress:0}
execute if predicate game:game_running unless predicate game:match_over if predicate game:gamemode_components/no_item_timer as @a[x=0,predicate=custom:team/any_playing_team] run function custom:set_xp_bar {level:0,progress:0}
execute if predicate game:game_running if predicate game:match_over as @a[x=0,predicate=custom:team/any_playing_team] run function custom:set_xp_bar {level:0,progress:0}

# Remove flowing water sounds from the lobby
stopsound @a[x=0,predicate=!custom:in_arena] ambient minecraft:block.water.ambient
