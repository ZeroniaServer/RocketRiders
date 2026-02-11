# "Leave Match" button
execute if score @s settings matches 101 run return run function experimental:settings/leave_game

# Save setting options
execute if score @s settings matches 1000000000.. run return run function experimental:settings/save_options

# Show settings menu
function experimental:settings/show_dialog
