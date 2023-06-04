##Sub-sub-RNG for Archer Missiles
#Choose between each missile based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenGemi] run summon marker 0 0 0 {Tags:["rngGemi","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenSlash] run summon marker 0 0 0 {Tags:["rngSlash","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenBolt] run summon marker 0 0 0 {Tags:["rngThun","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenHur] run summon marker 0 0 0 {Tags:["rngHur","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","crusadeRNG"]}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngGemi] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:fox_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngSlash] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:shulker_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngThun] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:vex_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngHur] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:drowned_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:magma_cube_spawn_egg"}} run function items:deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngGemi] as @a[x=0,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givegemi
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlash] as @a[x=0,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveslash
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngThun] as @a[x=0,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/lightning/givethun
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHur] as @a[x=0,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/lightning/givehur
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @a[x=0,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/givebroad
kill @e[x=0,type=marker,tag=crusadeRNG]