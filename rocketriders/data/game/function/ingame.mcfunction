######################################
## INGAME: Commands for what occurs ##
## during any game of Rocket Riders ##
######################################

##Stop games if empty (toggle)
execute if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if entity @s[tag=stopIfEmpty] run function game:forcestop

##Actionbar delay (necessary for certain action bar messages to override others)
execute if entity @a[x=0,tag=DelayActionbar] run scoreboard players add @a[x=0,tag=DelayActionbar] actionbardelay 1
execute if entity @a[x=0,scores={actionbardelay=50..}] run tag @a[x=0,tag=DelayActionbar,scores={actionbardelay=50..}] remove DelayActionbar
execute if entity @a[x=0,scores={actionbardelay=50..}] run scoreboard players reset @a[x=0,scores={actionbardelay=50..}] actionbardelay

##Hotfix so Ground Bound achievement isn't broken
scoreboard players add @a[x=0,team=Yellow] jumps 0
scoreboard players add @a[x=0,team=Blue] jumps 0

##Hotfix so Pacifist achievement isn't broken
scoreboard players add @a[x=0,team=Yellow] kills 0
scoreboard players add @a[x=0,team=Blue] kills 0

##Prevent players from going above the arena
execute unless predicate game:game_paused as @a[x=0,gamemode=!spectator,tag=!JoinBlue,tag=!JoinYellow,predicate=custom:on_blue_or_yellow_team] at @s in overworld if entity @s[y=181,dy=100] run function game:punishbreach

##Player void
execute unless predicate game:game_paused as @a[x=0,predicate=custom:on_blue_or_yellow_or_spectator_team,predicate=custom:in_void] unless score @s ThrowPlat matches 1.. at @s run function game:void

##Full hotbar check
function items:full_hotbar

##Game time
execute unless predicate game:game_paused run scoreboard players add $game_duration global 1

##Put out players on fire
execute if predicate game:match_in_play if score $game_duration global matches 1..2 as @a[x=0,predicate=custom:on_blue_or_yellow_team,predicate=custom:is_on_fire] at @s run function game:putoutfire

##Enable fall damage (considers modifiers)
execute if predicate game:match_in_play if score $game_duration global matches 10 if entity @s[tag=!NoFall] run gamerule fallDamage true

##Clear lobby arrows
execute if predicate game:match_in_play if score $game_duration global matches ..4 run clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *[custom_data~{lobby:true}]

##Remove kills
execute if predicate game:match_in_play if score $game_duration global matches ..4 run scoreboard players reset @a[x=0,predicate=custom:on_blue_or_yellow_team] kills

##General everytick commands
function everytick:spawnables
function achievements:gain
function everytick:clear_spawnblocks
function everytick:no_fall
execute if entity @e[x=0,type=tnt_minecart] run function everytick:init_kill_carts
execute if entity @e[x=0,type=#arrows] run function everytick:fire_arrow
execute if predicate game:game_rules/disable_cannoning/on as @e[x=0,type=tnt,predicate=custom:tnt_is_moving_too_fast] run function game:slow_down_tnt

##Modifiers
function modifiers:modifiers

##Spawn trap hotfix
fill 14 63 66 10 63 66 obsidian
fill 13 63 65 11 63 65 obsidian
setblock 14 63 66 obsidian
setblock 10 63 66 obsidian
setblock 12 63 64 obsidian
execute if entity @s[tag=!customSpawnpointBlockProtection] run fill 13 65 67 11 65 67 obsidian
execute if entity @s[tag=!customSpawnpointBlockProtection] run setblock 12 66 67 obsidian
fill 11 63 -65 13 63 -66 obsidian
setblock 12 63 -64 obsidian
setblock 10 63 -66 obsidian
setblock 14 63 -66 obsidian
execute if entity @s[tag=!customSpawnpointBlockProtection] run fill 11 65 -67 13 65 -67 obsidian
execute if entity @s[tag=!customSpawnpointBlockProtection] run setblock 12 66 -67 obsidian

##Extra obsidian if necessary
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 64 67 39 64 67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 33 67 39 33 67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 64 -67 39 64 -67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 33 -67 39 33 -67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 63 67 -15 34 67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 63 67 39 34 67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 63 -67 -15 34 -67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 63 -67 39 34 -67 obsidian
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 64 67 39 64 67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 33 67 39 33 67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 64 -67 39 64 -67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 33 -67 39 33 -67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 63 67 -15 34 67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 63 67 39 34 67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 63 -67 -15 34 -67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 63 -67 39 34 -67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 10 64 67 14 64 67 obsidian
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 10 64 -67 14 64 -67 obsidian
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 64 68 -15 64 69 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 64 -68 -15 64 -69 bedrock

#Fix for Hole in One
execute if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill -11 59 73 34 36 75 obsidian outline
execute if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill 1 48 73 1 47 73 air
execute if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill 23 48 73 23 47 73 air

##Hotfix for Canopy respawns
tag @s[tag=runcanopy] remove runcanopy

##Hotfix for crossbows
scoreboard players reset @a[x=0] LaunchCrossbow

##Hotfix for Hypersonic
execute as @e[x=0,type=marker,tag=hyperExtra] at @s run function items:hyperextra