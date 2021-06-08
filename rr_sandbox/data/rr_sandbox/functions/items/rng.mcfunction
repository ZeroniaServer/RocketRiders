summon marker 0 0 0 {Tags:["rngSlime","rng1"]}
summon marker 0 0 0 {Tags:["rngRS","rng1"]}
summon marker 0 0 0 {Tags:["rngPiston","rng1"]}
summon marker 0 0 0 {Tags:["rngSPiston","rng1"]}
summon marker 0 0 0 {Tags:["rngObsi","rng1"]}
summon marker 0 0 0 {Tags:["rngObser","rng1"]}
summon marker 0 0 0 {Tags:["rngTNT","rng1"]}
summon marker 0 0 0 {Tags:["rngGlass","rng1"]}
summon marker 0 0 0 {Tags:["rngGlaze","rng1"]}
summon marker 0 0 0 {Tags:["rngCon","rng1"]}
summon marker 0 0 0 {Tags:["rngFirework","rng1"]}
summon marker 0 0 0 {Tags:["rngScaf","rng1"]}
tag @e[tag=rng1,sort=random,limit=1,type=marker] add rngSelected
execute as @e[tag=rngSelected,tag=rngSlime,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveslime
execute as @e[tag=rngSelected,tag=rngRS,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givers
execute as @e[tag=rngSelected,tag=rngPiston,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givepiston
execute as @e[tag=rngSelected,tag=rngSpiston,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givespiston
execute as @e[tag=rngSelected,tag=rngObsi,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveobsi
execute as @e[tag=rngSelected,tag=rngObser,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveobser
execute as @e[tag=rngSelected,tag=rngTNT,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givetnt
execute as @e[tag=rngSelected,tag=rngGlass,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveglass
execute as @e[tag=rngSelected,tag=rngGlaze,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveglaze
execute as @e[tag=rngSelected,tag=rngCon,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givecon
execute as @e[tag=rngSelected,tag=rngFirework,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givefirework
execute as @e[tag=rngSelected,tag=rngScaf,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givescaf
kill @e[tag=rng1,type=marker]