##Sub-RNG for Knight Utility Items
#Choose between each item based on Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenShield] run summon marker 0 0 0 {Tags:["rngShield","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenICBM] run summon marker 0 0 0 {Tags:["rngICBM","crusadeRNG"]}

#Select item and run appropriate give function
tag @e[type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

execute as @e[type=marker,tag=rngSelected,tag=rngObshield] as @a[scores={crusadekit=1}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveobshield
execute as @e[type=marker,tag=rngSelected,tag=rngShield] as @a[scores={crusadekit=1}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveshield
execute as @e[type=marker,tag=rngSelected,tag=rngICBM] as @a[scores={crusadekit=1}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveicbm
kill @e[type=marker,tag=crusadeRNG]