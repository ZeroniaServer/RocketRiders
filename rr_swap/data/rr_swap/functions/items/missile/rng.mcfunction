execute if entity @e[tag=Selection,tag=!givenBull] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBull","swapRNGD"]}
execute if entity @e[tag=Selection,tag=rngAux,tag=!givenAux] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngAux","swapRNGD"]}
execute if entity @e[tag=Selection,tag=rngWar,tag=!givenWar] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngWar","swapRNGD"]}
tag @e[tag=swapRNGD,sort=random,limit=1] add SelectedSwapRNG2

execute if entity @e[tag=Selection,tag=!givenHyper] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHyper","swapRNGL"]}
execute if entity @e[tag=Selection,tag=rngHur,tag=!givenHur] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHur","swapRNGL"]}
execute if entity @e[tag=Selection,tag=rngThun,tag=!givenBolt] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngThun","swapRNGL"]}
tag @e[tag=swapRNGL,sort=random,limit=1] add SelectedSwapRNG2

execute if score SwapSide swapside matches 1 as @e[tag=SelectedSwapRNG2] run function rr_swap:items/darkblueitems
execute if score SwapSide swapside matches 0 as @e[tag=SelectedSwapRNG2] run function rr_swap:items/lightblueitems