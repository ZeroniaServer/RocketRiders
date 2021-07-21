##Sub-sub-RNG for Special Missiles (unused)
#Choose between each missile based on Tetris state (no enabled status)
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","rng3"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenBull] run summon marker 0 0 0 {Tags:["rngBull","rng3"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenDuplex] run summon marker 0 0 0 {Tags:["rngDuplex","rng3"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=!givenHyper] run summon marker 0 0 0 {Tags:["rngHyper","rng3"]}

#Select a missile and run appropriate give function
tag @e[type=marker,tag=rng3,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute as @e[type=marker,tag=rngSelected,tag=rngBroad] as @e[type=item] if data entity @s {Item:{id:"minecraft:magma_cube_spawn_egg"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngBull] as @e[type=item] if data entity @s {Item:{id:"minecraft:skeleton_horse_spawn_egg"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngDuplex] as @e[type=item] if data entity @s {Item:{id:"minecraft:parrot_spawn_egg"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngHyper] as @e[type=item] if data entity @s {Item:{id:"minecraft:turtle_spawn_egg"}} run kill @s

execute as @e[type=marker,tag=rngSelected,tag=rngBroad] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/givebroad
execute as @e[type=marker,tag=rngSelected,tag=rngBull] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/givebull
execute as @e[type=marker,tag=rngSelected,tag=rngDuplex] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/giveduplex
execute as @e[type=marker,tag=rngSelected,tag=rngHyper] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/special/givehyper
kill @e[type=marker,tag=rng3]