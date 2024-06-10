execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngVortex,tag=!givenICBM] run summon marker 0 0 0 {Tags:["rngICBM","swapRNGD"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngShield,tag=!givenShield] run summon marker 0 0 0 {Tags:["rngShield","swapRNGD"]}
tag @e[x=0,type=marker,tag=swapRNGD,sort=random,limit=1] add SelectedSwapRNG2

execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngFireball,tag=!givenFireball] run summon marker 0 0 0 {Tags:["rngFireball","swapRNGL"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngObshield,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","swapRNGL"]}
tag @e[x=0,type=marker,tag=swapRNGL,sort=random,limit=1] add SelectedSwapRNG2

#arrows considered separate
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngArrows,tag=!givenArrows] run summon marker 0 0 0 {Tags:["rngArrows","SelectedSwapRNG2"]}
tag @e[x=0,type=marker,tag=SelectedSwapRNG2,sort=random,limit=1] add SelectedSwapRNG3
execute as @e[x=0,type=marker,tag=SelectedSwapRNG3,tag=rngArrows] run tag @e[x=0,type=marker,tag=swapRNGD] remove SelectedSwapRNG2
execute as @e[x=0,type=marker,tag=SelectedSwapRNG3,tag=rngArrows] run tag @e[x=0,type=marker,tag=swapRNGL] remove SelectedSwapRNG2

#> Kill items to prevent duplication glitches
execute if score SwapSide swapside matches 1 unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/darkblueantidropdupe
execute if score SwapSide swapside matches 0 unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=SelectedSwapRNG2] run function rr_swap:items/lightblueantidropdupe

execute if score SwapSide swapside matches 1 as @e[x=0,type=marker,tag=SelectedSwapRNG2,tag=!rngArrows] run function rr_swap:items/darkblueitems
execute if score SwapSide swapside matches 0 as @e[x=0,type=marker,tag=SelectedSwapRNG2,tag=!rngArrows] run function rr_swap:items/lightblueitems
execute as @e[x=0,type=marker,tag=SelectedSwapRNG3,tag=rngArrows] as @e[x=0,type=item] if items entity @s contents arrow run function items:deduct
execute as @e[x=0,type=marker,tag=SelectedSwapRNG3,tag=rngArrows] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run function items:util/givearrows

kill @e[x=0,type=marker,tag=swapRNGD]
kill @e[x=0,type=marker,tag=swapRNGL]
kill @e[x=0,type=marker,tag=SelectedSwapRNG2]