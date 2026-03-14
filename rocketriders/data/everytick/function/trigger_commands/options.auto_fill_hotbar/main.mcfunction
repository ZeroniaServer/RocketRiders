# Default to toggle
execute if score @s options.auto_fill_hotbar matches 1 run tellraw @s "Toggling automatic hotbar filling..."
execute if score @s options.auto_fill_hotbar matches 1 unless entity @s[tag=do_hotbar_auto_fill] run scoreboard players set @s options.auto_fill_hotbar 1001
execute if score @s options.auto_fill_hotbar matches 1 if entity @s[tag=do_hotbar_auto_fill] run scoreboard players set @s options.auto_fill_hotbar 1002

# Enable tips
execute if score @s options.auto_fill_hotbar matches 1001 run return run function everytick:trigger_commands/options.auto_fill_hotbar/enable

# Disable tips
execute if score @s options.auto_fill_hotbar matches 1002 run return run function everytick:trigger_commands/options.auto_fill_hotbar/disable

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
