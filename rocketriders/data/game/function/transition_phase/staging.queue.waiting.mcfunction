execute if predicate game:phase/staging/queue/waiting run return 1
execute if score $transitioning_phase global matches 1 run return run tellraw @a {color:"red",text:"Attempted to transition phase, but another phase transition has not completed yet"}
scoreboard players set $transitioning_phase global 1

## Transition
execute unless predicate game:phase/staging run function game:transition_phase/__exit/game
execute if predicate game:phase/staging unless predicate game:phase/staging/queue run function game:transition_phase/__exit/game/staging
execute if predicate game:phase/staging/queue unless predicate game:phase/staging/queue/waiting run function game:transition_phase/__exit/game/staging/queue

execute if predicate game:phase/staging/queue run return run execute if function game:set_phase/staging.queue.waiting if function game:transition_phase/__enter/staging/queue/waiting run scoreboard players reset $transitioning_phase global
execute if predicate game:phase/staging run return run execute if function game:set_phase/staging.queue.waiting if function game:transition_phase/__enter/staging/queue if function game:transition_phase/__enter/staging/queue/waiting run scoreboard players reset $transitioning_phase global
return run execute if function game:set_phase/staging.queue.waiting if function game:transition_phase/__enter/staging if function game:transition_phase/__enter/staging/queue if function game:transition_phase/__enter/staging/queue/waiting run scoreboard players reset $transitioning_phase global
