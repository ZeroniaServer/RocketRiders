scoreboard players reset @a[predicate=!custom:indimension] dev
scoreboard players reset @a[scores={dev=..-1}] dev
execute as @a[x=0,scores={dev=1..}] unless score @s confirmed_dev matches 1 run function custom:show_dialog {dialog:"dev:confirm_dev"}
execute as @a[x=0,scores={dev=1..}] unless score @s confirmed_dev matches 1 run scoreboard players reset @s dev

execute as @a[x=0,scores={dev=1}] run function custom:show_dialog {dialog:"dev:quick_actions"}
execute as @a[x=0,scores={dev=2}] run function dev:action/force_stop
execute as @a[x=0,scores={dev=3}] run function dev:action/force_start
execute as @a[x=0,scores={dev=4}] run function dev:action/join_or_leave
execute as @a[x=0,scores={dev=5}] run function game:gamemode_components_ui/show_dialog
execute as @a[x=0,scores={dev=6}] run function dev:action/switch_team
execute as @a[x=0,scores={dev=7}] run function servermode:default
execute as @a[x=0,scores={dev=8}] run function servermode:enabled
execute as @a[x=0,scores={dev=9}] run function servermode:realms
execute as @a[x=0,scores={dev=10}] run function servermode:enabledduel
execute as @a[x=0,scores={dev=11}] run function servermode:enabledcustom
execute as @a[x=0,scores={dev=12}] run function dev:action/toggle_dev_mode
execute as @a[x=0,scores={dev=13}] run function dev:action/run_update_function
execute as @a[x=0,scores={dev=100..199}] run function dev:action/launch_game_mode
execute as @a[x=0,scores={dev=200..299}] run function dev:action/feature_flag

execute as @a[x=0,scores={dev=1..}] run scoreboard players reset @s dev
scoreboard players enable @a[predicate=custom:indimension] dev
