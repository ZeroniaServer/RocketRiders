##############################################
## MATCH IN PLAY: Commands for what occurs  ##
## during a game (before the match is over) ##
##############################################

##Stop games if empty (toggle)
execute if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if entity @s[tag=stopIfEmpty] run function game:forcestop

##Actionbar delay (necessary for certain action bar messages to override others)
execute if entity @a[x=0,tag=DelayActionbar] run scoreboard players add @a[x=0,tag=DelayActionbar] actionbardelay 1
execute if entity @a[x=0,scores={actionbardelay=50..}] run tag @a[x=0,tag=DelayActionbar,scores={actionbardelay=50..}] remove DelayActionbar
execute if entity @a[x=0,scores={actionbardelay=50..}] run scoreboard players reset @a[x=0,scores={actionbardelay=50..}] actionbardelay

##Hotfix so Ground Bound achievement isn't broken
scoreboard players add @a[x=0,predicate=custom:team/yellow] jumps 0
scoreboard players add @a[x=0,predicate=custom:team/blue] jumps 0

##Hotfix so Pacifist achievement isn't broken
scoreboard players add @a[x=0,predicate=custom:team/yellow] kills 0
scoreboard players add @a[x=0,predicate=custom:team/blue] kills 0

##Full hotbar check
function items:full_hotbar

##Game time
execute unless predicate game:game_paused run scoreboard players add $game_duration global 1

##Put out players on fire
execute if score $game_duration global matches 1..2 as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:is_on_fire] at @s run function game:putoutfire

##Enable fall damage (considers modifiers)
execute if score $game_duration global matches 10 if entity @s[tag=!NoFall] run gamerule fallDamage true

##Clear lobby arrows
execute if score $game_duration global matches ..4 run clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{lobby:true}]

##Remove kills
execute if score $game_duration global matches ..4 run scoreboard players reset @a[x=0,predicate=custom:team/any_playing_team] kills

##Achievements
function achievements:gain

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