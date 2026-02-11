scoreboard players reset @a[predicate=!custom:indimension] dev
scoreboard players reset @a[scores={dev=..-1}] dev
execute as @a[x=0,scores={dev=1..}] unless score @s confirmed_dev matches 1 run function custom:show_dialog {dialog:"dev:confirm_dev"}
execute as @a[x=0,scores={dev=1..}] unless score @s confirmed_dev matches 1 run scoreboard players reset @s dev

execute as @a[x=0,scores={dev=1}] at @s run function custom:show_dialog {dialog:"dev:quick_actions"}
execute as @a[x=0,scores={dev=2}] at @s run function dev:action/force_stop
execute as @a[x=0,scores={dev=3}] at @s run function dev:action/force_start
execute as @a[x=0,scores={dev=4}] at @s run function dev:action/join_or_leave
execute as @a[x=0,scores={dev=5}] at @s run function game:gamemode_components_ui/show_dialog
#execute as @a[x=0,scores={dev=6}] at @s run dialog show @s dev:quick_actions/switch_team
execute as @a[x=0,scores={dev=7}] at @s run function servermode:default
execute as @a[x=0,scores={dev=8}] at @s run function servermode:enabled
execute as @a[x=0,scores={dev=9}] at @s run function servermode:realms
execute as @a[x=0,scores={dev=10}] at @s run function servermode:enabledduel
execute as @a[x=0,scores={dev=11}] at @s run function servermode:enabledcustom
execute as @a[x=0,scores={dev=12}] at @s run function dev:action/toggle_dev_mode
execute as @a[x=0,scores={dev=13}] at @s run function dev:action/run_update_function
execute as @a[x=0,scores={dev=14}] at @s run function dev:action/join_blue_team
execute as @a[x=0,scores={dev=15}] at @s run function dev:action/join_yellow_team
execute as @a[x=0,scores={dev=16}] at @s run function dev:action/join_spectator_team
execute as @a[x=0,scores={dev=17}] at @s run function dev:action/join_lobby
execute as @a[x=0,scores={dev=100..199}] at @s run function dev:action/launch_game_mode
execute as @a[x=0,scores={dev=200..299}] at @s run function dev:action/feature_flag

execute as @a[x=0,scores={dev=1..}] run scoreboard players reset @s dev
scoreboard players enable @a[predicate=custom:indimension] dev
