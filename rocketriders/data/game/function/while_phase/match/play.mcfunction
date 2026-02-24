###############################################
## MATCH IN PLAY: Commands for what occurs   ##
## during a match (before the match is over) ##
###############################################

##Stop games if empty (toggle)
execute if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if entity @s[tag=stopIfEmpty] run function game:forcestop

##Actionbar delay (necessary for certain action bar messages to override others)
execute if entity @a[x=0,tag=DelayActionbar] run scoreboard players add @a[x=0,tag=DelayActionbar] actionbardelay 1
execute if entity @a[x=0,scores={actionbardelay=50..}] run tag @a[x=0,tag=DelayActionbar,scores={actionbardelay=50..}] remove DelayActionbar
execute if entity @a[x=0,scores={actionbardelay=50..}] run scoreboard players reset @a[x=0,scores={actionbardelay=50..}] actionbardelay

##Hotfix so Ground Bound achievement isn't broken
scoreboard players add @a[x=0,predicate=custom:team/yellow] jumps 0
scoreboard players add @a[x=0,predicate=custom:team/blue] jumps 0

##Full hotbar check
function items:full_hotbar

##Game time
scoreboard players add $match_play_time global 1

##Put out players on fire
execute if score $match_play_time global matches 1..5 as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:is_on_fire] at @s run function game:putoutfire

##Enable fall damage (considers modifiers)
execute if score $match_play_time global matches 10 unless predicate game:modifiers/no_fall_damage/on run function custom:game_rules/fall_damage/on

##Clear lobby arrows
execute if score $match_play_time global matches ..4 run clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{lobby:true}]

##Remove kills
execute if score $match_play_time global matches ..4 run scoreboard players reset @a[x=0,predicate=custom:team/any_playing_team] match_statistic.deaths
execute if score $match_play_time global matches ..4 run scoreboard players reset @a[x=0,predicate=custom:team/any_playing_team] match_statistic.kills

##Achievements
function achievements:gain

##Spawn trap hotfix
fill 14 63 66 10 63 66 obsidian
fill 13 63 65 11 63 65 obsidian
setblock 14 63 66 obsidian
setblock 10 63 66 obsidian
setblock 12 63 64 obsidian
execute unless predicate game:gamemode_components/custom_spawnpoint_block_protection run fill 13 65 67 11 65 67 obsidian
execute unless predicate game:gamemode_components/custom_spawnpoint_block_protection run setblock 12 66 67 obsidian
fill 11 63 -65 13 63 -66 obsidian
setblock 12 63 -64 obsidian
setblock 10 63 -66 obsidian
setblock 14 63 -66 obsidian
execute unless predicate game:gamemode_components/custom_spawnpoint_block_protection run fill 11 65 -67 13 65 -67 obsidian
execute unless predicate game:gamemode_components/custom_spawnpoint_block_protection run setblock 12 66 -67 obsidian

## Leave Mid-Match
execute as @a[scores={LeaveMidgame=1..},predicate=custom:team/any_playing_team] run function game:leave_mid_match
scoreboard players enable @a[x=0,predicate=custom:team/any_playing_team] LeaveMidgame
scoreboard players reset @a[x=0,predicate=!custom:team/any_playing_team] LeaveMidgame

## Clear tablist icon for players in non-overworld dimensions
scoreboard players display numberformat @a[predicate=!custom:indimension] flag_tablist_display blank
