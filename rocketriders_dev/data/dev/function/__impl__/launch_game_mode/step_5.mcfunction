execute unless entity @a[limit=1,scores={dev_action=1}] run return run function dev:action_interrupted

execute in minecraft:overworld run function game:forcestart

scoreboard players reset * dev_action
