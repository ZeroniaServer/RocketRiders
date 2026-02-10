execute unless predicate game:phase/match run return 0

execute if predicate game:item_pool/shield as @e[x=0,type=area_effect_cloud,predicate=entities:type/shield_projectile/brain] at @s run function entities:type/shield_projectile/tick
