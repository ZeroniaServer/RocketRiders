execute unless predicate game:phase/match run return 0

execute as @e[x=0,type=area_effect_cloud,predicate=entities:type/spell_emitter] at @s run function entities:type/spell_emitter/tick
