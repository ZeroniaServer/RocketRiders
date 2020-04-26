summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG1","swapRNG"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG2","swapRNG"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG3","swapRNG"],Duration:1}
#summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG4","swapRNG"],Duration:1}
#summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG5","swapRNG"],Duration:1}
#summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG6","swapRNG"],Duration:1}
#summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG7","swapRNG"],Duration:1}
#summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG8","swapRNG"],Duration:1}
#summon area_effect_cloud ~ ~ ~ {Tags:["swapRNG9","swapRNG"],Duration:1}


tag @e[tag=swapRNG,sort=random,limit=1] add SelectedSwapRNG



execute if score SwapSide swapside matches 1 run function rr_swap:items/darkblueitems