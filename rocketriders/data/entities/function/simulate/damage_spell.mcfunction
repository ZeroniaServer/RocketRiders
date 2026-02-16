execute unless predicate game:phase/match run return 0

execute if predicate game:gamemode_components/has_spells as @e[x=0,type=area_effect_cloud,predicate=entities:type/damage_spell] at @s run function entities:type/damage_spell/tick
