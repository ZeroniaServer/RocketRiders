execute unless entity @a[limit=1,scores={dev_action=1}] run return run function dev:action_interrupted

scoreboard players set $alternate_teams var 0
execute as @a[x=0] store result score @s var run scoreboard players add $alternate_teams var 1
execute if score @a[limit=1,x=0,scores={dev_action=1}] var matches 1 run scoreboard players add @a[x=0] var 1
scoreboard players operation @a[x=0] var %= $2 constant

scoreboard players add @a dev_action 0
execute in minecraft:overworld run tp @a[x=0] -82.5 202.0 78.5
execute in minecraft:overworld run tp @a[x=0,scores={var=0}] -79.5 205.0 62.5
execute in minecraft:overworld run tp @a[x=0,scores={var=1}] -79.5 205.0 94.5
schedule function dev:_launch_game_mode_/step_5 2t
