##Sub-sub-RNG for Lightning Missiles
#Choose between each missile based on enabled status and Tetris state
execute if entity @e[type=armor_stand,tag=Selection,tag=rngHur,tag=!givenHur] run summon marker 0 0 0 {Tags:["rngHur","rng3"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngThun,tag=!givenBolt] run summon marker 0 0 0 {Tags:["rngThun","rng3"]}

#Select a missile and run appropriate give function
tag @e[type=marker,tag=rng3,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=rngSelected,tag=rngHur] as @e[type=item] if data entity @s {Item:{id:"minecraft:drowned_spawn_egg"}} run function items:deduct
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=rngSelected,tag=rngThun] as @e[type=item] if data entity @s {Item:{id:"minecraft:vex_spawn_egg"}} run function items:deduct

function items:full_hotbar

execute as @e[type=marker,tag=rngSelected,tag=rngHur] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/lightning/givehur
execute as @e[type=marker,tag=rngSelected,tag=rngThun] as @a[predicate=custom:indimension,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/lightning/givethun
kill @e[type=marker,tag=rng3]