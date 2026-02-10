execute unless predicate game:phase/match run return 0

execute if predicate game:item_pool/canopy as @e[x=0,type=area_effect_cloud,predicate=entities:type/canopy_projectile/brain] at @s run function entities:type/canopy_projectile/tick
