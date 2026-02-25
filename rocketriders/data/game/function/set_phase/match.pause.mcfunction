execute if predicate game:phase/match/pause run return 1
execute unless entity @s[type=armor_stand,tag=Selection,predicate=custom:indimension] in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function game:set_phase/match.pause
execute if score $transitioning_phase global matches 1 run return run tellraw @a {color:"red",text:"Attempted to transition phase, but another phase transition has not completed yet"}
scoreboard players set $transitioning_phase global 1

## Transition
function game:set_phase/__reset
scoreboard players set $phase/game global 1
scoreboard players set $phase/game.match global 1

execute unless predicate game:phase_last/match run function game:set_phase/__exit/game
execute if predicate game:phase_last/match unless predicate game:phase_last/match/pause run function game:set_phase/__exit/game/match

execute if predicate game:phase_last/match run return run execute if function game:set_phase/__finish_transition run function game:on_phase_start/match/pause
return run execute if function game:set_phase/__enter/match if function game:set_phase/__finish_transition run function game:on_phase_start/match/pause
