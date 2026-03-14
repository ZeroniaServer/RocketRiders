# Default to dialog
execute if score @s config.time_of_day matches 1 run return run function everytick:trigger_commands/config.time_of_day/show_dialog

# Set preset time of day
execute if score @s config.time_of_day matches 2..6 run return run function everytick:trigger_commands/config.time_of_day/preset

# Set custom time of day
execute if score @s config.time_of_day matches 999.. run return run function everytick:trigger_commands/config.time_of_day/custom

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
