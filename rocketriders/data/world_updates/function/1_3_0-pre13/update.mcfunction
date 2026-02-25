## Move modification room signs
execute unless block -67 192 83 minecraft:air run function world_updates:1_3_0-pre13/move_modroom_signs

## Removed unused scoreboard objectives
execute if score @e[limit=1,x=0,type=armor_stand,tag=Selection] endtimer matches 1.. run scoreboard players operation $closing_timer global = @e[limit=1,x=0,type=armor_stand,tag=Selection] endtimer
scoreboard objectives remove endtimer
execute if score $match_over_timer global matches 1.. run scoreboard players operation $closing_timer global = $match_over_timer global
scoreboard players reset $match_over_timer global
execute if score $closing_timer global matches ..0 run scoreboard players reset $closing_timer global
execute unless predicate game:phase/match/closing run scoreboard players reset $closing_timer global

scoreboard objectives remove deathCooldown

## Move lockmodroom CmdData to config
execute if score $lockmodroom CmdData matches 1 unless predicate rr:is_cubekrowd run scoreboard players set $lock_modification_room config 1
scoreboard players reset $lockmodroom CmdData
execute if score $nodeathmessages CmdData matches 1 run scoreboard players set $disable_death_messages config 1
scoreboard players reset $nodeathmessages CmdData
execute if score $skipsplashes CmdData matches 1 run scoreboard players set $disable_splash_messages config 1
scoreboard players reset $skipsplashes CmdData
execute if score $skiptitles CmdData matches 1 run scoreboard players set $disable_titles config 1
scoreboard players reset $skiptitles CmdData

## Change how phases are tracked
execute if score $phase/match.play global matches 1 run scoreboard players set $match_in_play global 1
execute if score $phase/match.paused global matches 1 run scoreboard players set $match_in_play global 1
execute if score $phase/match.paused global matches 1 run scoreboard players set $game_paused global 1
execute if score $phase/match.over global matches 1 run scoreboard players set $match_over global 1
scoreboard players reset $phase/match.play global
scoreboard players reset $phase/match.pause global
scoreboard players reset $phase/match.over global
execute if score $phase/game.match.over global matches 1 run scoreboard players set $phase/game.match.closing global 1
scoreboard players reset $phase/game.match.over global
execute if score $phase/game.match.paused global matches 1 run scoreboard players set $phase/game.match.pause global 1
scoreboard players reset $phase/game.match.paused global

scoreboard players set $phase/game global 0

execute if score $match_in_play global matches 1 run scoreboard players set $phase/game global 1
execute if score $match_in_play global matches 1 run scoreboard players set $phase/game.match global 0
execute if score $match_in_play global matches 1 run scoreboard players set $phase/game.match.play global 0

execute if score $match_in_play global matches 1 if score $game_paused global matches 1 run scoreboard players set $phase/game global 1
execute if score $match_in_play global matches 1 if score $game_paused global matches 1 run scoreboard players set $phase/game.match global 1

execute if score $match_over global matches 1 run scoreboard players set $phase/game global 1
execute if score $match_over global matches 1 run scoreboard players set $phase/game.match global 2
execute if score $match_over global matches 1 run scoreboard players set $phase/game.match.closing global 1

scoreboard players reset $match_in_play global
scoreboard players reset $match_over global
scoreboard players reset $game_paused global

execute if score $phase/game global matches 0 run scoreboard players set $phase/game.staging global 0
execute if score $phase/game global matches 0 if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run scoreboard players set $phase/game.staging global 1
tag @e[limit=1,x=0,type=armor_stand,tag=Selection] remove EditedSettings

execute if score $phase/game.staging global matches 1 if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=Countdown] run scoreboard players set $phase/game.staging.queue global 1
execute if score $phase/game.staging global matches 1 unless score $phase/game.staging.queue global matches 0..1 run scoreboard players set $phase/game.staging.queue global 0
tag @e[limit=1,x=0,type=armor_stand,tag=Selection] remove Countdown

scoreboard players reset $transitioning_phase global

## Place in barrier border
#forceload add -176 176 191 191
fill -164 -64 -176 188 181 -176 barrier strict
fill 188 -64 -176 188 181 176 barrier strict
fill 188 -64 176 -164 181 176 barrier strict
fill -164 -64 176 -164 181 -176 barrier strict

## Misc
scoreboard players reset $periodic_tick.2 global
scoreboard players reset $periodic_tick.3 global
scoreboard players reset $periodic_tick.5 global
scoreboard players reset $periodic_tick.20 global

scoreboard players operation $match_play_time global = $game_duration global
scoreboard players reset $game_duration global
execute unless predicate game:phase/match run scoreboard players reset $match_play_time global
execute if score $match_play_time global matches ..-1 run scoreboard players set $match_play_time global 0
