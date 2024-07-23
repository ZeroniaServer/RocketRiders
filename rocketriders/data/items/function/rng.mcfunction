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
tag @e[x=0,type=marker,tag=rng1,sort=random,limit=1] add rngSelected

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngMissile] run function items:missile/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngUtil] run function items:util/rng

##If Surprise Egg is picked
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] as @e[x=0,type=item] if items entity @s contents squid_spawn_egg run function items:deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] as @e[x=0,type=item] if items entity @s contents cod_spawn_egg run function items:deduct

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] run function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] as @a[x=0,team=Blue,tag=getItem] run function items:surprise_blue/givesurpriseegg
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSurprise] as @a[x=0,team=Yellow,tag=getItem] run function items:surprise_yellow/givesurpriseegg
kill @e[x=0,type=marker,tag=rng1]