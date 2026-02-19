###################################################################
## MATCH OVER: What events occur during the aftermath of a match ##
###################################################################

##Initial timer - pre-tie phase
scoreboard players add $match_over_timer global 1
execute if score $match_over_timer global matches 2 if predicate game:gamemode_components/short_end_sequence run scoreboard players set $match_over_timer global 249

execute as @a[x=0] run function custom:player_action/forget_nova_attach
execute if score $match_over_timer global matches 1 run tag @s remove gaveFirstItem
execute if score $match_over_timer global matches 1 run effect clear @a[x=0,predicate=custom:team/any_playing_team]
execute if entity @s[tag=BlueWon] run effect give @a[x=0,predicate=custom:team/yellow] weakness infinite 100 true
execute if entity @s[tag=YellowWon] run effect give @a[x=0,predicate=custom:team/blue] weakness infinite 100 true
execute if score $match_over_timer global matches 1 run scoreboard players reset @a[x=0] LeaveMidgame
execute if score $match_over_timer global matches 1 run gamemode adventure @a[x=0,predicate=custom:team/blue]
execute if score $match_over_timer global matches 1 run gamemode adventure @a[x=0,predicate=custom:team/yellow]
execute if score $match_over_timer global matches 1 run kill @e[x=0,type=ender_pearl]
execute if score $match_over_timer global matches 1 run tag @e[x=0,type=marker,tag=join_pad.yellow] add CancelJoin
execute if score $match_over_timer global matches 1 run tag @e[x=0,type=marker,tag=join_pad.blue] add CancelJoin
execute if score $match_over_timer global matches 1 run tag @e[x=0,type=marker,tag=join_pad.spectator] add CancelJoin
execute if score $match_over_timer global matches 1..567 unless entity @a[limit=1,x=0,predicate=custom:team/any_arena_team] run scoreboard players set $match_over_timer global 568
execute if score $match_over_timer global matches 2..3 as @a[x=0,predicate=custom:is_on_fire,predicate=custom:team/any_playing_team] at @s run function game:putoutfire
execute if score $match_over_timer global matches 1..2 run effect give @a[x=0,predicate=custom:team/any_playing_team] resistance infinite 100 true
execute if score $match_over_timer global matches 1..2 run effect give @a[x=0,predicate=custom:team/any_playing_team] instant_health 1 100 true
execute if score $match_over_timer global matches 1..2 unless predicate game:gamemode_components/custom_match_over_teleport_locations run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if score $match_over_timer global matches 1..2 unless predicate game:gamemode_components/custom_match_over_teleport_locations run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
execute if score $match_over_timer global matches 1..569 run function modifiers:modifiers

##Tie actionbar notifications
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 1..20 run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"5","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 21..40 run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"4","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 41..60 run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"3","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 61..80 run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"2","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 81..100 run title @a[x=0,predicate=!custom:team/lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"1","color":"dark_red","bold":true},{"text":" second","color":"red"}]
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 101 run title @a[x=0,predicate=!custom:team/lobby] actionbar {"text":""}
execute if predicate game:phase/match/over/tie_window if score $match_over_timer global matches 101 run function game:set_phase/match.over.outcome

##System for ties (works with Double Portal modifier)
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 1..100 if entity @s[tag=BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken run function game:set_phase/match.play.tie_breaker
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 1..100 if entity @s[tag=YellowWon,tag=!BlueWon] if function game:check/yellow_portal_broken run function game:set_phase/match.play.tie_breaker
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if score $match_over_timer global matches 1..100 if entity @s[tag=YellowWon,tag=BlueWon] run function game:set_phase/match.play.tie_breaker

##Post-tie phase and reset
execute if score $match_over_timer global matches 101 run scoreboard players set $game_duration global 0
execute if score $match_over_timer global matches 102 as @a[x=0] run function everytick:score_reset
execute if score $match_over_timer global matches 102 as @a[x=0] run function custom:player_action/forget_all_canopies
execute if score $match_over_timer global matches 102 as @a[x=0] run function custom:player_action/forget_nova_attach
execute if score $match_over_timer global matches 250 run gamemode spectator @a[x=0,predicate=custom:team/any_playing_team]
execute if score $match_over_timer global matches 570 run scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] GamesPlayed 1
execute if score $match_over_timer global matches 570 as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/playerdata/save
execute if score $match_over_timer global matches 570 run function achievements:scoresreset
execute if score $match_over_timer global matches 570 if predicate game:modifiers/spam_click/on as @a[x=0] run attribute @s minecraft:attack_speed base set 4
#Reverse Sonar glowing
execute if score $match_over_timer global matches 570 if predicate game:modifiers/sonar/on as @e[x=0,tag=is_glowing] run function game:glowing/off
execute if score $match_over_timer global matches 570 run scoreboard players add @a[x=0,predicate=custom:team/any_arena_team] LeaveGame 1
execute if score $match_over_timer global matches 570 run tp @a[x=0,predicate=custom:team/blue] -36 211 61.0 90 0
execute if score $match_over_timer global matches 570 run tp @a[x=0,predicate=custom:team/yellow] -36 211 96.0 90 0
execute if score $match_over_timer global matches 570 run tp @a[x=0,predicate=custom:team/spectator] -43 211 78 90 0
execute if score $match_over_timer global matches 570 run scoreboard players reset @a[x=0] match_statistic.kills
execute if score $match_over_timer global matches 570 run scoreboard players reset @a[x=0] match_statistic.deaths
execute if score $match_over_timer global matches 570 run function custom:game_rules/mob_griefing/off
execute if score $match_over_timer global matches 570 run scoreboard players reset $swap_side global
execute if score $match_over_timer global matches 570 run setblock -57 203 78 air

#Brute Force Arena Clear
execute if score $match_over_timer global matches 570 run function arenaclear:brute_force/start

#Server mode specifics
execute if score $match_over_timer global matches 570 if predicate rr:has_modification_room run function lobby:open_modification_room
execute if score $match_over_timer global matches 570 if predicate rr:server_mode/cubekrowd_voting if entity @s[tag=!forcenormal] run function servermode:makesets
execute if score $match_over_timer global matches 570 if predicate rr:server_mode/cubekrowd_duels run schedule function servermode:forceclear 3t
execute if score $match_over_timer global matches 570.. run tag @a[x=0] remove Winner
execute if score $match_over_timer global matches 570.. run tag @a[x=0] remove Loser
execute if score $match_over_timer global matches 570.. run tag @s remove BlueWon
execute if score $match_over_timer global matches 570.. run tag @s remove YellowWon
execute if score $match_over_timer global matches 570.. run tag @s remove BlueWonFirst
execute if score $match_over_timer global matches 570.. run tag @s remove YellowWonFirst
execute if score $match_over_timer global matches 570.. run tag @s remove BothWon
execute if score $match_over_timer global matches 570.. run scoreboard players reset @a[x=0] invCount
execute if score $match_over_timer global matches 570.. run scoreboard players reset $blue_single_portal var
execute if score $match_over_timer global matches 570.. run scoreboard players reset $yellow_single_portal var
execute if score $match_over_timer global matches 570.. run scoreboard players reset $1v1_duel_time_out_period global

##For repeating settings
execute unless score $match_repeat_amount global matches 1.. unless predicate game:repeat_settings/forever run scoreboard players reset $extra_match_repetitions config
execute if score $match_over_timer global matches 570.. if predicate game:repeat_settings/on unless score $mcancel CmdData matches 1 unless entity @s[predicate=game:item_pool_meta/all_normal_missiles_disabled,predicate=game:item_pool_meta/all_heavy_missiles_disabled,predicate=game:item_pool_meta/all_lightning_missiles_disabled,predicate=game:item_pool_meta/all_utilities_disabled] run function arenaclear:areaclear

execute if score $match_over_timer global matches 570.. run scoreboard players set $mcancel CmdData 0

##Refresh modification room
execute if score $match_over_timer global matches 570.. run function arenaclear:refreshsigns

# Go back to configuration phase
execute if score $match_over_timer global matches 570.. run function game:set_phase/staging.configuration
