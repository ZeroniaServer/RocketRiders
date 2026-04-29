##################################################
## MATCH IN PLAY: Commands for what occurs      ##
## during a match (before the match is closing) ##
##################################################

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
execute if score $match_play_time global matches 1..5 as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:entity/is_on_fire] at @s run function game:putoutfire

##Enable fall damage (considers modifiers)
execute if score $match_play_time global matches 10 unless predicate game:modifiers/no_fall/on run gamerule minecraft:fall_damage true

##Remove kills
execute if score $match_play_time global matches ..4 run scoreboard players reset @a[x=0,predicate=custom:team/any_playing_team] match_statistic.deaths
execute if score $match_play_time global matches ..4 run scoreboard players reset @a[x=0,predicate=custom:team/any_playing_team] match_statistic.kills

##Achievements
function achievements:gain

## Clear tablist icon for players in non-overworld dimensions
scoreboard players display numberformat @a[predicate=!custom:in_overworld] flag_tablist_display blank

## Damage players standing inside a portal during Hole In One
execute if predicate game:arena_details/portal/hole_in_one as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:standing_on_any_portal] positioned as @s if block ~ ~ ~ minecraft:nether_portal run damage @s 4 minecraft:outside_border

## Save play times
scoreboard players operation @a[x=0] play_time_save_cooldown %= $20 constant
execute if entity @s[tag=chaseEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.chase_play_time 1
execute if entity @s[tag=chaseEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/chase
execute if entity @s[tag=classicEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.classic_play_time 1
execute if entity @s[tag=classicEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/classic
execute if entity @s[tag=crusadeEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.crusade_play_time 1
execute if entity @s[tag=crusadeEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/crusade
execute if entity @s[tag=ctfEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.ctf_play_time 1
execute if entity @s[tag=ctfEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/ctf
execute if entity @s[tag=duelEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.duel_play_time 1
execute if entity @s[tag=duelEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/duel
execute if entity @s[tag=normalEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.normal_play_time 1
execute if entity @s[tag=normalEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/normal
execute if entity @s[tag=powerupsEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.powerups_play_time 1
execute if entity @s[tag=powerupsEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/powerups
execute if entity @s[tag=sandboxEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.sandbox_play_time 1
execute if entity @s[tag=sandboxEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/sandbox
execute if entity @s[tag=swapEnabled] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] player_statistics.swap_play_time 1
execute if entity @s[tag=swapEnabled] as @a[x=0,scores={play_time_save_cooldown=0}] run function custom:player/playerdata/save_play_time/swap
