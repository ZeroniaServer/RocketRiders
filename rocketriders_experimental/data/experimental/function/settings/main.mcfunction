# "Leave Match" button
execute if score @s settings matches 101 run return run function experimental:settings/leave_game

# "Reset All" achievements button
execute if score @s settings matches 102 if predicate rr:has_achievements run return run function experimental:settings/reset_achievements

# "Info" button
execute if score @s settings matches 103 run return run function experimental:settings/info

# Save setting options
execute if score @s settings matches 1000000000.. run return run function experimental:settings/save_options

# Show settings menu
function experimental:settings/show_dialog
