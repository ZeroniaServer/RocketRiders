execute as @s[tag=!givenAllHeavy,tag=!givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","swapRNG1"]}
execute as @s[tag=rngUtil,tag=!utilOff,tag=!givenAllDUtil,tag=!givenAllLUtil,tag=gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","swapRNG1"]}
tag @e[tag=swapRNG1,sort=random,limit=1,type=marker] add SelectedSwapRNG
execute as @e[tag=SelectedSwapRNG,tag=rngMissile,type=marker] run function rr_swap:items/missile/rng
execute as @e[tag=SelectedSwapRNG,tag=rngUtil,type=marker] run function rr_swap:items/util/rng
kill @e[tag=swapRNG1,type=marker]