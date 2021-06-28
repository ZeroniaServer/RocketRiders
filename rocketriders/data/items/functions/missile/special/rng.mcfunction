##Sub-sub-RNG for Special Missiles (unused)
#Choose between each missile based on Tetris state (no enabled status)
execute if entity @e[tag=Selection,tag=!givenBroad,type=armor_stand] run summon marker 0 0 0 {Tags:["rngBroad","rng3"]}
execute if entity @e[tag=Selection,tag=!givenBull,type=armor_stand] run summon marker 0 0 0 {Tags:["rngBull","rng3"]}
execute if entity @e[tag=Selection,tag=!givenDuplex,type=armor_stand] run summon marker 0 0 0 {Tags:["rngDuplex","rng3"]}
execute if entity @e[tag=Selection,tag=!givenHyper,type=armor_stand] run summon marker 0 0 0 {Tags:["rngHyper","rng3"]}

#Select a missile and run appropriate give function
tag @e[tag=rng3,sort=random,limit=1,type=marker] add rngSelected
execute as @e[tag=rngSelected,tag=rngBroad,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/givebroad
execute as @e[tag=rngSelected,tag=rngBull,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/givebull
execute as @e[tag=rngSelected,tag=rngDuplex,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/giveduplex
execute as @e[tag=rngSelected,tag=rngHyper,type=marker] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/givehyper
kill @e[tag=rng3,type=marker]