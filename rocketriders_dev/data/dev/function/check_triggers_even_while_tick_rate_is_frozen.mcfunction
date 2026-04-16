advancement revoke @s only dev:check_triggers_even_while_tick_rate_is_frozen

execute unless dimension minecraft:overworld run return run scoreboard players reset @s dev

scoreboard players reset @s[scores={dev=..-1}] dev
execute if score @s dev matches 1.. unless score @s confirmed_dev matches 1 run function custom:player/show_dialog {dialog:"dev:confirm_dev"}
execute if score @s dev matches 1.. unless score @s confirmed_dev matches 1 run scoreboard players reset @s dev

execute if score @s dev matches 1 at @s run function custom:player/show_dialog {dialog:"dev:quick_actions"}
execute if score @s dev matches 2 at @s run function dev:action/force_stop
execute if score @s dev matches 3 at @s run function dev:action/force_start
execute if score @s dev matches 4 at @s run function dev:action/join_or_leave
execute if score @s dev matches 5 at @s run function game:match_components_ui/show_dialog
#execute if score @s dev matches 6 at @s run dialog show @s dev:quick_actions/switch_team
execute if score @s dev matches 7 at @s run function servermode:default
execute if score @s dev matches 8 at @s run function servermode:enabled
execute if score @s dev matches 9 at @s run function servermode:realms
execute if score @s dev matches 10 at @s run function servermode:enabledduel
execute if score @s dev matches 11 at @s run function servermode:enabledcustom
execute if score @s dev matches 12 at @s run function dev:action/toggle_dev_mode
execute if score @s dev matches 13 at @s run function dev:action/run_update_function
execute if score @s dev matches 14 at @s run function dev:action/join_blue_team
execute if score @s dev matches 15 at @s run function dev:action/join_yellow_team
execute if score @s dev matches 16 at @s run function dev:action/join_spectator_team
execute if score @s dev matches 17 at @s run function dev:action/join_lobby
execute if score @s dev matches 100..199 at @s run function dev:action/launch_game_mode
execute if score @s dev matches 200..299 at @s run function dev:action/feature_flag

scoreboard players reset @s dev
scoreboard players enable @s dev
