# "Leave Match" button
execute if score @s settings matches 101 run return run function experimental:settings/leave_game

# "Reset All" achievements button
execute if score @s settings matches 102 run return run function experimental:settings/reset_achievements

# Save setting options
execute if score @s settings matches 1000000000.. run return run function experimental:settings/save_options

# Show settings menu
function experimental:settings/show_dialog
