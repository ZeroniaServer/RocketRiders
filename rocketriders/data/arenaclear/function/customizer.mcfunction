####################################################
## CUSTOMIZER: The brain of the Modification Room ##
## Allows items, modifiers, gamemodes, bases, and ##
## other options/settings to be selected per game ##
####################################################

##Arrow pointing down into the lobby
execute if predicate rr:has_modification_room if entity @s[tag=!Repeat] unless entity @e[type=block_display,tag=LobbyArrowDisplay] if score $dust CmdData matches 1 unless score $lockmodroom CmdData matches 1 run function lobby:spawnarrow
scoreboard players add @e[type=block_display,tag=LobbyArrowDisplay] CmdData 1
execute as @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=1}] run function lobby:arrow_up
execute as @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=11}] run function lobby:arrow_down
scoreboard players reset @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=21..}] CmdData

##Particles around confirm changes sign
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,0,1],scale:2} -68.7 190.5 79.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,0,1],scale:2} -68.7 190.5 77.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

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
tag @s[tag=DefaultOptions,tag=!GamemodeRefreshed,tag=!preventionOff] add doPrevention
tag @s[tag=DefaultOptions,tag=!GamemodeRefreshed,tag=!tyingOff] add doTying
tag @s[tag=DefaultOptions,tag=!GamemodeRefreshed] add doHotbarLimit
tag @s[tag=DefaultOptions,tag=!GamemodeRefreshed,tag=!stackingOn] remove doStacking
tag @s[tag=DefaultOptions,tag=!GamemodeRefreshed] remove doFireballPortals
execute unless score @s MaxItemSec matches 5..30 run scoreboard players set @s MaxItemSec 15
scoreboard players set @s[tag=DefaultOptions,tag=!GamemodeRefreshed] MaxItemSec 15
scoreboard players set @s[tag=DefaultOptions,tag=!GamemodeRefreshed] MaxItemTime 300
scoreboard players set @s[tag=DefaultOptions,tag=!GamemodeRefreshed] RepeatSettings 1
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed,predicate=!rr:server_mode/realms] run scoreboard players set $disable_cannoning config 0
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed,predicate=rr:server_mode/realms,tag=!tntCannoningOff] run scoreboard players set $disable_cannoning config 1
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed,predicate=!rr:server_mode/realms,tag=!impactUtilitiesOff] run scoreboard players set $impact_utilities config 0
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed,predicate=rr:server_mode/realms] run scoreboard players set $impact_utilities config 1
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultOptions] remove DefaultOptions

##RESTORE DEFAULT WORLD OPTIONS
tag @s[tag=DefaultWorld,tag=!GamemodeRefreshed] add noPlayerCredits
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run function lobby:credits/stop
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run time set 12925t
execute unless score @s daytime matches 0..23999 store result score @s daytime run time query daytime
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultWorld] remove DefaultWorld

##MOLERAT WARNING
execute unless entity @s[tag=Molerat,tag=!WasMolerat] unless entity @s[tag=!Molerat,tag=WasMolerat] run tag @a[x=0] remove MoleratStop
execute unless entity @s[tag=Molerat,tag=!WasMolerat] unless entity @s[tag=!Molerat,tag=WasMolerat] as @a[x=0] run trigger moleratConfirm set 0
execute unless entity @s[tag=Molerat,tag=!WasMolerat] unless entity @s[tag=!Molerat,tag=WasMolerat] run scoreboard players reset @a[x=0] moleratConfirm
execute unless entity @s[tag=Molerat,tag=!WasMolerat] unless entity @s[tag=!Molerat,tag=WasMolerat] run tag @a[x=0,tag=moleratConfirm] remove moleratConfirm
execute as @a[x=0,scores={moleratConfirm=1..}] run tag @s add moleratConfirm
execute as @a[x=0,scores={moleratConfirm=1..}] run function arenaclear:testvalidclear

##ITEM DELAY
execute if predicate rr:has_modification_room if entity @s[tag=Minute] run scoreboard players reset @a[x=0,team=Lobby] MaxItemSec
execute if entity @s[tag=!itemDelayOff] as @a[x=0,team=!Yellow,team=!Blue,team=!Spectator,tag=ItemDelayChange] run function arenaclear:itemdelay/show_dialog
execute if entity @s[tag=itemDelayOff] run tellraw @a[x=0,team=!Yellow,team=!Blue,team=!Spectator,tag=ItemDelayChange] [{"text":"Item Delay is not adjustable in this gamemode.","color":"dark_gray","italic":true}]
tag @a[x=0,tag=ItemDelayChange] remove ItemDelayChange
execute if predicate rr:has_modification_room if entity @s[tag=!itemDelayOff] as @a[x=0,team=!Yellow,team=!Blue,team=!Spectator,scores={MaxItemSec=-1}] run function arenaclear:itemdelay/show_dialog
execute if predicate rr:has_modification_room if entity @s[tag=!itemDelayOff] as @a[x=0,team=!Yellow,team=!Blue,team=!Spectator,scores={MaxItemSec=-2147483648..}] unless score @s MaxItemSec matches -2..0 run function arenaclear:itemdelay
execute if predicate rr:has_modification_room if entity @s[tag=itemDelayOff] as @a[x=0,team=!Yellow,team=!Blue,team=!Spectator,scores={MaxItemSec=-2147483648..}] unless score @s MaxItemSec matches -2..0 run tellraw @s [{"text":"Item Delay is not adjustable in this gamemode.","color":"dark_gray","italic":true}]
scoreboard players reset @a[x=0] MaxItemSec
execute if predicate rr:has_modification_room if entity @s[tag=!Minute] run scoreboard players set @a[x=0] MaxItemSec -2
execute if predicate rr:has_modification_room if entity @s[tag=!Minute] run scoreboard players enable @a[x=0,team=Lobby] MaxItemSec

##DAYTIME
execute as @a[x=0,team=!Yellow,team=!Blue,team=!Spectator,tag=daytimeChange] run function arenaclear:daytime/show_dialog
tag @a[x=0,tag=daytimeChange] remove daytimeChange
execute as @a[x=0,team=!Yellow,team=!Blue,team=!Spectator,scores={daytime=-1}] run function arenaclear:daytime/show_dialog
execute as @a[x=0,team=!Yellow,team=!Blue,team=!Spectator,scores={daytime=-2147483648..}] unless score @s daytime matches -2..-1 run function arenaclear:daytimechange
scoreboard players reset @a[x=0] daytime
execute if predicate rr:has_modification_room run scoreboard players set @a[x=0,team=Lobby] daytime -2
execute if predicate rr:has_modification_room run scoreboard players enable @a[x=0,team=Lobby] daytime
