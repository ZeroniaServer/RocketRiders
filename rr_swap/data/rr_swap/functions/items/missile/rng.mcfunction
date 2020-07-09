execute if entity @e[tag=Selection,tag=!givenBull,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBull","swapRNGD"]}
execute if entity @e[tag=Selection,tag=!givenDuplex,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngDuplex","swapRNGD"]}
execute if entity @e[tag=Selection,tag=rngAux,tag=!givenAux,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngAux","swapRNGD"]}
execute if entity @e[tag=Selection,tag=rngWar,tag=!givenWar,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngWar","swapRNGD"]}
tag @e[tag=swapRNGD,sort=random,limit=1,type=area_effect_cloud] add SelectedSwapRNG2

execute if entity @e[tag=Selection,tag=!givenHyper,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHyper","swapRNGL"]}
execute if entity @e[tag=Selection,tag=!givenBroad,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBroad","swapRNGL"]}
execute if entity @e[tag=Selection,tag=rngHur,tag=!givenHur,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHur","swapRNGL"]}
execute if entity @e[tag=Selection,tag=rngThun,tag=!givenBolt,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngThun","swapRNGL"]}
tag @e[tag=swapRNGL,sort=random,limit=1,type=area_effect_cloud] add SelectedSwapRNG2

execute if score SwapSide swapside matches 1 as @e[tag=SelectedSwapRNG2,type=area_effect_cloud] run function rr_swap:items/darkblueitems
execute if score SwapSide swapside matches 0 as @e[tag=SelectedSwapRNG2,type=area_effect_cloud] run function rr_swap:items/lightblueitems