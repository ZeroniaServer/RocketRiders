####################################################
## GAMEEND: What events occur after the game ends ##
####################################################

##Initial timer - pre-tie phase
scoreboard players add @s endtimer 1
scoreboard players reset @e[predicate=custom:indimension,type=marker,tag=YellowPlatform] pearlOwnerUUID
scoreboard players reset @e[predicate=custom:indimension,type=marker,tag=BluePlatform] pearlOwnerUUID
tag @a[predicate=custom:indimension] remove canopyTP
function everytick:spawnables
tag @s[scores={endtimer=1}] remove GameStarted
tag @s[scores={endtimer=1}] remove SuddenDeath
tag @s[scores={endtimer=1}] remove gaveFirstItem
scoreboard players reset @s[scores={endtimer=1..}] SDtime
execute if entity @s[scores={endtimer=1}] run effect clear @a[predicate=custom:indimension,team=Blue]
execute if entity @s[scores={endtimer=1}] run effect clear @a[predicate=custom:indimension,team=Yellow]
execute if entity @s[scores={endtimer=1},tag=!noSabers] run clear @a[predicate=custom:indimension,team=Blue] bow
execute if entity @s[scores={endtimer=1},tag=!noSabers] run clear @a[predicate=custom:indimension,team=Yellow] bow
execute if entity @s[scores={endtimer=1},tag=!noSabers] run kill @e[predicate=custom:indimension,type=item,nbt={Item:{id:"minecraft:bow"}}]
execute if entity @s[scores={endtimer=1},tag=!noSabers] run function game:endsabers
execute if entity @s[tag=BlueWon] run effect give @a[predicate=custom:indimension,team=Yellow] weakness infinite 255 true
execute if entity @s[tag=YellowWon] run effect give @a[predicate=custom:indimension,team=Blue] weakness infinite 255 true
execute if entity @s[scores={endtimer=1..100}] run worldborder warning distance 0
execute if entity @s[scores={endtimer=1}] run tag @a[predicate=custom:indimension] remove nearcanopy
execute if entity @s[scores={endtimer=1}] run tag @a[predicate=custom:indimension] remove threwCanopy
execute if entity @s[scores={endtimer=1}] as @a[predicate=custom:indimension] run trigger LeaveMidgame set -1
execute if entity @s[scores={endtimer=1}] run gamemode adventure @a[predicate=custom:indimension,team=Blue]
execute if entity @s[scores={endtimer=1}] run gamemode adventure @a[predicate=custom:indimension,team=Yellow]
execute if entity @s[scores={endtimer=1}] run kill @e[predicate=custom:indimension,type=ender_pearl]
execute if entity @s[scores={endtimer=1}] run tag @e[predicate=custom:indimension,type=marker,tag=yellowjoinpad] add CancelJoin
execute if entity @s[scores={endtimer=1}] run tag @e[predicate=custom:indimension,type=marker,tag=bluejoinpad] add CancelJoin
execute if entity @s[scores={endtimer=1}] run tag @e[predicate=custom:indimension,type=marker,tag=specjoinpad] add CancelJoin
execute if entity @s[scores={endtimer=2..3}] as @a[predicate=custom:indimension,predicate=custom:is_on_fire] unless entity @s[team=!Blue,team=!Yellow] at @s run function game:putoutfire
execute if entity @s[scores={endtimer=1..2}] as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run effect give @s resistance infinite 255 true
execute if entity @s[scores={endtimer=1..2}] as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 255 true
execute if entity @s[scores={endtimer=1..2},tag=!customEnds] run tp @a[predicate=custom:indimension,team=Blue] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2},tag=!customEnds] run tp @a[predicate=custom:indimension,team=Yellow] 12 64 66 180 0
execute if entity @s[scores={endtimer=1..}] run tag @s[tag=EditedSettings] remove EditedSettings
execute if entity @s[scores={endtimer=1..569}] run function modifiers:modifiers

#Fireballs can't be punched (credit: Miolith)
execute if entity @s[tag=!fireballOverride,scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=Still] run scoreboard players add @s endFireball 1
execute if entity @s[tag=!fireballOverride,scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=StillOb] run scoreboard players add @s endFireball 1
execute if entity @s[tag=!fireballOverride,scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,scores={endFireball=1}] at @s run summon area_effect_cloud ~ ~-.375 ~ {Duration:2000000,Radius:0,NoGravity:1b,Tags:["endFireballAEC","endFireball"],Passengers:[{id:"minecraft:fireball",Tags:["endFireball"],ExplosionPower:0,Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}]}
execute if entity @s[tag=!fireballOverride,scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball] at @s run data modify entity @s Item set from entity @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Item
execute if entity @s[tag=!fireballOverride,scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball] at @s run data modify entity @s Tags set from entity @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Tags
execute if entity @s[tag=!fireballOverride,scores={endtimer=1}] as @e[predicate=custom:indimension,type=area_effect_cloud,tag=endFireballAEC] at @s run kill @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1]
execute if entity @s[tag=!fireballOverride,scores={endtimer=1}] as @e[predicate=custom:indimension,type=area_effect_cloud,tag=endFireballAEC] at @s run tag @e[predicate=custom:indimension,type=fireball,limit=1,sort=nearest,distance=..1] add endFireball
execute if entity @s[tag=!fireballOverride,scores={endtimer=1..}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball] run data merge entity @s {ExplosionPower:0,Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}

##Tie actionbar notifications
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=1..20}] run title @a[predicate=custom:indimension,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"5","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=21..40}] run title @a[predicate=custom:indimension,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"4","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=41..60}] run title @a[predicate=custom:indimension,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"3","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=61..80}] run title @a[predicate=custom:indimension,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"2","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=81..100}] run title @a[predicate=custom:indimension,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"1","color":"dark_red","bold":true},{"text":" second","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=101}] run title @a[predicate=custom:indimension,team=!Lobby] actionbar {"text":""}

##System for ties (works with Double Portal modifier)
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,tag=!DoublePortal,scores={endtimer=1..100}] at @s unless block 11 38 -74 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,tag=!DoublePortal,scores={endtimer=1..100}] at @s unless block 13 38 -74 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,tag=DoublePortal,scores={endtimer=1..100}] at @s unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,tag=!DoublePortal,scores={endtimer=1..100}] at @s unless block 13 38 74 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,tag=!DoublePortal,scores={endtimer=1..100}] at @s unless block 11 38 74 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,tag=DoublePortal,scores={endtimer=1..100}] at @s unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=YellowWon,tag=BlueWon,tag=!SuddenDeath,scores={endtimer=1..100}] run tag @s add SuddenDeath

##Post-tie phase and reset
scoreboard players set @s[scores={endtimer=101}] gametime 0
execute if entity @s[scores={endtimer=102}] as @a[predicate=custom:indimension] run function everytick:score_reset
execute if entity @s[scores={endtimer=250}] run gamemode spectator @a[predicate=custom:indimension,team=Blue]
execute if entity @s[scores={endtimer=250}] run gamemode spectator @a[predicate=custom:indimension,team=Yellow]
execute if entity @s[scores={endtimer=570},tag=!SMActive] run scoreboard players add @a[predicate=custom:indimension,team=Blue] GamesPlayed 1
execute if entity @s[scores={endtimer=570},tag=!SMActive] run scoreboard players add @a[predicate=custom:indimension,team=Yellow] GamesPlayed 1
execute if entity @s[scores={endtimer=570}] run function achievements:scoresreset
execute if entity @s[scores={endtimer=570}] run tag @s remove noAchievements
execute if entity @s[scores={endtimer=570},tag=SpamClick] as @a[predicate=custom:indimension] run attribute @s minecraft:generic.attack_speed base set 4
#Reverse Sonar glowing
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=arrow] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=snowball] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=egg] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=firework_rocket] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=fireball] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=dragon_fireball] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=potion] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=tnt] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=tnt_minecart] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=item] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemBlue] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemYellow] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemFeathered] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[predicate=custom:indimension,type=armor_stand,tag=Bot] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570}] run scoreboard players add @a[predicate=custom:indimension,team=Spectator] LeaveGame 1
execute if entity @s[scores={endtimer=570}] run scoreboard players add @a[predicate=custom:indimension,team=Blue] LeaveGame 1
execute if entity @s[scores={endtimer=570}] run scoreboard players add @a[predicate=custom:indimension,team=Yellow] LeaveGame 1
execute if entity @s[scores={endtimer=570}] run tp @a[predicate=custom:indimension,team=Blue] -36 211 61.0 90 0
execute if entity @s[scores={endtimer=570}] run tp @a[predicate=custom:indimension,team=Yellow] -36 211 96.0 90 0
execute if entity @s[scores={endtimer=570}] run tp @a[predicate=custom:indimension,team=Spectator] -43 211 78 90 0
execute if entity @s[scores={endtimer=570}] run scoreboard players set @a[predicate=custom:indimension] kills 0
execute if entity @s[scores={endtimer=570}] run scoreboard players set @a[predicate=custom:indimension] deaths 0
execute if entity @s[scores={endtimer=570}] run gamerule mobGriefing false
#Server mode specifics
execute if entity @s[scores={endtimer=570}] if entity @s[scores={servermode=0}] run fill -57 201 84 -70 201 72 air replace barrier
execute if entity @s[scores={endtimer=570}] if entity @s[scores={servermode=1},tag=!forcenormal] run function servermode:makesets
execute if entity @s[scores={endtimer=570}] if entity @s[scores={servermode=2}] run schedule function servermode:forceclear 3t
execute if entity @s[scores={endtimer=570..}] run tag @a[predicate=custom:indimension] remove Winner
execute if entity @s[scores={endtimer=570..}] run tag @a[predicate=custom:indimension] remove Loser
tag @s[scores={endtimer=570..}] remove BlueWon
tag @s[scores={endtimer=570..}] remove YellowWon
tag @s[scores={endtimer=570..}] remove BlueWonFirst
tag @s[scores={endtimer=570..}] remove YellowWonFirst
tag @s[scores={endtimer=570..}] remove SuddenDeath
tag @s[scores={endtimer=570..}] remove BothWon
execute if entity @s[scores={endtimer=570..}] run scoreboard players set $barriers CmdData 0
execute if entity @s[scores={endtimer=570..}] run scoreboard players reset $highest VortexID
execute if entity @s[scores={endtimer=570..}] run scoreboard players reset $count VortexID
execute if entity @s[scores={endtimer=570..}] run scoreboard players reset * invCount
tag @s[scores={endtimer=570..}] remove GameEnd

##For repeating settings
tag @s[scores={RepeatSettings=0},tag=!RepeatForever] remove Repeat
execute if entity @s[scores={endtimer=570..},tag=Repeat] unless entity @s[tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning,tag=!rngUtil] run function arenaclear:areaclear

##Refresh modification room
execute if entity @s[scores={endtimer=570..}] run function arenaclear:refreshsigns

##Reset end timer
scoreboard players set @s[scores={endtimer=570..}] endtimer 0