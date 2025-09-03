execute as @a[scores={dev=..-1}] run scoreboard players reset @s dev
execute as @a[scores={dev=1..}] unless score @s confirmed_dev matches 1 run dialog show @s dev:confirm_dev
execute as @a[scores={dev=1..}] unless score @s confirmed_dev matches 1 run scoreboard players reset @s dev

execute as @a[scores={dev=1}] run dialog show @s dev:quick_actions
execute as @a[scores={dev=2}] run function dev:action/force_stop
execute as @a[scores={dev=3}] run function dev:action/force_start
execute as @a[scores={dev=4}] run function dev:action/join_or_leave
execute as @a[scores={dev=100..199}] run function dev:action/launch_game_mode

execute as @a[scores={dev=1..}] run scoreboard players reset @s dev
scoreboard players enable @a dev
