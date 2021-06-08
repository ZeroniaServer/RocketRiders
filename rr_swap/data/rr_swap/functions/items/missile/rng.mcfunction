execute if entity @e[tag=Selection,tag=!givenBull,type=armor_stand] run summon marker 0 0 0 {Tags:["rngBull","swapRNGD"]}
execute if entity @e[tag=Selection,tag=!givenDuplex,type=armor_stand] run summon marker 0 0 0 {Tags:["rngDuplex","swapRNGD"]}
execute if entity @e[tag=Selection,tag=rngAux,tag=!givenAux,type=armor_stand] run summon marker 0 0 0 {Tags:["rngAux","swapRNGD"]}
execute if entity @e[tag=Selection,tag=rngWar,tag=!givenWar,type=armor_stand] run summon marker 0 0 0 {Tags:["rngWar","swapRNGD"]}
tag @e[tag=swapRNGD,sort=random,limit=1,type=marker] add SelectedSwapRNG2

execute if entity @e[tag=Selection,tag=!givenHyper,type=armor_stand] run summon marker 0 0 0 {Tags:["rngHyper","swapRNGL"]}
execute if entity @e[tag=Selection,tag=!givenBroad,type=armor_stand] run summon marker 0 0 0 {Tags:["rngBroad","swapRNGL"]}
execute if entity @e[tag=Selection,tag=rngHur,tag=!givenHur,type=armor_stand] run summon marker 0 0 0 {Tags:["rngHur","swapRNGL"]}
execute if entity @e[tag=Selection,tag=rngThun,tag=!givenBolt,type=armor_stand] run summon marker 0 0 0 {Tags:["rngThun","swapRNGL"]}
tag @e[tag=swapRNGL,sort=random,limit=1,type=marker] add SelectedSwapRNG2

execute if score SwapSide swapside matches 1 as @e[tag=SelectedSwapRNG2,type=marker] run function rr_swap:items/darkblueitems
execute if score SwapSide swapside matches 0 as @e[tag=SelectedSwapRNG2,type=marker] run function rr_swap:items/lightblueitems

kill @e[tag=swapRNGD,type=marker]
kill @e[tag=swapRNGL,type=marker]