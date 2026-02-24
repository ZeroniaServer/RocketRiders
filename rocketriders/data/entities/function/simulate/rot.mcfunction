execute unless predicate game:phase/match run return 0

execute if predicate game:modifiers/rotting/on as @e[sort=random,x=0,type=#entities:rot_brain_entity_type,predicate=entities:type/rot/brain] at @s run function entities:type/rot/tick
