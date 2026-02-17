execute unless block -67 192 83 minecraft:air run function world_updates:1_3_0-pre13/move_modroom_signs

execute if score $match_in_play global matches 0..1 store success score $phase/match.play global if score $match_in_play global matches 1
scoreboard players reset $match_in_play global

execute if score $match_over global matches 0..1 store success score $phase/match.over global if score $match_over global matches 1
scoreboard players reset $match_over global

execute if score $game_paused global matches 0..1 store success score $phase/match.paused global if score $game_paused global matches 1
scoreboard players reset $game_paused global
execute if score $phase/match.paused global matches 1 run scoreboard players reset $phase/match.play global
execute if score $phase/match.paused global matches 1 run scoreboard players reset $phase/match.over global
