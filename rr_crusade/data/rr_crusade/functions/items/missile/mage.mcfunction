##Sub-sub-RNG for Mage Missiles
#Choose between each missile based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenAnt] run summon marker 0 0 0 {Tags:["rngAnt","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenToma] run summon marker 0 0 0 {Tags:["rngToma","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenCata] run summon marker 0 0 0 {Tags:["rngCata","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenLift] run summon marker 0 0 0 {Tags:["rngLift","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenNull] run summon marker 0 0 0 {Tags:["rngNull","crusadeRNG"]}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngAnt] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:bat_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngToma] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:creeper_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngCata] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:cave_spider_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngLift] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:dolphin_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngNull] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:phantom_spawn_egg"}} run function items:deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngAnt] as @a[x=0,scores={crusadekit=3},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveant
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngToma] as @a[x=0,scores={crusadekit=3},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givetoma
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCata] as @a[x=0,scores={crusadekit=3},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecata
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLift] as @a[x=0,scores={crusadekit=3},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givelift
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNull] as @a[x=0,scores={crusadekit=3},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givenull
kill @e[x=0,type=marker,tag=crusadeRNG]