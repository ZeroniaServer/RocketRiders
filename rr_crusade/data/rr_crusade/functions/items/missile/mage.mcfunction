##Sub-sub-RNG for Mage Missiles
#Choose between each missile based on Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenAnt] run summon marker 0 0 0 {Tags:["rngAnt","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenToma] run summon marker 0 0 0 {Tags:["rngToma","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenCata] run summon marker 0 0 0 {Tags:["rngCata","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenLift] run summon marker 0 0 0 {Tags:["rngLift","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenNull] run summon marker 0 0 0 {Tags:["rngNull","crusadeRNG"]}

#Select a missile and run appropriate give function
tag @e[type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

function items:full_hotbar

execute as @e[type=marker,tag=rngSelected,tag=rngAnt] as @a[scores={crusadekit=3}] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveant
execute as @e[type=marker,tag=rngSelected,tag=rngToma] as @a[scores={crusadekit=3}] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givetoma
execute as @e[type=marker,tag=rngSelected,tag=rngCata] as @a[scores={crusadekit=3}] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecata
execute as @e[type=marker,tag=rngSelected,tag=rngLift] as @a[scores={crusadekit=3}] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givelift
execute as @e[type=marker,tag=rngSelected,tag=rngNull] as @a[scores={crusadekit=3}] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givenull
kill @e[type=marker,tag=crusadeRNG]