# Default to dialog
execute if score @s config.item_delay matches 1 run return run function everytick:trigger_commands/config.item_delay/show_dialog

# Set custom time of day
execute if score @s config.item_delay matches 999.. run return run function everytick:trigger_commands/config.item_delay/set

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
