##Sub-RNG for Knight Utility Items
#Choose between each item based on Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenShield] run summon marker 0 0 0 {Tags:["rngShield","crusadeRNG"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenICBM] run summon marker 0 0 0 {Tags:["rngICBM","crusadeRNG"]}

#Select item and run appropriate give function
tag @e[type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute as @e[type=marker,tag=rngSelected,tag=rngObshield] as @e[type=item] if data entity @s {Item:{id:"minecraft:enderman_spawn_egg"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngShield] as @e[type=item] if data entity @s {Item:{id:"minecraft:snowball"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngICBM] as @e[type=item] if data entity @s {Item:{id:"minecraft:egg",tag:{icbm:1b}}} run function items:deduct

function items:full_hotbar

execute as @e[type=marker,tag=rngSelected,tag=rngObshield] as @a[scores={crusadekit=1}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveobshield
execute as @e[type=marker,tag=rngSelected,tag=rngShield] as @a[scores={crusadekit=1}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveshield
execute as @e[type=marker,tag=rngSelected,tag=rngICBM] as @a[scores={crusadekit=1}] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveicbm
kill @e[type=marker,tag=crusadeRNG]