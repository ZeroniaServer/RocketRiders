##Sub-RNG for Missiles
#Choose between each category
execute unless predicate game:item_pool/__all_heavy_missiles_disabled if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAllHeavy] run summon marker 0 0 0 {Tags:["rngHeavy","rng2"],CustomName:"rngHeavy (Heavy Missiles)"}
execute unless predicate game:item_pool/__all_normal_missiles_disabled if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAllNormal] run summon marker 0 0 0 {Tags:["rngNormal","rng2"],CustomName:"rngNormal (Normal Missiles)"}
execute unless predicate game:item_pool/__all_lightning_missiles_disabled if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAllLightning] run summon marker 0 0 0 {Tags:["rngLightning","rng2"],CustomName:"rngLightning (Lightning Missiles)"}
execute if predicate game:modifiers/special_treatment/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAllSpecial] run summon marker 0 0 0 {Tags:["rngSpecial","rng2"],CustomName:"rngSpecial (Special Missiles)"}

#Select category and run appropriate sub-sub-RNG function
tag @e[x=0,type=marker,tag=rng2,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(items:missile/rng) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=rng2,tag=rngSelected]"}]}

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHeavy] run function items:item/missile/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNormal] run function items:item/missile/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLightning] run function items:item/missile/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSpecial] run function items:item/missile/rng
kill @e[x=0,type=marker,tag=rng2]
