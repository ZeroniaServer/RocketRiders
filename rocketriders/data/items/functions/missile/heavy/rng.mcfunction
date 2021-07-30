##Sub-sub-RNG for Heavy Missiles
#Choose between each missile based on enabled status and Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=rngAux,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","rng3"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngRift,tag=!givenRift] run summon marker 0 0 0 {Tags:["rngRift","rng3"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngJbuster,tag=!givenJbust] run summon marker 0 0 0 {Tags:["rngJbuster","rng3"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngWar,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","rng3"]}

#Select a missile and run appropriate give function
tag @e[type=marker,tag=rng3,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=rngSelected,tag=rngAux] as @e[type=item] if data entity @s {Item:{id:"minecraft:mooshroom_spawn_egg"}} run function items:deduct
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=rngSelected,tag=rngRift] as @e[type=item] if data entity @s {Item:{id:"minecraft:salmon_spawn_egg"}} run function items:deduct
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=rngSelected,tag=rngJbuster] as @e[type=item] if data entity @s {Item:{id:"minecraft:zombie_horse_spawn_egg"}} run function items:deduct
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=rngSelected,tag=rngWar] as @e[type=item] if data entity @s {Item:{id:"minecraft:silverfish_spawn_egg"}} run function items:deduct

execute as @e[type=marker,tag=rngSelected,tag=rngAux] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giveaux
execute as @e[type=marker,tag=rngSelected,tag=rngRift] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giverift
execute as @e[type=marker,tag=rngSelected,tag=rngJbuster] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givejbuster
execute as @e[type=marker,tag=rngSelected,tag=rngWar] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givewar
kill @e[type=marker,tag=rng3]