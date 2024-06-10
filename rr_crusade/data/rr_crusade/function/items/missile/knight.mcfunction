##Sub-sub-RNG for Knight Missiles
#Choose between each missile based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenCita] run summon marker 0 0 0 {Tags:["rngCitadel","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenJbust] run summon marker 0 0 0 {Tags:["rngJbuster","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenBlade] run summon marker 0 0 0 {Tags:["rngBlade","crusadeRNG"]}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCitadel] as @a[x=0,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecitadel
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngJbuster] as @a[x=0,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givejbuster
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWar] as @a[x=0,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givewar
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngAux] as @a[x=0,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giveaux
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlade] as @a[x=0,scores={crusadekit=1},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveblade
kill @e[x=0,type=marker,tag=crusadeRNG]