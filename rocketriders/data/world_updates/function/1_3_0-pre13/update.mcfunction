# Move modification room signs
execute unless block -67 192 83 minecraft:air run function world_updates:1_3_0-pre13/move_modroom_signs

# Removed unused scoreboard objectives
scoreboard players operation $match_over_timer global = @e[limit=1,x=0,type=armor_stand,tag=Selection] endtimer
execute if score $match_over_timer global matches ..0 run scoreboard players reset $match_over_timer global
scoreboard objectives remove endtimer

# Change how phases are tracked
execute if score $phase/match.play global matches 1 run scoreboard players set $match_in_play global 1
execute if score $phase/match.paused global matches 1 run scoreboard players set $match_in_play global 1
execute if score $phase/match.paused global matches 1 run scoreboard players set $game_paused global 1
execute if score $phase/match.over global matches 1 run scoreboard players set $match_over global 1
scoreboard players reset $phase/match.play global
scoreboard players reset $phase/match.paused global
scoreboard players reset $phase/match.over global

scoreboard players set $phase/game global 0

execute if score $match_in_play global matches 1 run scoreboard players set $phase/game global 1
execute if score $match_in_play global matches 1 run scoreboard players set $phase/game.match global 0
execute if score $match_in_play global matches 1 run scoreboard players set $phase/game.match.play global 0

execute if score $match_in_play global matches 1 if score $game_paused global matches 1 run scoreboard players set $phase/game global 1
execute if score $match_in_play global matches 1 if score $game_paused global matches 1 run scoreboard players set $phase/game.match global 1

execute if score $match_over global matches 1 run scoreboard players set $phase/game global 1
execute if score $match_over global matches 1 run scoreboard players set $phase/game.match global 2
execute if score $match_over global matches 1 run scoreboard players set $phase/game.match.over global 1

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
