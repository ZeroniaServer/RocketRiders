##Sub-sub-RNG for Knight Missiles
#Choose between each missile based on Tetris state
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!givenCita] run summon marker 0 0 0 {Tags:["rngCitadel","crusadeRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!givenJbust] run summon marker 0 0 0 {Tags:["rngJbuster","crusadeRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","crusadeRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","crusadeRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!givenBlade] run summon marker 0 0 0 {Tags:["rngBlade","crusadeRNG"]}

#Select a missile and run appropriate give function
tag @e[predicate=custom:indimension,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngCitadel] as @e[predicate=custom:indimension,type=item] if data entity @s {Item:{id:"minecraft:wandering_trader_spawn_egg"}} run function items:deduct
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngJbuster] as @e[predicate=custom:indimension,type=item] if data entity @s {Item:{id:"minecraft:zombie_horse_spawn_egg"}} run function items:deduct
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngWar] as @e[predicate=custom:indimension,type=item] if data entity @s {Item:{id:"minecraft:silverfish_spawn_egg"}} run function items:deduct
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngAux] as @e[predicate=custom:indimension,type=item] if data entity @s {Item:{id:"minecraft:mooshroom_spawn_egg"}} run function items:deduct
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngBlade] as @e[predicate=custom:indimension,type=item] if data entity @s {Item:{id:"minecraft:husk_spawn_egg"}} run function items:deduct

function items:full_hotbar

execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngCitadel] as @a[predicate=custom:indimension,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecitadel
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngJbuster] as @a[predicate=custom:indimension,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givejbuster
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngWar] as @a[predicate=custom:indimension,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givewar
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngAux] as @a[predicate=custom:indimension,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giveaux
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngBlade] as @a[predicate=custom:indimension,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveblade
kill @e[predicate=custom:indimension,type=marker,tag=crusadeRNG]