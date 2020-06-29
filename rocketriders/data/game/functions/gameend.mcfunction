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
execute as @s[scores={endtimer=1..}] run effect give @a night_vision 1000000 100 true
execute as @s[scores={endtimer=1..80}] run worldborder warning distance 0
execute as @s[scores={endtimer=1}] run tag @a remove SummonPlat
execute as @s[scores={endtimer=1}] as @a run trigger LeaveMidgame set -1
execute as @s[scores={endtimer=1}] run gamemode adventure @a[team=Blue]
execute as @s[scores={endtimer=1}] run gamemode adventure @a[team=Yellow]
execute as @s[scores={endtimer=1}] run gamerule fallDamage false
execute as @s[scores={endtimer=1}] run gamerule drowningDamage false
execute as @s[scores={endtimer=1}] run gamerule fireDamage false
execute as @s[scores={endtimer=1..80}] as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s resistance 20 100 true
execute as @s[scores={endtimer=1..2}] as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 255 true
execute as @s[scores={endtimer=1..2}] run tp @a[team=Blue] 12 64 -66 0 0
execute as @s[scores={endtimer=1..2}] run tp @a[team=Yellow] 12 64 66 180 0
execute as @s[scores={endtimer=1..}] run tag @s[tag=EditedSettings] remove EditedSettings

##System for ties
execute as @s[tag=!ctfEnabled,tag=doTying,tag=!tyingOff,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,scores={endtimer=1..80}] at @s unless block 11 38 -74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=!ctfEnabled,tag=doTying,tag=!tyingOff,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,scores={endtimer=1..80}] at @s unless block 13 38 -74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=!ctfEnabled,tag=doTying,tag=!tyingOff,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,scores={endtimer=1..80}] at @s unless block 13 38 74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=!ctfEnabled,tag=doTying,tag=!tyingOff,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,scores={endtimer=1..80}] at @s unless block 11 38 74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=!ctfEnabled,tag=doTying,tag=!tyingOff,tag=YellowWon,tag=BlueWon,tag=!SuddenDeath,scores={endtimer=1..80}] run tag @s add SuddenDeath

##Post-tie phase and reset
execute as @s[scores={endtimer=81}] as @a run function everytick:score_reset
scoreboard players set @s[scores={endtimer=81}] gametime 0
execute as @s[scores={endtimer=81..100}] run tag @e[tag=yellowjoinpad] add CancelJoin
execute as @s[scores={endtimer=81..100}] run tag @e[tag=bluejoinpad] add CancelJoin
execute as @s[scores={endtimer=81..100}] run tag @e[tag=specjoinpad] add CancelJoin
execute as @s[scores={endtimer=250}] run gamemode spectator @a[team=Blue]
execute as @s[scores={endtimer=250}] run gamemode spectator @a[team=Yellow]
execute as @s[scores={endtimer=570}] run scoreboard players add @a[team=Blue] GamesPlayed 1
execute as @s[scores={endtimer=570}] run scoreboard players add @a[team=Yellow] GamesPlayed 1
execute as @s[scores={endtimer=570}] run function achievements:scoresreset
execute as @s[scores={endtimer=570}] run tag @s remove noAchievements
execute as @s[scores={endtimer=570},tag=SpamClick] as @a run attribute @s minecraft:generic.attack_speed base set 4
execute as @s[scores={endtimer=570},tag=Hardcore] as @a run attribute @s minecraft:generic.max_health base set 20.0
execute as @s[scores={endtimer=570},tag=Hardcore] run gamerule showDeathMessages false
execute as @s[scores={endtimer=570},tag=Hardcore] as @a[team=Blue] run tag @s add hardcoreKilled
execute as @s[scores={endtimer=570},tag=Hardcore] as @a[team=Blue] run kill @s
execute as @s[scores={endtimer=570},tag=Hardcore] as @a[team=Yellow] run tag @s add hardcoreKilled
execute as @s[scores={endtimer=570},tag=Hardcore] as @a[team=Yellow] run kill @s
execute as @s[scores={endtimer=570},tag=Hardcore] run gamerule showDeathMessages true
execute as @s[scores={endtimer=570}] run scoreboard players add @a[team=Spectator] LeaveGame 1
execute as @s[scores={endtimer=570}] run scoreboard players add @a[team=Blue] LeaveGame 1
execute as @s[scores={endtimer=570}] run scoreboard players add @a[team=Yellow] LeaveGame 1
execute as @s[scores={endtimer=570}] run scoreboard players set @a kills 0
execute as @s[scores={endtimer=570}] run scoreboard players set @a deaths 0
execute as @s[scores={endtimer=570}] run fill -57 201 84 -70 201 72 air replace barrier
scoreboard players operation @s[scores={endtimer=570}] MaxItemTime = @s[scores={endtimer=570}] MaxItemSec
scoreboard players operation @s[scores={endtimer=570}] MaxItemTime *= 20 MaxItemSec
execute as @s[scores={endtimer=570..}] run tag @a remove Winner
execute as @s[scores={endtimer=570..}] run tag @a remove Loser
tag @s[scores={endtimer=570..}] remove BlueWon
tag @s[scores={endtimer=570..}] remove YellowWon
tag @s[scores={endtimer=570..}] remove BlueWonFirst
tag @s[scores={endtimer=570..}] remove YellowWonFirst
tag @s[scores={endtimer=570..}] remove SuddenDeath
tag @s[scores={endtimer=570..}] remove GameEnd

##For repeating settings
execute if entity @s[scores={endtimer=570..},tag=Repeat] unless entity @s[tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning,tag=!rngUtil] run function arenaclear:areaclear

##Reset end timer
scoreboard players set @s[scores={endtimer=570..}] endtimer 0