#########################################
## RNG: The starting point for an item ##
## to be selected and given to players ##
#########################################

##Choose between Missile and Utility (Missile is always first item)
execute unless predicate game:modifiers/special_treatment/on unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute unless predicate game:modifiers/special_treatment/on unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if predicate game:modifiers/special_treatment/on unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if predicate game:modifiers/special_treatment/on unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute unless predicate game:item_pool_meta/all_utilities_disabled unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","rng1"]}

##Surprise Egg modifier - summons extra Missile/Utility AECs to make Surprise Eggs rarer
execute if predicate game:modifiers/surprise_eggs/on run summon marker 0 0 0 {Tags:["rngSurprise","rng1"]}
execute if predicate game:modifiers/surprise_eggs/on unless predicate game:modifiers/special_treatment/on unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if predicate game:modifiers/surprise_eggs/on if predicate game:modifiers/special_treatment/on unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=!givenAllSpecial] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if predicate game:modifiers/surprise_eggs/on unless predicate game:item_pool_meta/all_utilities_disabled unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","rng1"]}

##Select item and run appropriate sub-RNG function
tag @e[x=0,type=marker,tag=rng1,sort=random,limit=1] add rngSelected

execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(items:rng) Handing out items..."]}
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngMissile] run function items:missile/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngUtil] run function items:util/rng

##If Surprise Egg is picked
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] as @e[x=0,type=item] if items entity @s contents #custom:missile[custom_data~{spawn_egg:{type:"surprise_missile"}}] run function items:deduct

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] run function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] as @a[x=0,predicate=custom:team/blue,tag=getItem] run function items:surprise_blue/givesurpriseegg
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] as @a[x=0,predicate=custom:team/yellow,tag=getItem] run function items:surprise_yellow/givesurpriseegg
kill @e[x=0,type=marker,tag=rng1]