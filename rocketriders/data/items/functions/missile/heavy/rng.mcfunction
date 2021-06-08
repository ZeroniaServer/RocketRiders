##Sub-sub-RNG for Heavy Missiles
#Choose between each missile based on enabled status and Tetris state
execute if entity @e[tag=Selection,tag=rngAux,tag=!givenAux,type=armor_stand] run summon marker 0 0 0 {Tags:["rngAux","rng3"]}
execute if entity @e[tag=Selection,tag=rngRift,tag=!givenRift,type=armor_stand] run summon marker 0 0 0 {Tags:["rngRift","rng3"]}
execute if entity @e[tag=Selection,tag=rngJbuster,tag=!givenJbust,type=armor_stand] run summon marker 0 0 0 {Tags:["rngJbuster","rng3"]}
execute if entity @e[tag=Selection,tag=rngWar,tag=!givenWar,type=armor_stand] run summon marker 0 0 0 {Tags:["rngWar","rng3"]}

#Select a missile and run appropriate give function
tag @e[tag=rng3,sort=random,limit=1,type=marker] add rngSelected
execute as @e[tag=rngSelected,tag=rngAux,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giveaux
execute as @e[tag=rngSelected,tag=rngRift,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giverift
execute as @e[tag=rngSelected,tag=rngJbuster,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givejbuster
execute as @e[tag=rngSelected,tag=rngWar,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givewar
kill @e[tag=rng3,type=marker]