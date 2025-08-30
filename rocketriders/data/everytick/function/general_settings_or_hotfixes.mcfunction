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
execute if entity @s[predicate=game:config/disable_balancing] run scoreboard players set @s largerTeam 0

#Particle timer
scoreboard players add $dust CmdData 1
execute if score $dust CmdData matches 4.. run scoreboard players set $dust CmdData 1

#Toggle particles
scoreboard players enable @a[x=0] toggleParticles
tellraw @a[x=0,scores={toggleParticles=1..},tag=!hideParticles] [{"text":"Disabled particles from Rocket Riders gameplay elements.","color":"red"}]
tellraw @a[x=0,scores={toggleParticles=1..},tag=hideParticles] [{"text":"Enabled particles from Rocket Riders gameplay elements.","color":"green"}]
tag @a[x=0,scores={toggleParticles=1..},tag=hideParticles] add hidParticles
tag @a[x=0,scores={toggleParticles=1..},tag=hideParticles] remove hideParticles
tag @a[x=0,scores={toggleParticles=1..},tag=!hideParticles,tag=!hidParticles] add hideParticles
tag @a[x=0,scores={toggleParticles=1..},tag=hidParticles] remove hidParticles
scoreboard players set @a[x=0] toggleParticles 0

#Toggle ingame tips
scoreboard players add @a[x=0] GamesPlayed 0
scoreboard players enable @a[x=0] toggleTips
tellraw @a[x=0,scores={toggleTips=1..},tag=!hideTips] [{"text":"You will no longer see ingame tips.","color":"red"}]
tellraw @a[x=0,scores={toggleTips=1..},tag=hideTips] [{"text":"You will now see ingame tips.","color":"green"}]
tag @a[x=0,scores={toggleTips=1..},tag=hideTips] add hidTips
tag @a[x=0,scores={toggleTips=1..},tag=hideTips] remove hideTips
tag @a[x=0,scores={toggleTips=1..},tag=!hideTips,tag=!hidTips] add hideTips
tag @a[x=0,scores={toggleTips=1..},tag=hidTips] remove hidTips
scoreboard players set @a[x=0] toggleTips 0

#Utilkill timer
execute as @e[x=0,type=tnt,tag=UtilKilled] at @s run function game:tntutilkill
scoreboard players add @a[x=0,tag=UtilKilled] UKTimer 1
scoreboard players reset @a[x=0,tag=UtilKilled,scores={UKTimer=55..}] KillerUUID
tag @a[x=0,tag=UtilKilled,scores={UKTimer=55..}] remove UtilKilled
scoreboard players reset @a[x=0,scores={UKTimer=55..}] UKTimer
execute as @e[x=0,type=tnt,tag=UtilKilled] at @s run tag @a[team=!Spectator,distance=..6] add UtilKilled
execute as @e[x=0,type=tnt,tag=UtilKilled] at @s store result score @a[team=!Spectator,distance=..6] KillerUUID run scoreboard players get @s UUIDTracker

# Fix for players joining with legacy canopyTP tag
execute as @a[tag=canopyTP] run attribute @s minecraft:safe_fall_distance base reset
execute as @a[tag=canopyTP] run attribute @s minecraft:jump_strength base reset
execute as @a[tag=canopyTP] run attribute @s minecraft:movement_speed base reset
tag @a[tag=canopyTP] remove canopyTP

#Canopy teleport remove effects
execute as @a[x=0,tag=canopy_teleporting,predicate=!custom:on_blue_or_yellow_team] run function custom:canopy_teleporting_effect/remove

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
execute as @a[x=0,team=!Blue,team=!Yellow] run trigger LeaveMidgame set 0
scoreboard players reset @a[x=0,team=!Lobby] MaxItemSec
execute if entity @s[tag=EditedSettings] run scoreboard players reset @a[x=0] MaxItemSec
execute unless predicate rr:has_modification_room run scoreboard players reset @a[x=0] MaxItemSec
execute if entity @s[tag=EditedSettings] run scoreboard players reset @a[x=0] VoteServerMode
scoreboard players reset @a[x=0,team=!Lobby] daytime
execute if entity @s[tag=EditedSettings] run scoreboard players reset @a[x=0] daytime
execute unless predicate rr:has_modification_room run scoreboard players reset @a[x=0] daytime
scoreboard players reset @a[x=0,team=!Spectator] leaveSpec
scoreboard players reset @a[x=0,team=!Lobby,team=!Developer] displayinfo
execute unless predicate rr:has_parkour run scoreboard players reset @a[x=0] toggleParkourTips

#Launch pad in Modification Room
execute unless predicate game:game_started as @a[x=0,team=Lobby] at @s if entity @e[type=area_effect_cloud,tag=modroomGoBack,limit=1,distance=..1] run effect give @s jump_boost 1 20 true
execute unless predicate game:game_started as @a[x=0,team=Lobby] at @s unless entity @e[type=area_effect_cloud,tag=modroomGoBack,limit=1,distance=..1] run effect clear @s jump_boost

#Lobby easter eggs
function lobby:secrets/main

#Lobby players can't enter arena (security)
execute as @a[x=0,team=Lobby] at @s if predicate custom:belowroof run tellraw @s [{"text":"You shouldn't be here!","color":"red"}]
execute as @a[x=0,team=Lobby] at @s if predicate custom:belowroof run scoreboard players set @s LeaveGame 1

#Locked Modification Room
execute if score $lockmodroom CmdData matches 1 as @a[team=Lobby] at @s if predicate 2811iaj1:in_modification run function game:kickout

#Lobby players can't switch out of adventure mode (security, disabled in servermodes)
execute if predicate rr:force_gamemodes as @a[x=0,team=Lobby,gamemode=!adventure] run gamemode adventure

#Spectators can't switch out of spectator mode (security, disabled in servermodes)
execute if predicate rr:force_gamemodes as @a[x=0,team=Spectator,gamemode=!spectator] run gamemode spectator

#Blue/Yellow players can't switch out of adventure mode before game (security, disabled in servermodes)
execute if predicate rr:force_gamemodes unless predicate game:game_started if entity @s[tag=!GameEnd] as @a[x=0,team=Blue,gamemode=!adventure] run gamemode adventure
execute if predicate rr:force_gamemodes unless predicate game:game_started if entity @s[tag=!GameEnd] as @a[x=0,team=Yellow,gamemode=!adventure] run gamemode adventure

#Full offhand check
tag @a[x=0] remove fullOffhand
execute as @a[x=0] if items entity @s weapon.offhand * run tag @s add fullOffhand

#Remove some tags for Lobby players. Just a failsave
tag @a[x=0,team=!Blue,team=!Yellow] remove Winner
tag @a[x=0,team=!Blue,team=!Yellow] remove Loser
tag @a[x=0,team=!Blue,team=!Yellow] remove getItem

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
execute unless predicate game:game_started if entity @s[predicate=!game:gamemode_components/no_portal,tag=!GameEnd,tag=EditedSettings] run function arenaclear:placeportals

#Disable damage gamerules if no game has started
execute unless entity @s[predicate=game:game_started,tag=!GameEnd] run gamerule fallDamage false
execute unless entity @s[predicate=game:game_started,tag=!GameEnd] run gamerule drowningDamage false
execute unless entity @s[predicate=game:game_started,tag=!GameEnd] run gamerule fireDamage false

#Lobby players have no items besides a book (and boots, if Duel is present or if noYZELO is active)
#If servermode is not active
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby] hotbar.0 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby] hotbar.1 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby] hotbar.2 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour] hotbar.3 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour] hotbar.5 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby] hotbar.6 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby] hotbar.7 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour] hotbar.8 with air

#If servermode is active
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.0 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.1 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.2 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.3 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.5 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.6 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.7 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.8 with air

item replace entity @a[x=0,team=Lobby] armor.head with air
item replace entity @a[x=0,team=Lobby] armor.chest with air
item replace entity @a[x=0,team=Lobby] armor.legs with air
execute if function game:norankboots run item replace entity @a[x=0,team=Lobby,tag=!inParkour] armor.feet with air

#Lobby player books + antidupe
tag @a[x=0,team=Lobby] remove HasNavBook
execute as @a[x=0,team=Lobby] if items entity @s hotbar.4 written_book run tag @s add HasNavBook
clear @a[x=0,team=Lobby,tag=!HasNavBook] written_book
loot replace entity @a[x=0,team=Lobby,tag=!HasNavBook] hotbar.4 loot items:books/nav_book

#Servermode teleport out of modification room
execute unless predicate rr:has_modification_room run tellraw @a[x=0,predicate=2811iaj1:in_modification] ["",{"text":"You shouldn't be here!","color":"red"}]
execute unless predicate rr:has_modification_room as @a[x=0,team=!Spectator,predicate=2811iaj1:in_modification] at @s run function custom:leave
execute unless predicate rr:has_modification_room as @a[x=0,team=Spectator,predicate=2811iaj1:in_modification] run tp @s 12 100 0.5 90 90

#Servermode quick fix for Duel Mode
execute if predicate rr:server_mode/cubekrowd_duels run tag @s add duelLast

# Fix for players not being able to jump up onto the slab from the modification room pool
execute as @a[team=Lobby,x=-70,y=200,z=77,dz=2] run attribute @s minecraft:gravity modifier add rocketriders:learning_to_swim -0.75 add_multiplied_base
execute as @a[team=Lobby] unless entity @s[x=-70,y=200,z=77,dy=0.5,dz=2] run attribute @s minecraft:gravity modifier remove rocketriders:learning_to_swim

#Make armour visible again after invisibility wears off
execute as @a[tag=was_invisible,predicate=!custom:invisible] run function custom:update_armor
tag @a[tag=was_invisible,predicate=!custom:invisible] remove was_invisible
