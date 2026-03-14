# Default to toggle
execute if score @s options.parkour_instructions matches 1 run tellraw @s "Toggling parkour instructions..."
execute if score @s options.parkour_instructions matches 1 if entity @s[tag=hideParkourTips] run scoreboard players set @s options.parkour_instructions 1001
execute if score @s options.parkour_instructions matches 1 unless entity @s[tag=hideParkourTips] run scoreboard players set @s options.parkour_instructions 1002

# Enable tips
execute if score @s options.parkour_instructions matches 1001 run return run function everytick:trigger_commands/options.parkour_instructions/enable

# Disable tips
execute if score @s options.parkour_instructions matches 1002 run return run function everytick:trigger_commands/options.parkour_instructions/disable

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
