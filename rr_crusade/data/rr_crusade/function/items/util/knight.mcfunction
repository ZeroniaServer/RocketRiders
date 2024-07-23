##Sub-RNG for Knight Utility Items
#Choose between each item based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenShield] run summon marker 0 0 0 {Tags:["rngShield","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenICBM] run summon marker 0 0 0 {Tags:["rngICBM","crusadeRNG"]}

#Select item and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngObshield] as @a[x=0,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveobshield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngShield] as @a[x=0,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveshield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngICBM] as @a[x=0,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveicbm
kill @e[x=0,type=marker,tag=crusadeRNG]