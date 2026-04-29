execute store result score $ticks var run function game:config/get_tie_window_length
return run scoreboard players operation $ticks var *= $20 constant
