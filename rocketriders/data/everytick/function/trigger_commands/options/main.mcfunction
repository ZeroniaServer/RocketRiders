# Close dialog
execute if score @s options matches ..-1 run return run dialog clear @s

# "Leave Match" button
execute if score @s options matches 2 run return run function everytick:trigger_commands/options/leave_game

# "Reset All" achievements button
execute if score @s options matches 3 run return run function everytick:trigger_commands/options/reset_achievements

# Nav book dialogs
execute if score @s options matches 10000 run return run function everytick:trigger_commands/options/leave_game

# Save setting options
execute if score @s options matches 1000000000.. run return run function everytick:trigger_commands/options/save_options

# Show settings menu
function everytick:trigger_commands/options/show_dialog
