execute if score $performing_dev_action dev_action matches 1 run tellraw @s {color:"red",text:"A dev action is already being performed"}
execute if score $performing_dev_action dev_action matches 1 run return fail

execute unless predicate rr:has_modification_room run tellraw @s {color:"red",text:"You cannot use this action in server mode"}
execute unless predicate rr:has_modification_room run return fail

scoreboard players reset * dev_action
scoreboard players set $performing_dev_action dev_action 1
scoreboard players set @s dev_action 1

scoreboard players operation $set_game_mode dev_action = @s dev
scoreboard players remove $set_game_mode dev_action 100
execute unless score $set_game_mode dev_action matches 0..99 run scoreboard players reset * dev_action
execute unless score $set_game_mode dev_action matches 0..99 run return run tellraw @s {color:"red",text:"Invalid game mode"}

tellraw @a "Launching game..."

execute in minecraft:overworld run function game:forcestop
schedule function dev:_launch_game_mode_/step_2 3t
