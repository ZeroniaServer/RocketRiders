##Sub-sub-RNG for Normal Missiles
#Choose between each missile based on enabled status and Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngAnt,tag=!givenAnt] run summon marker 0 0 0 {Tags:["rngAnt","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngLift,tag=!givenLift] run summon marker 0 0 0 {Tags:["rngLift","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngBlade,tag=!givenBlade] run summon marker 0 0 0 {Tags:["rngBlade","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngCata,tag=!givenCata] run summon marker 0 0 0 {Tags:["rngCata","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngEguard,tag=!givenGuard] run summon marker 0 0 0 {Tags:["rngEguard","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngNull,tag=!givenNull] run summon marker 0 0 0 {Tags:["rngNull","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngSlash,tag=!givenSlash] run summon marker 0 0 0 {Tags:["rngSlash","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngToma,tag=!givenToma] run summon marker 0 0 0 {Tags:["rngToma","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngCitadel,tag=!givenCita] run summon marker 0 0 0 {Tags:["rngCitadel","rng3"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngGemi,tag=!givenGemi] run summon marker 0 0 0 {Tags:["rngGemi","rng3"]}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=rng3,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngAnt] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:bat_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngLift] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:dolphin_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngBlade] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:husk_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngCata] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:cave_spider_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngEguard] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:elder_guardian_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngNull] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:phantom_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngSlash] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:shulker_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngToma] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:creeper_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngCitadel] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:wandering_trader_spawn_egg"}} run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngGemi] as @e[x=0,type=item] if data entity @s {Item:{id:"minecraft:fox_spawn_egg"}} run function items:deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngAnt] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveant
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLift] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givelift
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlade] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveblade
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCata] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecata
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngEguard] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveeguard
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNull] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givenull
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlash] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveslash
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngToma] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givetoma
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCitadel] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecitadel
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngGemi] as @a[x=0,tag=getItem] unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givegemi
kill @e[x=0,type=marker,tag=rng3]