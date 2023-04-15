##Sub-RNG for Archer Utility Items
#Choose between each item based on Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenArrows] run summon marker 0 0 0 {Tags:["rngArrows","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenCanopy] run summon marker 0 0 0 {Tags:["rngCanopy","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenSplash] run summon marker 0 0 0 {Tags:["rngSplash","crusadeRNG"]}

#Select item and run appropriate give function
tag @e[type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute as @e[type=marker,tag=rngSelected,tag=rngArrows] as @e[type=item] if data entity @s {Item:{id:"minecraft:arrow"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngCanopy] as @e[type=item] if data entity @s {Item:{id:"minecraft:ender_pearl"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngSplash] as @e[type=item] if data entity @s {Item:{id:"minecraft:lingering_potion",tag:{Potion:"minecraft:water"}}} run function items:deduct

function items:full_hotbar

execute as @e[type=marker,tag=rngSelected,tag=rngArrows] as @a[predicate=custom:indimension,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givearrows
execute as @e[type=marker,tag=rngSelected,tag=rngCanopy] as @a[predicate=custom:indimension,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute as @e[type=marker,tag=rngSelected,tag=rngSplash] as @a[predicate=custom:indimension,scores={crusadekit=2},tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givesplash
kill @e[type=marker,tag=crusadeRNG]