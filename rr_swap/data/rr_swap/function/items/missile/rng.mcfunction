execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBull] run summon marker 0 0 0 {Tags:["rngBull","swapRNGD"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenDuplex] run summon marker 0 0 0 {Tags:["rngDuplex","swapRNGD"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngAux,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","swapRNGD"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngWar,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","swapRNGD"]}
tag @e[x=0,type=marker,tag=swapRNGD,sort=random,limit=1] add SelectedSwapRNG2

execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenHyper] run summon marker 0 0 0 {Tags:["rngHyper","swapRNGL"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","swapRNGL"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngHur,tag=!givenHur] run summon marker 0 0 0 {Tags:["rngHur","swapRNGL"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngThun,tag=!givenBolt] run summon marker 0 0 0 {Tags:["rngThun","swapRNGL"]}
tag @e[x=0,type=marker,tag=swapRNGL,sort=random,limit=1] add SelectedSwapRNG2

#> Kill items to prevent duplication glitches
execute if score SwapSide swapside matches 1 unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueantidropdupe
execute if score SwapSide swapside matches 0 unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueantidropdupe

execute if score SwapSide swapside matches 1 as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueitems
execute if score SwapSide swapside matches 0 as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueitems

kill @e[x=0,type=marker,tag=swapRNGD]
kill @e[x=0,type=marker,tag=swapRNGL]