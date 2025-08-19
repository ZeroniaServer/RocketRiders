execute unless entity @a[limit=1,scores={dev_action=1}] run return run function dev:action_interrupted

execute in minecraft:overworld positioned -68.5 190.5 78.5 as @a[limit=1,scores={dev_action=1}] run function arenaclear:testvalidclear
schedule function dev:_launch_game_mode_/step_4 2t
