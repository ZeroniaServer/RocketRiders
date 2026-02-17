##################################
## AREACLEAR: The main function ##
## for beginning an Arena Clear ##
##################################

##Appropriate tags for Arena Clear state
execute if predicate game:phase/match/over run function game:set_phase/match.over
execute unless predicate game:phase/match/over run function game:set_phase/match.staging

##Summon AECs for tracking/block sweeping
summon marker 11 63 6 {Tags:["ArenaClearChecker"]}

##Reset Tetris progress for Item RNG
function items:tetrisreset

##Begin recursive SmartClear process
scoreboard players set @e[x=0,type=marker,tag=ArenaClearChecker] ClearArena 90
tag @s remove Countdown
tag @e[x=0,type=marker,tag=ArenaClearChecker] add PlacerClear

##Close off Modification Room
execute if predicate rr:has_modification_room as @e[x=0,type=marker,tag=ControlRoom] at @s run tp @a[distance=..15,predicate=!custom:team/developer] -43 211 78 90 0
function lobby:close_modification_room

##Generate list of Game Rules
function arenaclear:gamerulelist

##Prepare Item RNG timer for next game
execute store result score @s MaxItemTime run function game:config/get_item_delay_ticks
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
execute if predicate game:modifiers/minute_mix/on run scoreboard players set @s RandomItem 1197

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
