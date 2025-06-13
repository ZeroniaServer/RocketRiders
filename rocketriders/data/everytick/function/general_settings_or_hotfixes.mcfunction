#######################################################
## GENERAL SETTINGS OR HOTFIXES: Where miscellaneous ##
## things happen that don't really fit anywhere else ##
#######################################################

#Player UUID storage
execute as @a[x=0] store result score @s playerUUID run data get entity @s UUID[0]

#Missile Display Area
function lobby:missiledisplay/placedisp

#Tutorial advancements
execute if entity @s[scores={servermode=0},tag=!SMCustom] run function 2811iaj1:advantriggers

#Fix weirdness with join pads
execute if entity @s[tag=!EditedSettings,tag=!JustCleared] run tag @e[x=0,type=marker,tag=yellowjoinpad] add CancelJoin
execute if entity @s[tag=!EditedSettings,tag=!JustCleared] run tag @e[x=0,type=marker,tag=bluejoinpad] add CancelJoin
execute if entity @s[tag=!EditedSettings,tag=!JustCleared] run tag @e[x=0,type=marker,tag=specjoinpad] add CancelJoin
execute if entity @s[tag=noTeamBalance] run scoreboard players set @s largerTeam 0

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

#Canopy teleport remove effects
execute as @a[x=0,team=!Blue,team=!Yellow,tag=canopyTP] run effect clear @s slowness
execute as @a[x=0,team=!Blue,team=!Yellow,tag=canopyTP] run effect clear @s slow_falling
execute as @a[x=0,team=!Blue,team=!Yellow,tag=canopyTP] run effect clear @s jump_boost

#Disable trigger objectives when appropriate
execute as @a[predicate=!custom:indimension] run trigger LeaveMidgame set -1
execute as @a[predicate=!custom:indimension] run trigger MaxItemSec set 0
execute as @a[predicate=!custom:indimension] run trigger VoteServerMode set 0
execute as @a[predicate=!custom:indimension] run trigger daytime set 0
execute as @a[predicate=!custom:indimension] run trigger leaveSpec set 0
execute as @a[predicate=!custom:indimension] run trigger displayinfo set 0
execute as @a[predicate=!custom:indimension] run trigger toggleTips set 0
execute as @a[predicate=!custom:indimension] run trigger toggleParticles set 0
execute as @a[predicate=!custom:indimension] run trigger toggleParkourTips set 0
execute as @a[x=0,team=!Blue,team=!Yellow] run trigger LeaveMidgame set -1
execute as @a[x=0,team=!Lobby] run trigger MaxItemSec set 0
execute if entity @s[tag=EditedSettings] as @a[x=0] run trigger MaxItemSec set 0
execute if entity @s[scores={servermode=1..}] as @a[x=0] run trigger MaxItemSec set 0
execute if entity @s[tag=EditedSettings] as @a[x=0] run trigger VoteServerMode set 0
execute as @a[x=0,team=!Lobby] run trigger daytime set 0
execute if entity @s[tag=EditedSettings] as @a[x=0] run trigger daytime set 0
execute if entity @s[scores={servermode=1..}] as @a[x=0] run trigger daytime set 0
execute as @a[x=0,team=!Spectator] run trigger leaveSpec set 0
execute as @a[x=0,team=!Lobby,team=!Developer] run trigger displayinfo set 0
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0] run trigger toggleParkourTips set 0

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

#Lobby players can't switch out of adventure mode (security)
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,team=Lobby,gamemode=!adventure] run gamemode adventure

#Spectators can't switch out of spectator mode (security)
execute as @a[x=0,team=Spectator,gamemode=!spectator] run gamemode spectator

#Blue/Yellow players can't switch out of adventure mode before game (security)
execute unless predicate game:game_started if entity @s[scores={servermode=0},tag=!SMCustom,tag=!GameEnd] as @a[x=0,team=Blue,gamemode=!adventure] run gamemode adventure
execute unless predicate game:game_started if entity @s[scores={servermode=0},tag=!SMCustom,tag=!GameEnd] as @a[x=0,team=Yellow,gamemode=!adventure] run gamemode adventure

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
kill @e[x=0,type=area_effect_cloud,nbt={Particle:{type:"minecraft:dragon_breath"}}]

#Fill portals before game starts
execute unless predicate game:game_started if entity @s[tag=!noPortal,tag=!GameEnd,tag=EditedSettings] run function arenaclear:placeportals

#Decoy Vortex (Lobby)
execute if score $dust CmdData matches 1 as @e[x=0,type=marker,tag=VortexDummy] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 5 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if score $dust CmdData matches 1 as @e[x=0,type=marker,tag=VortexDummy] at @s run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~ ~ 0.5 0.5 0 0 2 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if score $dust CmdData matches 1 as @e[x=0,type=marker,tag=VortexDummy] at @s run particle minecraft:scrape ~ ~ ~ 0.5 0.5 0 0 3 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

execute as @e[x=0,type=armor_stand,tag=VortexItemDummy] at @s unless entity @a[team=Lobby,distance=..4] run tp @s ~ ~ ~ ~15 ~
execute as @e[x=0,type=armor_stand,tag=VortexItemDummy] at @s if entity @e[type=marker,tag=VortexDummy,sort=nearest,limit=1,distance=..2] if entity @a[team=Lobby,distance=..6] run tp @s ~ ~ ~ facing entity @p[team=Lobby,distance=..6]
execute as @e[x=0,type=armor_stand,tag=VortexItemDummy] at @s if entity @e[type=marker,tag=VortexDummy,sort=nearest,limit=1,distance=..2] if entity @a[team=Lobby,distance=..6] run tp @s ~ ~ ~ ~-180 ~

#Disable damage gamerules if no game has started
execute unless entity @s[predicate=game:game_started,tag=!GameEnd] run gamerule fallDamage false
execute unless entity @s[predicate=game:game_started,tag=!GameEnd] run gamerule drowningDamage false
execute unless entity @s[predicate=game:game_started,tag=!GameEnd] run gamerule fireDamage false

#Lobby players have no items besides a book (and boots, if Duel is present or if noYZELO is active)
#If servermode is not active
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby] armor.chest with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby] hotbar.0 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby] hotbar.1 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby] hotbar.2 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour] hotbar.3 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour] hotbar.5 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby] hotbar.6 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby] hotbar.7 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour] hotbar.8 with air

#If servermode is active
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] armor.chest with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.0 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.1 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.2 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.3 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.5 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.6 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.7 with air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run item replace entity @a[x=0,team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.8 with air

item replace entity @a[x=0,team=Lobby] armor.head with air
item replace entity @a[x=0,team=Lobby] armor.chest with air
item replace entity @a[x=0,team=Lobby] armor.legs with air
execute if function game:norankboots run item replace entity @a[x=0,team=Lobby,tag=!inParkour] armor.feet with air

#Lobby player books + antidupe
tag @a[x=0,team=Lobby] remove HasNavBook
execute as @a[x=0,team=Lobby] if items entity @s hotbar.4 written_book run tag @s add HasNavBook
clear @a[x=0,team=Lobby,tag=!HasNavBook] written_book
execute if entity @s[scores={servermode=0},tag=!SMCustom] run loot replace entity @a[x=0,team=Lobby,tag=!HasNavBook] hotbar.4 loot items:books/nav_book/variant_1
execute if entity @s[scores={servermode=0},tag=SMCustom] run loot replace entity @a[x=0,team=Lobby,tag=!HasNavBook] hotbar.4 loot items:books/nav_book/variant_2
execute if entity @s[scores={servermode=1}] run loot replace entity @a[x=0,team=Lobby,tag=!HasNavBook] hotbar.4 loot items:books/nav_book/variant_3
execute if entity @s[scores={servermode=2}] run loot replace entity @a[x=0,team=Lobby,tag=!HasNavBook] hotbar.4 loot items:books/nav_book/variant_4

#Servermode teleport out of modification room
execute if entity @s[scores={servermode=1..}] as @a[x=0] at @s if predicate 2811iaj1:in_modification run tellraw @s ["",{"text":"You shouldn't be here!","color":"red"}]
execute if entity @s[scores={servermode=1..}] as @a[x=0,team=!Spectator] at @s if predicate 2811iaj1:in_modification run function custom:leave
execute if entity @s[scores={servermode=1..}] as @a[x=0,team=Spectator] at @s if predicate 2811iaj1:in_modification run tp @s 12 100 0.5 90 90

#Servermode quick fix for Duel Mode
tag @s[scores={servermode=2}] add duelLast