##Sub-RNG for Archer Utility Items
#Choose between each item based on Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenArrows] run summon marker 0 0 0 {Tags:["rngArrows","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenCanopy] run summon marker 0 0 0 {Tags:["rngCanopy","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenSplash] run summon marker 0 0 0 {Tags:["rngSplash","crusadeRNG"]}

#Select item and run appropriate give function
tag @e[type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

execute as @e[type=marker,tag=rngSelected,tag=rngArrows] as @a[scores={crusadekit=2}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givearrows
execute as @e[type=marker,tag=rngSelected,tag=rngCanopy] as @a[scores={crusadekit=2}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute as @e[type=marker,tag=rngSelected,tag=rngSplash] as @a[scores={crusadekit=2}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givesplash
kill @e[type=marker,tag=crusadeRNG]