execute store success score $swap_side match_data unless score $swap_side match_data matches 1
function rr_swap:baseswap/set_palettes
function game:place_facade
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/update_armor

execute unless predicate game:phase/staging/queue/countdown run scoreboard players set $facade_swap_cooldown match_data 100
execute if predicate game:phase/staging/queue/countdown run scoreboard players set $facade_swap_cooldown match_data 600
execute if predicate game:phase/staging/queue/countdown run scoreboard players operation $facade_swap_cooldown match_data -= $queue_countdown_timer global
execute if predicate game:phase/staging/queue/countdown run scoreboard players operation $facade_swap_cooldown match_data /= $4 constant
execute if predicate game:phase/staging/queue/countdown if score $facade_swap_cooldown match_data matches ..10 run scoreboard players set $facade_swap_cooldown match_data 10
execute if predicate game:phase/staging/queue/countdown if score $facade_swap_cooldown match_data matches 60.. run scoreboard players set $facade_swap_cooldown match_data 60
