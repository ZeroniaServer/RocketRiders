####################################################
## GAMEEND: What events occur after the game ends ##
####################################################

##Initial timer - pre-tie phase
scoreboard players add @s endtimer 1
tag @s[scores={endtimer=1}] remove GameStarted
tag @s[scores={endtimer=1}] remove SuddenDeath
tag @s[scores={endtimer=1}] remove gaveFirstItem
execute as @s[scores={endtimer=1}] run effect clear @a[team=Blue]
execute as @s[scores={endtimer=1}] run effect clear @a[team=Yellow]
execute as @s[scores={endtimer=1}] run clear @a[team=Blue] bow
execute as @s[scores={endtimer=1}] run clear @a[team=Yellow] bow
execute as @s[tag=BlueWon] run effect give @a[team=Yellow] weakness 100000 255 true
execute as @s[tag=YellowWon] run effect give @a[team=Blue] weakness 100000 255 true
execute as @s[scores={endtimer=1..},tag=!Sonar] run effect give @a night_vision 1000000 100 true
execute as @s[scores={endtimer=1..80}] run worldborder warning distance 0
execute as @s[scores={endtimer=1}] run tag @a remove nearcanopy
execute as @s[scores={endtimer=1}] as @a run trigger LeaveMidgame set -1
execute as @s[scores={endtimer=1}] run gamemode adventure @a[team=Blue]
execute as @s[scores={endtimer=1}] run gamemode adventure @a[team=Yellow]
execute as @s[scores={endtimer=1}] run gamerule fallDamage false
execute as @s[scores={endtimer=1}] run gamerule drowningDamage false
execute as @s[scores={endtimer=1}] run gamerule fireDamage false
execute as @s[scores={endtimer=1}] run kill @e[type=ender_pearl]
execute as @s[scores={endtimer=1}] run tag @e[tag=yellowjoinpad,type=marker] add CancelJoin
execute as @s[scores={endtimer=1}] run tag @e[tag=bluejoinpad,type=marker] add CancelJoin
execute as @s[scores={endtimer=1}] run tag @e[tag=specjoinpad,type=marker] add CancelJoin
execute as @s[scores={endtimer=1..}] as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s resistance 1000000 255 true
execute as @s[scores={endtimer=1..2}] as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 255 true
execute as @s[scores={endtimer=1..2},tag=!customEnds] run tp @a[team=Blue] 12 64 -66 0 0
execute as @s[scores={endtimer=1..2},tag=!customEnds] run tp @a[team=Yellow] 12 64 66 180 0
execute as @s[scores={endtimer=1..}] run tag @s[tag=EditedSettings] remove EditedSettings
execute as @s[scores={endtimer=1..},tag=Hardcore] as @a unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.max_health base set 2.0
execute as @s[scores={endtimer=1..},tag=Hardcore] as @a[team=Lobby] run attribute @s minecraft:generic.max_health base set 20.0
#Fireballs can't be punched (credit: Miolith)
execute as @s[scores={endtimer=1}] as @e[type=fireball,nbt={Motion:[0.0,0.0,0.0]}] run scoreboard players add @s endFireball 1
execute as @s[scores={endtimer=1}] as @e[type=fireball,scores={endFireball=1}] at @s run summon area_effect_cloud ~ ~-.375 ~ {Duration:2000000,Radius:0,NoGravity:1b,Tags:["endFireballAEC","endFireball"],Passengers:[{id:"minecraft:fireball",Tags:["endFireball"],ExplosionPower:0,Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}]}
execute as @s[scores={endtimer=1}] as @e[type=fireball,tag=endFireball] at @s run data modify entity @s Item set from entity @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Item
execute as @s[scores={endtimer=1}] as @e[type=fireball,tag=endFireball] at @s run data modify entity @s Tags set from entity @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Tags
execute as @s[scores={endtimer=1}] as @e[type=area_effect_cloud,tag=endFireballAEC] at @s run kill @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1]
execute as @s[scores={endtimer=1}] as @e[type=area_effect_cloud,tag=endFireballAEC] at @s run tag @e[type=fireball,limit=1,sort=nearest,distance=..1] add endFireball
execute as @s[scores={endtimer=1..}] as @e[type=fireball,tag=endFireball] run data merge entity @s {ExplosionPower:0,Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}

##Tie actionbar notifications
execute as @s[tag=doTying,tag=!tyingOff,scores={endtimer=1..20}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"4","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute as @s[tag=doTying,tag=!tyingOff,scores={endtimer=21..40}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"3","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute as @s[tag=doTying,tag=!tyingOff,scores={endtimer=41..60}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"2","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute as @s[tag=doTying,tag=!tyingOff,scores={endtimer=61..80}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"1","color":"dark_red","bold":true},{"text":" second","color":"red"}]
execute as @s[tag=doTying,tag=!tyingOff,scores={endtimer=81}] run title @a[team=!Lobby] actionbar {"text":""}

##System for ties (works with Double Portal modifier)
execute as @s[tag=doTying,tag=!tyingOff,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,tag=!DoublePortal,scores={endtimer=1..80}] at @s unless block 11 38 -74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!tyingOff,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,tag=!DoublePortal,scores={endtimer=1..80}] at @s unless block 13 38 -74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!tyingOff,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,tag=DoublePortal,scores={endtimer=1..80}] at @s unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!tyingOff,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,tag=!DoublePortal,scores={endtimer=1..80}] at @s unless block 13 38 74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!tyingOff,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,tag=!DoublePortal,scores={endtimer=1..80}] at @s unless block 11 38 74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!tyingOff,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,tag=DoublePortal,scores={endtimer=1..80}] at @s unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!tyingOff,tag=YellowWon,tag=BlueWon,tag=!SuddenDeath,scores={endtimer=1..80}] run tag @s add SuddenDeath

##Post-tie phase and reset
scoreboard players set @s[scores={endtimer=81}] gametime 0
execute as @s[scores={endtimer=82}] as @a run function everytick:score_reset
execute as @s[scores={endtimer=250}] run gamemode spectator @a[team=Blue]
execute as @s[scores={endtimer=250}] run gamemode spectator @a[team=Yellow]
execute as @s[scores={endtimer=570},tag=!SMActive] run scoreboard players add @a[team=Blue] GamesPlayed 1
execute as @s[scores={endtimer=570},tag=!SMActive] run scoreboard players add @a[team=Yellow] GamesPlayed 1
execute as @s[scores={endtimer=570}] run function achievements:scoresreset
execute as @s[scores={endtimer=570}] run tag @s remove noAchievements
execute as @s[scores={endtimer=570},tag=SpamClick] as @a run attribute @s minecraft:generic.attack_speed base set 4
execute as @s[scores={endtimer=570},tag=Hardcore] as @a run attribute @s minecraft:generic.max_health base set 20.0
#Reverse Sonar glowing
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=arrow] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=snowball] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=egg] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=firework_rocket] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=fireball] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=dragon_fireball] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=potion] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=tnt] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=tnt_minecart] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[type=item] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[tag=VortexItemBlue,type=armor_stand] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[tag=VortexItemYellow,type=armor_stand] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[tag=VortexItemFeathered,type=armor_stand] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570},tag=Sonar] as @e[tag=Bot,type=armor_stand] run data merge entity @s {Glowing:0b}
execute as @s[scores={endtimer=570}] run scoreboard players add @a[team=Spectator] LeaveGame 1
execute as @s[scores={endtimer=570}] run scoreboard players add @a[team=Blue] LeaveGame 1
execute as @s[scores={endtimer=570}] run scoreboard players add @a[team=Yellow] LeaveGame 1
execute as @s[scores={endtimer=570}] run tp @a[team=Blue] -36 211 61.0 90 0
execute as @s[scores={endtimer=570}] run tp @a[team=Yellow] -36 211 96.0 90 0
execute as @s[scores={endtimer=570}] run tp @a[team=Spectator] -43 211 78 90 0
execute as @s[scores={endtimer=570}] run scoreboard players set @a kills 0
execute as @s[scores={endtimer=570}] run scoreboard players set @a deaths 0
#Server mode specifics
execute as @s[scores={endtimer=570}] if entity @s[scores={servermode=0}] run fill -57 201 84 -70 201 72 air replace barrier
execute as @s[scores={endtimer=570}] if entity @s[scores={servermode=1},tag=!forcenormal] run function servermode:makesets
execute as @s[scores={endtimer=570}] if entity @s[scores={servermode=2}] run function arenaclear:areaclear
execute as @s[scores={endtimer=570..}] run tag @a remove Winner
execute as @s[scores={endtimer=570..}] run tag @a remove Loser
tag @s[scores={endtimer=570..}] remove BlueWon
tag @s[scores={endtimer=570..}] remove YellowWon
tag @s[scores={endtimer=570..}] remove BlueWonFirst
tag @s[scores={endtimer=570..}] remove YellowWonFirst
tag @s[scores={endtimer=570..}] remove SuddenDeath
execute as @s[scores={endtimer=570..}] run scoreboard players set $barriers CmdData 0
execute as @s[scores={endtimer=570..}] run scoreboard players reset $highest VortexID
execute as @s[scores={endtimer=570..}] run scoreboard players reset $count VortexID
tag @s[scores={endtimer=570..}] remove GameEnd

##For repeating settings
tag @s[scores={RepeatSettings=0}] remove Repeat
execute if entity @s[scores={endtimer=570..},tag=Repeat] unless entity @s[tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning,tag=!rngUtil] run function arenaclear:areaclear

##Reset end timer
scoreboard players set @s[scores={endtimer=570..}] endtimer 0