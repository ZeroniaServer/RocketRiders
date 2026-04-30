execute if predicate game:item_pool/icbm if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenICBM] run summon marker 0 0 0 {Tags:["rngICBM","swapRNGD"],CustomName:"rngICBM (ICBM)"}
execute if predicate game:item_pool/shield if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenShield] run summon marker 0 0 0 {Tags:["rngShield","swapRNGD"],CustomName:"rngShield (Shield)"}
tag @e[x=0,type=marker,tag=swapRNGD,sort=random,limit=1] add SelectedSwapRNG2
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_swap:items/util/rng) Selected (Dark): ",{selector:"@e[limit=1,x=0,type=marker,tag=swapRNGD,tag=SelectedSwapRNG2]"}]}

execute if predicate game:item_pool/fireball if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenFireball] run summon marker 0 0 0 {Tags:["rngFireball","swapRNGL"],CustomName:"rngFireball (Fireball)"}
execute if predicate game:item_pool/obsidian_shield if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","swapRNGL"],CustomName:"rngObshield (Obsidian Shield)"}
tag @e[x=0,type=marker,tag=swapRNGL,sort=random,limit=1] add SelectedSwapRNG2
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_swap:items/util/rng) Selected (Light): ",{selector:"@e[limit=1,x=0,type=marker,tag=swapRNGL,tag=SelectedSwapRNG2]"}]}

#arrows considered separate
execute if predicate game:item_pool/arrow if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenArrows] run summon marker 0 0 0 {Tags:["rngArrows","SelectedSwapRNG2"]}
tag @e[x=0,type=marker,tag=SelectedSwapRNG2,sort=random,limit=1] add SelectedSwapRNG3
execute as @e[x=0,type=marker,tag=SelectedSwapRNG3,tag=rngArrows] run tag @e[x=0,type=marker,tag=swapRNGD] remove SelectedSwapRNG2
execute as @e[x=0,type=marker,tag=SelectedSwapRNG3,tag=rngArrows] run tag @e[x=0,type=marker,tag=swapRNGL] remove SelectedSwapRNG2

#> Kill items to prevent duplication glitches
execute if predicate rr_swap:blue_team_is_dark unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueantidropdupe
execute if predicate rr_swap:blue_team_is_light unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueantidropdupe

execute if predicate rr_swap:blue_team_is_dark as @e[x=0,type=marker,tag=SelectedSwapRNG2,tag=!rngArrows] run function rr_swap:items/darkblueitems
execute if predicate rr_swap:blue_team_is_light as @e[x=0,type=marker,tag=SelectedSwapRNG2,tag=!rngArrows] run function rr_swap:items/lightblueitems
execute as @e[x=0,type=marker,tag=SelectedSwapRNG3,tag=rngArrows] as @e[x=0,type=item] if items entity @s contents arrow run function items:deduct
execute as @e[x=0,type=marker,tag=SelectedSwapRNG3,tag=rngArrows] as @a[x=0,predicate=custom:team/any_playing_team] run function items:item/givearrows

kill @e[x=0,type=marker,tag=swapRNGD]
kill @e[x=0,type=marker,tag=swapRNGL]
kill @e[x=0,type=marker,tag=SelectedSwapRNG2]