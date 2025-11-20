####################################################
## CUSTOMIZER: The brain of the Modification Room ##
## Allows items, modifiers, gamemodes, bases, and ##
## other options/settings to be selected per game ##
####################################################

##Arrow pointing down into the lobby
execute if predicate rr:has_modification_room if entity @s[tag=!Repeat] unless entity @e[type=block_display,tag=LobbyArrowDisplay] if predicate custom:periodic_tick/3 unless score $lockmodroom CmdData matches 1 run function lobby:spawnarrow
scoreboard players add @e[type=block_display,tag=LobbyArrowDisplay] CmdData 1
execute as @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=1}] run function lobby:arrow_up
execute as @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=11}] run function lobby:arrow_down
scoreboard players reset @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=21..}] CmdData

##Particles around confirm changes sign
execute if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:2} -68.7 190.5 79.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:2} -68.7 190.5 77.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

##GAMEMODE SELECTION
scoreboard players remove @s SetGamemode 1
scoreboard players operation @s SetGamemode %= maxID gamemodeID
scoreboard players add @s SetGamemode 1

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
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players reset $snipe_portals config
execute unless score @s MaxItemSec matches 5..30 run scoreboard players set @s MaxItemSec 15
scoreboard players set @s[tag=DefaultOptions,tag=!GamemodeRefreshed] MaxItemSec 15
scoreboard players set @s[tag=DefaultOptions,tag=!GamemodeRefreshed] MaxItemTime 300
scoreboard players set @s[tag=DefaultOptions,tag=!GamemodeRefreshed] RepeatSettings 1
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] if predicate rr:server_mode/realms run scoreboard players set $disable_cannoning config 1
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] unless predicate rr:server_mode/realms run scoreboard players reset $disable_cannoning config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] if predicate rr:server_mode/realms run scoreboard players set $impact_utilities config 1
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] unless predicate rr:server_mode/realms run scoreboard players reset $impact_utilities config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultOptions] remove DefaultOptions

##RESTORE DEFAULT WORLD OPTIONS
tag @s[tag=DefaultWorld,tag=!GamemodeRefreshed] add noPlayerCredits
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run function lobby:credits/stop
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run time set 12925t
execute unless score @s daytime matches 0..23999 store result score @s daytime run time query daytime
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultWorld] remove DefaultWorld

##ITEM DELAY
execute if predicate rr:has_modification_room if predicate game:modifiers/minute_mix/on run scoreboard players reset @a[x=0,predicate=custom:team/lobby] MaxItemSec
execute unless predicate game:game_rules/item_delay/locked as @a[x=0,predicate=!custom:team/any_arena_team,tag=ItemDelayChange] run function arenaclear:itemdelay/show_dialog
execute if predicate game:game_rules/item_delay/locked run tellraw @a[x=0,predicate=!custom:team/any_arena_team,tag=ItemDelayChange] [{"text":"Item Delay is not adjustable in this gamemode.","color":"dark_gray","italic":true}]
tag @a[x=0,tag=ItemDelayChange] remove ItemDelayChange
execute if predicate rr:has_modification_room unless predicate game:game_rules/item_delay/locked as @a[x=0,predicate=!custom:team/any_arena_team,scores={MaxItemSec=-1}] run function arenaclear:itemdelay/show_dialog
execute if predicate rr:has_modification_room unless predicate game:game_rules/item_delay/locked as @a[x=0,predicate=!custom:team/any_arena_team,scores={MaxItemSec=-2147483648..}] unless score @s MaxItemSec matches -2..0 run function arenaclear:itemdelay
execute if predicate rr:has_modification_room if predicate game:game_rules/item_delay/locked as @a[x=0,predicate=!custom:team/any_arena_team,scores={MaxItemSec=-2147483648..}] unless score @s MaxItemSec matches -2..0 run tellraw @s [{"text":"Item Delay is not adjustable in this gamemode.","color":"dark_gray","italic":true}]
scoreboard players reset @a[x=0] MaxItemSec
execute if predicate rr:has_modification_room unless predicate game:modifiers/minute_mix/on run scoreboard players set @a[x=0] MaxItemSec -2
execute if predicate rr:has_modification_room unless predicate game:modifiers/minute_mix/on run scoreboard players enable @a[x=0,predicate=custom:team/lobby] MaxItemSec

##DAYTIME
execute as @a[x=0,predicate=!custom:team/any_arena_team,tag=daytimeChange] run function arenaclear:daytime/show_dialog
tag @a[x=0,tag=daytimeChange] remove daytimeChange
execute as @a[x=0,predicate=!custom:team/any_arena_team,scores={daytime=-1}] run function arenaclear:daytime/show_dialog
execute as @a[x=0,predicate=!custom:team/any_arena_team,scores={daytime=-2147483648..}] unless score @s daytime matches -2..-1 run function arenaclear:daytimechange
scoreboard players reset @a[x=0] daytime
execute if predicate rr:has_modification_room run scoreboard players set @a[x=0,predicate=custom:team/lobby] daytime -2
execute if predicate rr:has_modification_room run scoreboard players enable @a[x=0,predicate=custom:team/lobby] daytime
