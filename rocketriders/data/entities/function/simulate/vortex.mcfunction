execute unless predicate game:phase/match run return 0

execute if predicate game:item_pool/vortex run scoreboard players remove @e[x=0,type=area_effect_cloud,predicate=entities:type/vortex/brain,scores={entity.vortex.fuse=1..}] entity.vortex.fuse 1
execute if predicate game:item_pool/vortex as @e[x=0,type=area_effect_cloud,predicate=entities:type/vortex/brain,sort=random] at @s run function entities:type/vortex/tick
execute if predicate game:item_pool/vortex as @e[x=0,type=snowball,predicate=entities:type/vortex_arm/brain] at @s run function entities:type/vortex_arm/tick
