##Sub-RNG for Missiles
#Choose between each category
execute unless predicate game:item_pool_meta/all_heavy_missiles_disabled if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAllHeavy] run summon marker 0 0 0 {Tags:["rngHeavy","rng2"]}
execute unless predicate game:item_pool_meta/all_normal_missiles_disabled if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAllNormal] run summon marker 0 0 0 {Tags:["rngNormal","rng2"]}
execute unless predicate game:item_pool_meta/all_lightning_missiles_disabled if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAllLightning] run summon marker 0 0 0 {Tags:["rngLightning","rng2"]}
execute if predicate game:modifiers/special_treatment/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAllSpecial] run summon marker 0 0 0 {Tags:["rngSpecial","rng2"]}

#Select category and run appropriate sub-sub-RNG function
tag @e[x=0,type=marker,tag=rng2,sort=random,limit=1] add rngSelected
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHeavy] run function items:missile/heavy/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNormal] run function items:missile/normal/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLightning] run function items:missile/lightning/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSpecial] run function items:missile/special/rng
kill @e[x=0,type=marker,tag=rng2]