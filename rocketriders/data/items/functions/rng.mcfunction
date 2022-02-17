#########################################
## RNG: The starting point for an item ##
## to be selected and given to players ##
#########################################

##Choose between Missile and Utility (Missile is always first item)
execute if entity @s[tag=!Chaos] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if entity @s[tag=!Chaos] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if entity @s[tag=Chaos] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if entity @s[tag=Chaos] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if entity @s[tag=rngUtil,tag=!utilOff] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","rng1"]}

##Surprise Egg modifier - summons extra Missile/Utility AECs to make Surprise Eggs rarer
execute if entity @s[tag=SurpriseEgg] run summon marker 0 0 0 {Tags:["rngSurprise","rng1"]}
execute if entity @s[tag=SurpriseEgg,tag=!Chaos] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if entity @s[tag=SurpriseEgg,tag=Chaos] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=!givenAllSpecial] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if entity @s[tag=rngUtil,tag=!utilOff,tag=SurpriseEgg] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","rng1"]}

##Select item and run appropriate sub-RNG function
tag @e[type=marker,tag=rng1,sort=random,limit=1] add rngSelected

execute as @e[type=marker,tag=rngSelected,tag=rngMissile] run function items:missile/rng
execute as @e[type=marker,tag=rngSelected,tag=rngUtil] run function items:util/rng

##If Surprise Egg is picked
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=rngSelected,tag=rngSurprise] as @e[type=item] if data entity @s {Item:{id:"minecraft:squid_spawn_egg"}} run function items:deduct
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=marker,tag=rngSelected,tag=rngSurprise] as @e[type=item] if data entity @s {Item:{id:"minecraft:cod_spawn_egg"}} run function items:deduct

execute as @e[type=marker,tag=rngSelected,tag=rngSurprise] run function items:full_hotbar

execute as @e[type=marker,tag=rngSelected,tag=rngSurprise] as @a[team=Blue,tag=getItem] run function items:surprise_blue/givesurpriseegg
execute as @e[type=marker,tag=rngSelected,tag=rngSurprise] as @a[team=Yellow,tag=getItem] run function items:surprise_yellow/givesurpriseegg
kill @e[type=marker,tag=rng1]