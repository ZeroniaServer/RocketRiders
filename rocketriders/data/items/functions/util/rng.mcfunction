##Sub-RNG for Utility Items
#Choose between each item based on enabled status and Tetris state
execute if entity @e[tag=Selection,tag=rngArrows,tag=!givenArrowsTwice,type=armor_stand] run summon marker 0 0 0 {Tags:["rngArrows","rng2"]}
execute if entity @e[tag=Selection,tag=rngFireball,tag=!givenFireballTwice,type=armor_stand] run summon marker 0 0 0 {Tags:["rngFireball","rng2"]}
execute if entity @e[tag=Selection,tag=rngObshield,tag=!givenObshield,type=armor_stand] run summon marker 0 0 0 {Tags:["rngObshield","rng2"]}
execute if entity @e[tag=Selection,tag=rngCanopy,tag=!givenCanopy,type=armor_stand] run summon marker 0 0 0 {Tags:["rngCanopy","rng2"]}
execute if entity @e[tag=Selection,tag=rngShield,tag=!givenShieldTwice,type=armor_stand] run summon marker 0 0 0 {Tags:["rngShield","rng2"]}
execute if entity @e[tag=Selection,tag=rngSplash,tag=!givenSplash,type=armor_stand] run summon marker 0 0 0 {Tags:["rngSplash","rng2"]}
execute if entity @e[tag=Selection,tag=rngVortex,tag=!givenVortex,type=armor_stand] run summon marker 0 0 0 {Tags:["rngVortex","rng2"]}
execute if entity @e[tag=Selection,tag=rngNova,tag=!givenNova,type=armor_stand] run summon marker 0 0 0 {Tags:["rngNova","rng2"]}

#Select item and run appropriate give function
tag @e[tag=rng2,sort=random,limit=1,type=marker] add rngSelected
execute as @e[tag=rngSelected,tag=rngArrows,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givearrows
execute as @e[tag=rngSelected,tag=rngFireball,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givefireball
execute as @e[tag=rngSelected,tag=rngObshield,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveobshield
execute as @e[tag=rngSelected,tag=rngCanopy,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute as @e[tag=rngSelected,tag=rngShield,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveshield
execute as @e[tag=rngSelected,tag=rngSplash,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givesplash
execute as @e[tag=rngSelected,tag=rngVortex,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givevortex
execute as @e[tag=rngSelected,tag=rngNova,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givenova
kill @e[tag=rng2,type=marker]