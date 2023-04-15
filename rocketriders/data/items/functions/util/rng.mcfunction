##Sub-RNG for Utility Items
#Choose between each item based on enabled status and Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=rngArrows,tag=!givenArrowsTwice] run summon marker 0 0 0 {Tags:["rngArrows","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngFireball,tag=!givenFireballTwice] run summon marker 0 0 0 {Tags:["rngFireball","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngObshield,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngCanopy,tag=!givenCanopy] run summon marker 0 0 0 {Tags:["rngCanopy","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngShield,tag=!givenShieldTwice] run summon marker 0 0 0 {Tags:["rngShield","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngSplash,tag=!givenSplash] run summon marker 0 0 0 {Tags:["rngSplash","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngVortex,tag=!givenVortex] run summon marker 0 0 0 {Tags:["rngVortex","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngNova,tag=!givenNova] run summon marker 0 0 0 {Tags:["rngNova","rng2"]}

#Select item and run appropriate give function
tag @e[type=marker,tag=rng2,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute as @e[type=marker,tag=rngSelected,tag=rngArrows] as @e[type=item] if data entity @s {Item:{id:"minecraft:arrow"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngFireball] as @e[type=item] if data entity @s {Item:{id:"minecraft:blaze_spawn_egg"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngObshield] as @e[type=item] if data entity @s {Item:{id:"minecraft:enderman_spawn_egg"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngCanopy] as @e[type=item] if data entity @s {Item:{id:"minecraft:ender_pearl"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngShield] as @e[type=item] if data entity @s {Item:{id:"minecraft:snowball"}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngSplash] as @e[type=item] if data entity @s {Item:{id:"minecraft:lingering_potion",tag:{Potion:"minecraft:water"}}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngVortex] as @e[type=item] if data entity @s {Item:{id:"minecraft:egg",tag:{icbm:0b}}} run function items:deduct
execute as @e[type=marker,tag=rngSelected,tag=rngNova] as @e[type=item] if data entity @s {Item:{id:"minecraft:crossbow",tag:{nova:1b}}} run kill @s

function items:full_hotbar

execute as @e[type=marker,tag=rngSelected,tag=rngArrows] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givearrows
execute as @e[type=marker,tag=rngSelected,tag=rngFireball] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givefireball
execute as @e[type=marker,tag=rngSelected,tag=rngObshield] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveobshield
execute as @e[type=marker,tag=rngSelected,tag=rngCanopy] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute as @e[type=marker,tag=rngSelected,tag=rngShield] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveshield
execute as @e[type=marker,tag=rngSelected,tag=rngSplash] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givesplash
execute as @e[type=marker,tag=rngSelected,tag=rngVortex] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givevortex
execute as @e[type=marker,tag=rngSelected,tag=rngNova] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givenova
kill @e[type=marker,tag=rng2]