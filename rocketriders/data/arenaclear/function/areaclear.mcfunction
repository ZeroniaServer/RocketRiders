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

##Remove decorations
fill -14 84 66 38 64 48 air
fill -14 84 -66 38 64 -48 air
fill 32 63 -51 -9 37 -45 air
fill -9 63 51 33 38 46 air
fill -11 59 -73 35 36 -75 air
fill -11 59 73 35 36 75 air
fill -14 13 66 38 33 48 air
fill -14 13 -66 38 33 -48 air

##Remove building blocks
execute if data storage rocketriders:arena_clear building_block_subchunks[0] run function arenaclear:clear_building_blocks/loop with storage rocketriders:arena_clear building_block_subchunks[-1]

##Clear utility structures
execute as @e[x=0,type=marker,tag=obsidianshield] at @s run function everytick:obsidian_shield_break
execute as @e[x=0,type=marker,tag=blueobtracker] at @s run function everytick:obsidian_shield_break
execute as @e[x=0,type=marker,tag=yellowobtracker] at @s run function everytick:obsidian_shield_break
execute if score $canopy_count global matches 1.. run function arenaclear:preparecanopy
execute if score $shield_count global matches 1.. run function arenaclear:prepareshield

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
