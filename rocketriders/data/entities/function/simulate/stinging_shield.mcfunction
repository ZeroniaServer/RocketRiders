execute unless predicate game:phase/match run return 0

execute if predicate game:match_components/has_powerups as @e[x=0,type=area_effect_cloud,predicate=entities:type/stinging_shield] at @s run function entities:type/stinging_shield/tick
