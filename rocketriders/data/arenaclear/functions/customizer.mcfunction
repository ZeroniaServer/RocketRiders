####################################################
## CUSTOMIZER: The brain of the Modification Room ##
## Allows items, modifiers, gamemodes, bases, and ##
## other options/settings to be selected per game ##
####################################################

##Arrow pointing down into the lobby
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 215.3 78 0 1.5 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 212 78.8 0 0 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 212 78.2 0 0 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 212.5 77.8 0 0 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 212.5 79.2 0 0 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 213 77.45 0 0 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 213 79.5 0 0 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 213.5 77.1 0 0 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 213.5 79.9 0 0 0 0 5 force
execute if entity @s[scores={servermode=0},tag=!Repeat] run particle dust 1 0 1 2 -64 211.6 78 0 0 0 0 5 force

##Particles around confirm changes sign
particle dust 1 0 1 2 -68.7 190.5 79.5 0 0 0 0 1 force
particle dust 1 0 1 2 -68.7 190.5 77.5 0 0 0 0 1 force

##GAMEMODE SELECTION
execute if score @s SetGamemode > maxID gamemodeID run scoreboard players set @s SetGamemode 1

##RESTORE DEFAULT DETAILS
scoreboard players set @s[tag=RestoreDefault] TopDeco 1
scoreboard players set @s[tag=RestoreDefault] TopCorner 1
scoreboard players set @s[tag=RestoreDefault] MiddleDeco 1
scoreboard players set @s[tag=RestoreDefault] BottomDeco 1
scoreboard players set @s[tag=RestoreDefault] PortalDeco 1
execute if entity @s[tag=RestoreDefault] run function arenaclear:refreshcustomizer
tag @s[tag=RestoreDefault] remove RestoreDefault

##RESTORE DEFAULT GAME RULES
tag @s[tag=DefaultOptions] add doPrevention
tag @s[tag=DefaultOptions] add doTying
tag @s[tag=DefaultOptions] add doHotbarLimit
tag @s[tag=DefaultOptions] remove doStacking
tag @s[tag=DefaultOptions] remove doFireballPortals
scoreboard players set @s[tag=DefaultOptions] MaxItemSec 15
scoreboard players set @s[tag=DefaultOptions] MaxItemTime 300
scoreboard players set @s[tag=DefaultOptions] RepeatSettings 1
execute if entity @s[tag=DefaultOptions] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultOptions] remove DefaultOptions

##RESTORE DEFAULT WORLD OPTIONS
tag @s[tag=DefaultWorld] add noPlayerCredits
execute if entity @s[tag=DefaultWorld] run function lobby:credits/stop
execute if entity @s[tag=DefaultWorld] run time set 12925t
execute if entity @s[tag=DefaultWorld] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultWorld] remove DefaultWorld

##MOLERAT WARNING
execute unless entity @s[tag=Molerat,tag=!WasMolerat] unless entity @s[tag=!Molerat,tag=WasMolerat] run tag @a remove MoleratStop
execute unless entity @s[tag=Molerat,tag=!WasMolerat] unless entity @s[tag=!Molerat,tag=WasMolerat] as @a run trigger moleratConfirm set 0
execute unless entity @s[tag=Molerat,tag=!WasMolerat] unless entity @s[tag=!Molerat,tag=WasMolerat] run scoreboard players reset @a moleratConfirm
execute unless entity @s[tag=Molerat,tag=!WasMolerat] unless entity @s[tag=!Molerat,tag=WasMolerat] run tag @a[tag=moleratConfirm] remove moleratConfirm
execute as @a[scores={moleratConfirm=1..}] run tag @s add moleratConfirm
execute as @a[scores={moleratConfirm=1..}] run function arenaclear:testvalidclear

##ITEM DELAY
tellraw @a[team=!Yellow,team=!Blue,team=!Spectator,tag=ItemDelayChange] ["",{"text":"Item Delay: ","bold":true,"color":"white"},{"text":"How long it takes to give items. Click numbers below to change time.","color":"gray","italic":true}]
tellraw @a[team=!Yellow,team=!Blue,team=!Spectator,tag=ItemDelayChange] [{"text":"[-5] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -5"}},{"text":"[-4] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -4"}},{"text":"[-3] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -3"}},{"text":"[-2] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -2"}},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set -1"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 1"}},{"text":"[+2] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 2"}},{"text":"[+3] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 3"}},{"text":"[+4] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 4"}},{"text":"[+5]","color":"green","clickEvent":{"action":"run_command","value":"/trigger MaxItemSec set 5"}}]
tag @a[tag=ItemDelayChange] remove ItemDelayChange
execute if entity @s[tag=!itemDelayOff] as @a[team=!Yellow,team=!Blue,team=!Spectator] unless score @s MaxItemSec matches 0 run function arenaclear:itemdelay
execute if entity @s[tag=itemDelayOff] as @a[team=!Yellow,team=!Blue,team=!Spectator] unless score @s MaxItemSec matches 0 run tellraw @s [{"text":"Game Rules are not adjustable in this gamemode.","color":"dark_gray","italic":true}]
scoreboard players set @a MaxItemSec 0

##DAYTIME
execute if entity @s[scores={servermode=0}] run scoreboard players enable @a[team=Lobby] daytime
scoreboard players add @a[team=Lobby] daytime 0
tellraw @a[team=!Yellow,team=!Blue,team=!Spectator,tag=daytimeChange] ["",{"text":"Daytime: ","bold":true,"color":"white"},{"text":"Determines the sky appearance. Click numbers below to change time.","color":"gray","italic":true}]
tellraw @a[team=!Yellow,team=!Blue,team=!Spectator,tag=daytimeChange] [{"text":"[-1000] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger daytime set -1000"}},{"text":"[-100] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger daytime set -100"}},{"text":"[-10] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger daytime set -10"}},{"text":"[-5] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger daytime set -5"}},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger daytime set -1"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger daytime set 1"}},{"text":"[+5] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger daytime set 5"}},{"text":"[+10] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger daytime set 10"}},{"text":"[+100] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger daytime set 100"}},{"text":"[+1000] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger daytime set 1000"}}]
tag @a[tag=daytimeChange] remove daytimeChange
execute as @a[team=!Yellow,team=!Blue,team=!Spectator] unless score @s daytime matches 0 run function arenaclear:daytimechange
scoreboard players set @a daytime 0

####REFRESH SIGNS####
tag @s[tag=SignsRefreshed,tag=GamemodeRefreshed] remove SignsRefreshed
tag @s[tag=GamemodeRefreshed] remove GamemodeRefreshed
execute if entity @s[scores={refreshsigns=3..}] run function arenaclear:refreshsigns
execute if entity @s[scores={refreshsigns=3..}] run tag @s remove GlobalDefaults
scoreboard players set @s[scores={refreshsigns=3..}] refreshsigns 0
scoreboard players add @s[scores={refreshsigns=1..}] refreshsigns 1