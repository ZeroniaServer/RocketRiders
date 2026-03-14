# Default to toggle
execute if score @s options.tips matches 1 run tellraw @s "Toggling in-game tips..."
execute if score @s options.tips matches 1 if entity @s[tag=hideTips] run scoreboard players set @s options.tips 1001
execute if score @s options.tips matches 1 unless entity @s[tag=hideTips] run scoreboard players set @s options.tips 1002

# Enable tips
execute if score @s options.tips matches 1001 run return run function everytick:trigger_commands/options.tips/enable

# Disable tips
execute if score @s options.tips matches 1002 run return run function everytick:trigger_commands/options.tips/disable

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
