execute if entity @e[type=armor_stand,tag=Selection,tag=!givenBull] run summon marker 0 0 0 {Tags:["rngBull","swapRNGD"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenDuplex] run summon marker 0 0 0 {Tags:["rngDuplex","swapRNGD"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngAux,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","swapRNGD"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngWar,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","swapRNGD"]}
tag @e[type=marker,tag=swapRNGD,sort=random,limit=1] add SelectedSwapRNG2

execute if entity @e[type=armor_stand,tag=Selection,tag=!givenHyper] run summon marker 0 0 0 {Tags:["rngHyper","swapRNGL"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","swapRNGL"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngHur,tag=!givenHur] run summon marker 0 0 0 {Tags:["rngHur","swapRNGL"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngThun,tag=!givenBolt] run summon marker 0 0 0 {Tags:["rngThun","swapRNGL"]}
tag @e[type=marker,tag=swapRNGL,sort=random,limit=1] add SelectedSwapRNG2

#> Kill items to prevent duplication glitches
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/antidropdupe

execute if score SwapSide swapside matches 1 as @e[type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueitems
execute if score SwapSide swapside matches 0 as @e[type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueitems

kill @e[type=marker,tag=swapRNGD]
kill @e[type=marker,tag=swapRNGL]