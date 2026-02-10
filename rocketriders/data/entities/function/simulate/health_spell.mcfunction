execute unless predicate game:phase/match run return 0

execute as @e[x=0,type=area_effect_cloud,predicate=entities:type/health_spell/brain] at @s run function entities:type/health_spell/tick
