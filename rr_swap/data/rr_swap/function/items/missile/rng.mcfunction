execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBull] run summon marker 0 0 0 {Tags:["rngBull","swapRNGD"],CustomName:"rngBull (Bullet)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenDuplex] run summon marker 0 0 0 {Tags:["rngDuplex","swapRNGD"],CustomName:"rngDuplex (Duplex)"}
execute if predicate game:item_pool/missile/auxiliary if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","swapRNGD"],CustomName:"rngAux (Auxiliary)"}
execute if predicate game:item_pool/missile/warhead if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","swapRNGD"],CustomName:"rngWar (Warhead)"}
tag @e[x=0,type=marker,tag=swapRNGD,sort=random,limit=1] add SelectedSwapRNG2
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_swap:items/missile/rng) Selected (Dark): ",{selector:"@e[limit=1,x=0,type=marker,tag=swapRNGD,tag=SelectedSwapRNG2]"}]}

execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenHyper] run summon marker 0 0 0 {Tags:["rngHyper","swapRNGL"],CustomName:"rngHyper (Hypersonic)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","swapRNGL"],CustomName:"rngBroad (Broadsword)"}
execute if predicate game:item_pool/missile/hurricane if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenHur] run summon marker 0 0 0 {Tags:["rngHur","swapRNGL"],CustomName:"rngHur (Hurricane)"}
execute if predicate game:item_pool/missile/thunderbolt if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBolt] run summon marker 0 0 0 {Tags:["rngThun","swapRNGL"],CustomName:"rngThun (Thunderbolt)"}
tag @e[x=0,type=marker,tag=swapRNGL,sort=random,limit=1] add SelectedSwapRNG2
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_swap:items/missile/rng) Selected (Light): ",{selector:"@e[limit=1,x=0,type=marker,tag=swapRNGL,tag=SelectedSwapRNG2]"}]}

#> Kill items to prevent duplication glitches
execute if predicate rr_swap:blue_team_is_dark unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueantidropdupe
execute if predicate rr_swap:blue_team_is_light unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueantidropdupe

execute if predicate rr_swap:blue_team_is_dark as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueitems
execute if predicate rr_swap:blue_team_is_light as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueitems

kill @e[x=0,type=marker,tag=swapRNGD]
kill @e[x=0,type=marker,tag=swapRNGL]