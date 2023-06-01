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
tag @e[predicate=custom:indimension,type=marker,tag=rng1,sort=random,limit=1] add rngSelected
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngSlime] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveslime
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngRS] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givers
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngPiston] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givepiston
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngSpiston] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givespiston
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngObsi] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveobsi
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngObser] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveobser
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngTNT] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givetnt
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngGlass] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveglass
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngGlaze] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveglaze
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngCon] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givecon
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngFirework] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givefirework
execute as @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=rngScaf] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givescaf
kill @e[predicate=custom:indimension,type=marker,tag=rng1]