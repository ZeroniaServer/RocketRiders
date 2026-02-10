###################################################################
## MATCH OVER: What events occur during the aftermath of a match ##
###################################################################

##Initial timer - pre-tie phase
scoreboard players add @s endtimer 1
execute if score @s endtimer matches 2 if predicate game:gamemode_components/short_end_sequence run scoreboard players set @s endtimer 249

execute as @a[x=0] run function custom:player_action/forget_all_canopies
execute as @a[x=0] run function custom:player_action/forget_nova_attach
function everytick:spawnables
execute if score @s endtimer matches 1.. run scoreboard players reset $match_in_play global
execute if score @s endtimer matches 1.. run scoreboard players reset $game_paused global
tag @s[scores={endtimer=1}] remove SuddenDeath
tag @s[scores={endtimer=1}] remove gaveFirstItem
scoreboard players reset @s[scores={endtimer=1..}] SDtime
execute if entity @s[scores={endtimer=1}] run effect clear @a[x=0,predicate=custom:team/any_playing_team]
execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if entity @s[tag=BlueWon] run effect give @a[x=0,predicate=custom:team/yellow] weakness infinite 100 true
execute if entity @s[tag=YellowWon] run effect give @a[x=0,predicate=custom:team/blue] weakness infinite 100 true
execute if entity @s[scores={endtimer=1..100}] run worldborder warning distance 0
execute if entity @s[scores={endtimer=1}] run scoreboard players reset @a[x=0] LeaveMidgame
execute if entity @s[scores={endtimer=1}] run gamemode adventure @a[x=0,predicate=custom:team/blue]
execute if entity @s[scores={endtimer=1}] run gamemode adventure @a[x=0,predicate=custom:team/yellow]
execute if entity @s[scores={endtimer=1}] run kill @e[x=0,type=ender_pearl]
execute if entity @s[scores={endtimer=1}] run tag @e[x=0,type=marker,tag=join_pad.yellow] add CancelJoin
execute if entity @s[scores={endtimer=1}] run tag @e[x=0,type=marker,tag=join_pad.blue] add CancelJoin
execute if entity @s[scores={endtimer=1}] run tag @e[x=0,type=marker,tag=join_pad.spectator] add CancelJoin
execute if entity @s[scores={endtimer=2..3}] as @a[x=0,predicate=custom:is_on_fire,predicate=custom:team/any_playing_team] at @s run function game:putoutfire
execute if entity @s[scores={endtimer=1..2}] run effect give @a[x=0,predicate=custom:team/any_playing_team] resistance infinite 100 true
execute if entity @s[scores={endtimer=1..2}] run effect give @a[x=0,predicate=custom:team/any_playing_team] instant_health 1 100 true
execute if entity @s[scores={endtimer=1..2}] unless predicate game:gamemode_components/custom_match_over_teleport_locations run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2}] unless predicate game:gamemode_components/custom_match_over_teleport_locations run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
execute if entity @s[scores={endtimer=1..}] run tag @s[tag=EditedSettings] remove EditedSettings
execute if entity @s[scores={endtimer=1..569}] run function modifiers:modifiers

# Prevent fireballs from being punched
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=#custom:large_fireballs,predicate=custom:in_arena] at @s run function game:set_fireball_not_punchable

##Tie actionbar notifications
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=!BothWon,scores={endtimer=1..20}] run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"5","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=!BothWon,scores={endtimer=21..40}] run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"4","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=!BothWon,scores={endtimer=41..60}] run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"3","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=!BothWon,scores={endtimer=61..80}] run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"2","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=!BothWon,scores={endtimer=81..100}] run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"1","color":"dark_red","bold":true},{"text":" second","color":"red"}]
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=!BothWon,scores={endtimer=101}] run title @a[x=0,predicate=!custom:team/lobby] actionbar {"text":""}

##System for ties (works with Double Portal modifier)
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,scores={endtimer=1..100}] if function game:check/blue_portal_broken run tag @s add SuddenDeath
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,scores={endtimer=1..100}] if function game:check/yellow_portal_broken run tag @s add SuddenDeath
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default if entity @s[tag=YellowWon,tag=BlueWon,tag=!SuddenDeath,scores={endtimer=1..100}] run tag @s add SuddenDeath

##Post-tie phase and reset
execute if entity @s[scores={endtimer=101}] run scoreboard players set $game_duration global 0
execute if entity @s[scores={endtimer=102}] as @a[x=0] run function everytick:score_reset
execute if entity @s[scores={endtimer=102}] as @a[x=0] run function custom:player_action/forget_all_canopies
execute if entity @s[scores={endtimer=102}] as @a[x=0] run function custom:player_action/forget_nova_attach
execute if entity @s[scores={endtimer=250}] run gamemode spectator @a[x=0,predicate=custom:team/any_playing_team]
execute if entity @s[scores={endtimer=570}] run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] GamesPlayed 1
execute if entity @s[scores={endtimer=570}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/playerdata/save
execute if entity @s[scores={endtimer=570}] run function achievements:scoresreset
execute if entity @s[scores={endtimer=570}] if predicate game:modifiers/spam_click/on as @a[x=0] run attribute @s minecraft:attack_speed base set 4
#Reverse Sonar glowing
execute if entity @s[scores={endtimer=570}] if predicate game:modifiers/sonar/on as @e[x=0,tag=is_glowing] run function game:glowing/off
execute if entity @s[scores={endtimer=570}] run scoreboard players add @a[x=0,predicate=custom:team/any_arena_team] LeaveGame 1
execute if entity @s[scores={endtimer=570}] run tp @a[x=0,predicate=custom:team/blue] -36 211 61.0 90 0
execute if entity @s[scores={endtimer=570}] run tp @a[x=0,predicate=custom:team/yellow] -36 211 96.0 90 0
execute if entity @s[scores={endtimer=570}] run tp @a[x=0,predicate=custom:team/spectator] -43 211 78 90 0
execute if entity @s[scores={endtimer=570}] run scoreboard players reset @a[x=0] match_statistic.kills
execute if entity @s[scores={endtimer=570}] run scoreboard players reset @a[x=0] match_statistic.deaths
execute if entity @s[scores={endtimer=570}] run function custom:game_rules/mob_griefing/off
execute if entity @s[scores={endtimer=570}] run scoreboard players reset $swap_side global
execute if entity @s[scores={endtimer=570}] run setblock -57 203 78 air

#Brute Force Arena Clear
execute if entity @s[scores={endtimer=570}] run function arenaclear:brute_force/start

#Server mode specifics
execute if entity @s[scores={endtimer=570}] if predicate rr:has_modification_room run function lobby:open_modification_room
execute if entity @s[scores={endtimer=570}] if predicate rr:server_mode/cubekrowd_voting if entity @s[tag=!forcenormal] run function servermode:makesets
execute if entity @s[scores={endtimer=570}] if predicate rr:server_mode/cubekrowd_duels run schedule function servermode:forceclear 3t
execute if entity @s[scores={endtimer=570..}] run tag @a[x=0] remove Winner
execute if entity @s[scores={endtimer=570..}] run tag @a[x=0] remove Loser
tag @s[scores={endtimer=570..}] remove BlueWon
tag @s[scores={endtimer=570..}] remove YellowWon
tag @s[scores={endtimer=570..}] remove BlueWonFirst
tag @s[scores={endtimer=570..}] remove YellowWonFirst
tag @s[scores={endtimer=570..}] remove SuddenDeath
tag @s[scores={endtimer=570..}] remove BothWon
execute if score @s endtimer matches 570.. run scoreboard players reset @a[x=0] invCount
execute if score @s endtimer matches 570.. run scoreboard players reset $blue_single_portal var
execute if score @s endtimer matches 570.. run scoreboard players reset $yellow_single_portal var
execute if score @s endtimer matches 570.. run scoreboard players reset $match_over global
execute if score @s endtimer matches 570.. run scoreboard players reset $1v1_duel_time_out_period global

##For repeating settings
execute unless score $match_repeat_amount global matches 1.. unless predicate game:repeat_settings/forever run scoreboard players reset $extra_match_repetitions config
execute if entity @s[scores={endtimer=570..}] if predicate game:repeat_settings/on unless score $mcancel CmdData matches 1 unless entity @s[predicate=game:item_pool_meta/all_normal_missiles_disabled,predicate=game:item_pool_meta/all_heavy_missiles_disabled,predicate=game:item_pool_meta/all_lightning_missiles_disabled,predicate=game:item_pool_meta/all_utilities_disabled] run function arenaclear:areaclear

execute if entity @s[scores={endtimer=570..}] run scoreboard players set $mcancel CmdData 0

##Refresh modification room
execute if entity @s[scores={endtimer=570..}] run function arenaclear:refreshsigns

##Reset end timer
scoreboard players set @s[scores={endtimer=570..}] endtimer 0