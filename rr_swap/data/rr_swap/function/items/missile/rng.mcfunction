execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBull] run summon marker 0 0 0 {Tags:["rngBull","swapRNGD"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenDuplex] run summon marker 0 0 0 {Tags:["rngDuplex","swapRNGD"]}
execute if predicate game:item_pool/missile/auxiliary if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","swapRNGD"]}
execute if predicate game:item_pool/missile/warhead if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","swapRNGD"]}
tag @e[x=0,type=marker,tag=swapRNGD,sort=random,limit=1] add SelectedSwapRNG2

execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenHyper] run summon marker 0 0 0 {Tags:["rngHyper","swapRNGL"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","swapRNGL"]}
execute if predicate game:item_pool/missile/hurricane if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenHur] run summon marker 0 0 0 {Tags:["rngHur","swapRNGL"]}
execute if predicate game:item_pool/missile/thunderbolt if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBolt] run summon marker 0 0 0 {Tags:["rngThun","swapRNGL"]}
tag @e[x=0,type=marker,tag=swapRNGL,sort=random,limit=1] add SelectedSwapRNG2

#> Kill items to prevent duplication glitches
execute if predicate rr_swap:blue_team_is_dark unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueantidropdupe
execute if predicate rr_swap:blue_team_is_light unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueantidropdupe

execute if predicate rr_swap:blue_team_is_dark as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueitems
execute if predicate rr_swap:blue_team_is_light as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueitems

kill @e[x=0,type=marker,tag=swapRNGD]
kill @e[x=0,type=marker,tag=swapRNGL]