##Sub-RNG for Mage Utility Items
#Choose between each item based on Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenFireball] run summon marker 0 0 0 {Tags:["rngFireball","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenVortex] run summon marker 0 0 0 {Tags:["rngVortex","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenNova] run summon marker 0 0 0 {Tags:["rngNova","crusadeRNG"]}

#Select item and run appropriate give function
tag @e[type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

execute as @e[type=marker,tag=rngSelected,tag=rngFireball] as @a[scores={crusadekit=3}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givefireball
execute as @e[type=marker,tag=rngSelected,tag=rngVortex] as @a[scores={crusadekit=3}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givevortex
execute as @e[type=marker,tag=rngSelected,tag=rngNova] as @a[scores={crusadekit=3}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givenova
kill @e[type=marker,tag=crusadeRNG]