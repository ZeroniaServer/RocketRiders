##Sub-RNG for Utility Items
#Choose between each item based on enabled status and Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngArrows,tag=!givenArrowsTwice] run summon marker 0 0 0 {Tags:["rngArrows","rng2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngFireball,tag=!givenFireballTwice] run summon marker 0 0 0 {Tags:["rngFireball","rng2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngObshield,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","rng2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngCanopy,tag=!givenCanopy] run summon marker 0 0 0 {Tags:["rngCanopy","rng2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngShield,tag=!givenShieldTwice] run summon marker 0 0 0 {Tags:["rngShield","rng2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngSplash,tag=!givenSplash] run summon marker 0 0 0 {Tags:["rngSplash","rng2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngVortex,tag=!givenVortex] run summon marker 0 0 0 {Tags:["rngVortex","rng2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngNova,tag=!givenNova] run summon marker 0 0 0 {Tags:["rngNova","rng2"]}

#Select item and run appropriate give function
tag @e[x=0,type=marker,tag=rng2,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngArrows] as @e[x=0,type=item] if items entity @s contents arrow run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngFireball] as @e[x=0,type=item] if items entity @s contents blaze_spawn_egg run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngObshield] as @e[x=0,type=item] if items entity @s contents enderman_spawn_egg run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngCanopy] as @e[x=0,type=item] if items entity @s contents ender_pearl run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngShield] as @e[x=0,type=item] if items entity @s contents snowball run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngSplash] as @e[x=0,type=item] if items entity @s contents lingering_potion[custom_data~{splash:1b}] run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngVortex] as @e[x=0,type=item] if items entity @s contents egg[custom_data~{icbm:0b}] run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngNova] as @e[x=0,type=item] if items entity @s contents crossbow[custom_data~{nova:1b}] run kill @s

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngArrows] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givearrows
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngFireball] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givefireball
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngObshield] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveobshield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCanopy] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngShield] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveshield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSplash] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givesplash
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngVortex] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givevortex
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNova] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:util/givenova
kill @e[x=0,type=marker,tag=rng2]