execute if predicate game:phase/match/play/battle run return 1
execute unless entity @s[type=armor_stand,tag=Selection,predicate=custom:indimension] in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function game:set_phase/match.play.battle
execute if score $transitioning_phase global matches 1 run return run tellraw @a {color:"red",text:"Attempted to transition phase, but another phase transition has not completed yet"}
scoreboard players set $transitioning_phase global 1

## Transition
execute unless predicate game:phase/match run function game:set_phase/__exit/game
execute if predicate game:phase/match unless predicate game:phase/match/play run function game:set_phase/__exit/game/match
execute if predicate game:phase/match/play unless predicate game:phase/match/play/battle run function game:set_phase/__exit/game/match/play

execute if predicate game:phase/match/play run return run execute if function game:set_phase/__set/match.play.battle if function game:set_phase/__finish_transition run function game:on_phase_start/match/play/battle
execute if predicate game:phase/match run return run execute if function game:set_phase/__set/match.play.battle if function game:set_phase/__enter/match/play if function game:set_phase/__finish_transition run function game:on_phase_start/match/play/battle
return run execute if function game:set_phase/__set/match.play.battle if function game:set_phase/__enter/match if function game:set_phase/__enter/match/play if function game:set_phase/__finish_transition run function game:on_phase_start/match/play/battle
