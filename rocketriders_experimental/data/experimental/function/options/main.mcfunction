# Leave Game Button
execute if score @s options matches 101 run return run function experimental:options/leave_game

# Show Menu
execute unless score @s options matches 1000000000.. run return run function experimental:options/show_dialog

# Set Options
execute store result score $parkour_tips var run scoreboard players operation $tips var = @s options
scoreboard players operation $tips var %= $10 constant
execute if score $tips var matches 0 run tag @s add hideTips
execute if score $tips var matches 1 run tag @s remove hideTips

execute store result score $particles var run scoreboard players operation $parkour_tips var /= $10 constant
scoreboard players operation $parkour_tips var %= $10 constant
execute if score $parkour_tips var matches 0 run tag @s add hideParkourTips
execute if score $parkour_tips var matches 1 run tag @s remove hideParkourTips

execute store result score $do_hotbar_auto_fill var run scoreboard players operation $particles var /= $10 constant
scoreboard players operation $particles var %= $10 constant
execute if score $particles var matches 0 run tag @s add hideParticles
execute if score $particles var matches 1 run tag @s remove hideParticles

scoreboard players operation $do_hotbar_auto_fill var /= $10 constant
scoreboard players operation $do_hotbar_auto_fill var %= $10 constant
execute if score $do_hotbar_auto_fill var matches 0 run tag @s remove do_hotbar_auto_fill
execute if score $do_hotbar_auto_fill var matches 1 run tag @s add do_hotbar_auto_fill

# Save Options
function custom:player_action/playerdata/save
