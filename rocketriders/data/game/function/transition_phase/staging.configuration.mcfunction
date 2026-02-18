execute if predicate game:phase/staging/configuration run return 1
execute if score $transitioning_phase global matches 1 run return run tellraw @a {color:"red",text:"Attempted to transition phase, but another phase transition has not completed yet"}
scoreboard players set $transitioning_phase global 1

## Transition
execute unless predicate game:phase/staging run function game:transition_phase/__exit/game
execute if predicate game:phase/staging unless predicate game:phase/staging/configuration run function game:transition_phase/__exit/game/staging

execute if predicate game:phase/staging run return run execute if function game:set_phase/staging.configuration if function game:transition_phase/__enter/staging/configuration run scoreboard players reset $transitioning_phase global
return run execute if function game:set_phase/staging.queue.waiting if function game:transition_phase/__enter/staging if function game:transition_phase/__enter/staging/configuration run scoreboard players reset $transitioning_phase global
