#updating xp values
execute store result score @s xp_level run scoreboard players get @s XP
execute store result score @s xp_progress run scoreboard players get @s XP

#setting progress bar appropriately
# this is what you multiply xp_mod by to get 100 - 300 * 1 / 3
scoreboard players remove @s[scores={XP=101..}] xp_progress 100
scoreboard players operation @s xp_progress %= $300 constant
scoreboard players operation @s[scores={XP=101..}] xp_progress /= $3 constant

execute store result storage rocketriders:main rr_duel_update_xp_bar.level int 1 run scoreboard players get @s XP
execute store result storage rocketriders:main rr_duel_update_xp_bar.progress float 0.01 run scoreboard players get @s xp_progress
function custom:set_xp_bar with storage rocketriders:main rr_duel_update_xp_bar
