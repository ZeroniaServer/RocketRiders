execute unless predicate game:phase/match run return 0

execute if predicate game:item_pool/nova_rocket as @e[x=0,type=area_effect_cloud,predicate=entities:type/nova_attach/brain] at @s run function entities:type/nova_attach/tick
