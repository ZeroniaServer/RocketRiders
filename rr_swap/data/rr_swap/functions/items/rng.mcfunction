execute if entity @s[tag=!givenAllHeavy,tag=!givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","swapRNG1"]}
execute if entity @s[tag=rngUtil,tag=!utilOff,tag=!givenAllDUtil,tag=!givenAllLUtil,tag=gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","swapRNG1"]}
tag @e[x=0,type=marker,tag=swapRNG1,sort=random,limit=1] add SelectedSwapRNG
execute as @e[x=0,type=marker,tag=SelectedSwapRNG,tag=rngMissile] run function rr_swap:items/missile/rng
execute as @e[x=0,type=marker,tag=SelectedSwapRNG,tag=rngUtil] run function rr_swap:items/util/rng
kill @e[x=0,type=marker,tag=swapRNG1]