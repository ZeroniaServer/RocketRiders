execute if predicate game:phase/match/over/tie_window run return 1
execute unless entity @s[type=armor_stand,tag=Selection,predicate=custom:indimension] in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function game:transition_phase/match.over.tie_window
execute if score $transitioning_phase global matches 1 run return run tellraw @a {color:"red",text:"Attempted to transition phase, but another phase transition has not completed yet"}
scoreboard players set $transitioning_phase global 1

## Transition
execute unless predicate game:phase/match run function game:transition_phase/__exit/game
execute if predicate game:phase/match unless predicate game:phase/match/over run function game:transition_phase/__exit/game/match
execute if predicate game:phase/match/over unless predicate game:phase/match/over/tie_window run function game:transition_phase/__exit/game/match/over

execute if predicate game:phase/match/over run return run execute if function game:set_phase/match.over.tie_window if function game:transition_phase/__enter/match/over/tie_window run scoreboard players reset $transitioning_phase global
execute if predicate game:phase/match run return run execute if function game:set_phase/match.over.tie_window if function game:transition_phase/__enter/match/over if function game:transition_phase/__enter/match/over/tie_window run scoreboard players reset $transitioning_phase global
return run execute if function game:set_phase/match.over.tie_window if function game:transition_phase/__enter/match if function game:transition_phase/__enter/match/over if function game:transition_phase/__enter/match/over/tie_window run scoreboard players reset $transitioning_phase global
