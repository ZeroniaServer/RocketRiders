execute if predicate game:phase/staging/queue/waiting run return 1
execute unless entity @s[type=armor_stand,tag=Selection,predicate=custom:indimension] in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function game:set_phase/staging.queue.waiting
execute if score $transitioning_phase global matches 1 run return run tellraw @a {color:"red",text:"Attempted to transition phase, but another phase transition has not completed yet"}
scoreboard players set $transitioning_phase global 1

## Transition
function game:set_phase/__reset
scoreboard players set $phase/game global 0
scoreboard players set $phase/game.staging global 1
scoreboard players set $phase/game.staging.queue global 0

execute unless predicate game:phase_last/staging run function game:set_phase/__exit/game
execute if predicate game:phase_last/staging unless predicate game:phase_last/staging/queue run function game:set_phase/__exit/game/staging
execute if predicate game:phase_last/staging/queue unless predicate game:phase_last/staging/queue/waiting run function game:set_phase/__exit/game/staging/queue

execute if predicate game:phase_last/staging/queue run return run execute if function game:set_phase/__finish_transition run function game:on_phase_start/staging/queue/waiting
execute if predicate game:phase_last/staging run return run execute if function game:set_phase/__enter/staging/queue if function game:set_phase/__finish_transition run function game:on_phase_start/staging/queue/waiting
return run execute if function game:set_phase/__enter/staging if function game:set_phase/__enter/staging/queue if function game:set_phase/__finish_transition run function game:on_phase_start/staging/queue/waiting
