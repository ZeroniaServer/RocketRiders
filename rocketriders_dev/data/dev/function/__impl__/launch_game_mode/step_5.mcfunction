execute unless entity @a[x=0,limit=1,scores={dev_action=1}] run return run function dev:action_interrupted

execute as @a[x=0] run function custom:player/update_armor
execute in minecraft:overworld run function game:forcestart

scoreboard players reset * dev_action
