execute unless entity @a[limit=1,scores={dev_action=1}] run return run function dev:action_interrupted

execute in minecraft:overworld run tp @a[limit=1,scores={dev_action=1}] -65.65 190.00 78.52 90.00 16.80

execute unless score $set_game_mode dev_action matches 0 in minecraft:overworld run scoreboard players operation @n[limit=1,x=0,type=armor_stand,tag=Selection] SetGamemode = $set_game_mode dev_action
execute in minecraft:overworld run scoreboard players add @n[limit=1,x=0,type=armor_stand,tag=Selection] refreshsigns 1
schedule function dev:_launch_game_mode_/step_3 2t
