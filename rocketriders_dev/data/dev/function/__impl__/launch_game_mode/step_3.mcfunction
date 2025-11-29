execute unless entity @a[x=0,limit=1,scores={dev_action=1}] run return run function dev:action_interrupted

execute in minecraft:overworld positioned -68.5 190.5 78.5 as @a[limit=1,scores={dev_action=1}] run function arenaclear:testvalidclear
schedule function dev:__impl__/launch_game_mode/step_4 2t
