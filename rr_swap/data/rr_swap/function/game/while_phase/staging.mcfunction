execute unless score $queue_countdown_timer global matches 581.. run scoreboard players remove $facade_swap_cooldown match_data 1
execute unless score $queue_countdown_timer global matches 581.. if score $facade_swap_cooldown match_data matches ..0 run function rr_swap:baseswap/pre_game_countdown_swap
execute if score $queue_countdown_timer global matches 581.. run scoreboard players reset $facade_swap_cooldown match_data

execute if score $queue_countdown_timer global matches 590.. store success score $chosen_swap_side match_data if score $chosen_swap_side match_data matches 1
execute if score $queue_countdown_timer global matches 590.. unless score $swap_side match_data = $chosen_swap_side match_data run function rr_swap:baseswap/pre_game_countdown_swap
