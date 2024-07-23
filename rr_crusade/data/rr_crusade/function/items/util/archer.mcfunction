##Sub-RNG for Archer Utility Items
#Choose between each item based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenArrows] run summon marker 0 0 0 {Tags:["rngArrows","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenCanopy] run summon marker 0 0 0 {Tags:["rngCanopy","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenSplash] run summon marker 0 0 0 {Tags:["rngSplash","crusadeRNG"]}

#Select item and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngArrows] as @a[x=0,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givearrows
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCanopy] as @a[x=0,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSplash] as @a[x=0,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givesplash
kill @e[x=0,type=marker,tag=crusadeRNG]