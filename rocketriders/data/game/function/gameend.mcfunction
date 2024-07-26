####################################################
## GAMEEND: What events occur after the game ends ##
####################################################

##Initial timer - pre-tie phase
scoreboard players add @s endtimer 1
scoreboard players reset @e[x=0,type=marker,tag=YellowPlatform] pearlOwnerUUID
scoreboard players reset @e[x=0,type=marker,tag=BluePlatform] pearlOwnerUUID
tag @a[x=0] remove canopyTP
function everytick:spawnables
tag @s[scores={endtimer=1}] remove GameStarted
tag @s[scores={endtimer=1}] remove SuddenDeath
tag @s[scores={endtimer=1}] remove gaveFirstItem
scoreboard players reset @s[scores={endtimer=1..}] SDtime
execute if entity @s[scores={endtimer=1}] run effect clear @a[x=0,team=Blue]
execute if entity @s[scores={endtimer=1}] run effect clear @a[x=0,team=Yellow]
execute if entity @s[scores={endtimer=1},tag=!noSabers] run clear @a[x=0,team=Blue] bow
execute if entity @s[scores={endtimer=1},tag=!noSabers] run clear @a[x=0,team=Yellow] bow
execute if entity @s[scores={endtimer=1},tag=!noSabers] as @e[x=0,type=item] if items entity @s contents bow run kill
execute if entity @s[scores={endtimer=1},tag=!noSabers] run function game:endsabers
execute if entity @s[tag=BlueWon] run effect give @a[x=0,team=Yellow] weakness infinite 100 true
execute if entity @s[tag=YellowWon] run effect give @a[x=0,team=Blue] weakness infinite 100 true
execute if entity @s[scores={endtimer=1..100}] run worldborder warning distance 0
execute if entity @s[scores={endtimer=1}] run tag @a[x=0] remove nearcanopy
execute if entity @s[scores={endtimer=1}] run tag @a[x=0] remove threwCanopy
execute if entity @s[scores={endtimer=1}] as @a[x=0] run trigger LeaveMidgame set -1
execute if entity @s[scores={endtimer=1}] run gamemode adventure @a[x=0,team=Blue]
execute if entity @s[scores={endtimer=1}] run gamemode adventure @a[x=0,team=Yellow]
execute if entity @s[scores={endtimer=1}] run kill @e[x=0,type=ender_pearl]
execute if entity @s[scores={endtimer=1}] run tag @e[x=0,type=marker,tag=yellowjoinpad] add CancelJoin
execute if entity @s[scores={endtimer=1}] run tag @e[x=0,type=marker,tag=bluejoinpad] add CancelJoin
execute if entity @s[scores={endtimer=1}] run tag @e[x=0,type=marker,tag=specjoinpad] add CancelJoin
execute if entity @s[scores={endtimer=2..3}] as @a[x=0,predicate=custom:is_on_fire] unless entity @s[team=!Blue,team=!Yellow] at @s run function game:putoutfire
execute if entity @s[scores={endtimer=1..2}] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect give @s resistance infinite 100 true
execute if entity @s[scores={endtimer=1..2}] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 100 true
execute if entity @s[scores={endtimer=1..2},tag=!customEnds] run tp @a[x=0,team=Blue] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2},tag=!customEnds] run tp @a[x=0,team=Yellow] 12 64 66 180 0
execute if entity @s[scores={endtimer=1..}] run tag @s[tag=EditedSettings] remove EditedSettings
execute if entity @s[scores={endtimer=1..569}] run function modifiers:modifiers

#Fireballs can't be punched (credit: Miolith)
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=Still] at @s run function game:endfireball
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=dragon_fireball,predicate=custom:not_moving] at @s run function game:endfireball
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=StillCluster] at @s run function game:endfireball
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=ClusterStarter,tag=Still] at @s run function game:endfireball

##Tie actionbar notifications
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=1..20}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"5","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=21..40}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"4","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=41..60}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"3","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=61..80}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"2","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=81..100}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"1","color":"dark_red","bold":true},{"text":" second","color":"red"}]
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal,tag=!BothWon,scores={endtimer=101}] run title @a[x=0,team=!Lobby] actionbar {"text":""}

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
execute if entity @s[scores={endtimer=102}] as @a[x=0] run function everytick:score_reset
execute if entity @s[scores={endtimer=250}] run gamemode spectator @a[x=0,team=Blue]
execute if entity @s[scores={endtimer=250}] run gamemode spectator @a[x=0,team=Yellow]
execute if entity @s[scores={endtimer=570},tag=!SMActive] run scoreboard players add @a[x=0,team=Blue] GamesPlayed 1
execute if entity @s[scores={endtimer=570},tag=!SMActive] run scoreboard players add @a[x=0,team=Yellow] GamesPlayed 1
execute if entity @s[scores={endtimer=570}] run function achievements:scoresreset
execute if entity @s[scores={endtimer=570}] run tag @s remove noAchievements
execute if entity @s[scores={endtimer=570},tag=SpamClick] as @a[x=0] run attribute @s minecraft:generic.attack_speed base set 4
#Reverse Sonar glowing
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=arrow] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=snowball] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=egg] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=firework_rocket] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=fireball] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=dragon_fireball] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=potion] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=tnt] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=tnt_minecart] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=item] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=armor_stand,tag=VortexItemBlue] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=armor_stand,tag=VortexItemYellow] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=armor_stand,tag=VortexItemFeathered] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570},tag=Sonar] as @e[x=0,type=armor_stand,tag=Bot] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={endtimer=570}] run scoreboard players add @a[x=0,team=Spectator] LeaveGame 1
execute if entity @s[scores={endtimer=570}] run scoreboard players add @a[x=0,team=Blue] LeaveGame 1
execute if entity @s[scores={endtimer=570}] run scoreboard players add @a[x=0,team=Yellow] LeaveGame 1
execute if entity @s[scores={endtimer=570}] run tp @a[x=0,team=Blue] -36 211 61.0 90 0
execute if entity @s[scores={endtimer=570}] run tp @a[x=0,team=Yellow] -36 211 96.0 90 0
execute if entity @s[scores={endtimer=570}] run tp @a[x=0,team=Spectator] -43 211 78 90 0
execute if entity @s[scores={endtimer=570}] run scoreboard players set @a[x=0] kills 0
execute if entity @s[scores={endtimer=570}] run scoreboard players set @a[x=0] deaths 0
execute if entity @s[scores={endtimer=570}] run gamerule mobGriefing false
#Server mode specifics
execute if entity @s[scores={endtimer=570}] if entity @s[scores={servermode=0}] run fill -57 201 84 -70 201 72 air replace barrier
execute if entity @s[scores={endtimer=570}] if entity @s[scores={servermode=1},tag=!forcenormal] run function servermode:makesets
execute if entity @s[scores={endtimer=570}] if entity @s[scores={servermode=2}] run schedule function servermode:forceclear 3t
execute if entity @s[scores={endtimer=570..}] run tag @a[x=0] remove Winner
execute if entity @s[scores={endtimer=570..}] run tag @a[x=0] remove Loser
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