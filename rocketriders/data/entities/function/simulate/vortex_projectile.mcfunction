execute unless predicate game:phase/match run return 0

execute if predicate game:item_pool/vortex as @e[x=0,type=area_effect_cloud,predicate=entities:type/vortex_projectile/brain] at @s run function entities:type/vortex_projectile/tick
