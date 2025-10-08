##################################
## AREACLEAR: The main function ##
## for beginning an Arena Clear ##
##################################

##Repeating settings
tag @s[scores={RepeatSettings=2..}] add Repeat
execute if entity @s[tag=Repeat,tag=!RepeatForever] run schedule function arenaclear:notifyrepeat_indimension 3t append

##Appropriate tags for Arena Clear state
scoreboard players reset $match_in_play global
scoreboard players reset $game_paused global

##Summon AECs for tracking/block sweeping
summon marker 11 63 6 {Tags:["ArenaClearChecker"]}

##Reset Tetris progress for Item RNG
function items:tetrisreset

##Clear utility structures
kill @e[x=0,type=marker,tag=obsidianshield]
kill @e[x=0,type=marker,tag=blueobtracker]
kill @e[x=0,type=marker,tag=yellowobtracker]

##Begin recursive SmartClear process
function arenaclear:superspeed

##Close off Modification Room
execute if predicate rr:has_modification_room as @e[x=0,type=marker,tag=ControlRoom] at @s run tp @a[distance=..15] -43 211 78 90 0
function lobby:close_modification_room

##Generate list of Game Rules
function arenaclear:gamerulelist

##Prepare Item RNG timer for next game
scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= $20 constant
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
scoreboard players set @s[tag=Minute] RandomItem 1197

##Remove Traveler tags
tag @a[x=0] remove beenOnYellow
tag @a[x=0] remove beenOnBlue
tag @a[x=0] remove beenOnBoth

##Add flag that game just cleared (briefly locks joinpads)
tag @s add JustCleared

##Reset tips for next gamemode
function game:tipreset

##Reset creeper explosion origin uuid map
data modify storage rocketriders:explosions creeper_to_player_map set value {}
