execute if predicate game:phase/staging/configuration run return 1
execute unless entity @s[type=armor_stand,tag=Selection,predicate=custom:in_overworld] in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function game:set_phase/staging.configuration
execute if score $transitioning_phase global matches 1 run return run tellraw @a {color:"red",text:"Attempted to transition phase, but another phase transition has not completed yet"}
scoreboard players set $transitioning_phase global 1

## Transition
function game:set_phase/__reset
scoreboard players set $phase/game global 0
scoreboard players set $phase/game.staging global 0

execute unless predicate game:phase_last/staging run function game:set_phase/__exit/game
execute if predicate game:phase_last/staging unless predicate game:phase_last/staging/configuration run function game:set_phase/__exit/game/staging

execute if predicate game:phase_last/staging run return run execute if function game:set_phase/__finish_transition run function game:on_phase_start/staging/configuration
return run execute if function game:set_phase/__enter/staging if function game:set_phase/__finish_transition run function game:on_phase_start/staging/configuration
