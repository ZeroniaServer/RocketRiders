#########################################
## RNG: The starting point for an item ##
## to be selected and given to players ##
#########################################

##Choose between Missile and Utility (Missile is always first item)
execute unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if entity @s[tag=rngUtil,tag=!utilOff] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","rng1"]}

##Surprise Egg modifier - summons extra Missile/Utility AECs to make Surprise Eggs rarer
execute if entity @s[tag=SurpriseEgg] run summon marker 0 0 0 {Tags:["rngSurprise","rng1"]}
execute if entity @s[tag=SurpriseEgg] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute if entity @s[tag=rngUtil,tag=!utilOff,tag=SurpriseEgg] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","rng1"]}

##Select item and run appropriate sub-RNG function
tag @e[type=marker,tag=rng1,sort=random,limit=1] add rngSelected
execute as @e[type=marker,tag=rngSelected,tag=rngMissile] run function items:missile/rng
execute as @e[type=marker,tag=rngSelected,tag=rngUtil] run function items:util/rng
execute as @e[type=marker,tag=rngSelected,tag=rngSurprise] as @a[team=Blue,tag=!fullHotbar] run function items:surprise_blue/givesurpriseegg
execute as @e[type=marker,tag=rngSelected,tag=rngSurprise] as @a[team=Yellow,tag=!fullHotbar] run function items:surprise_yellow/givesurpriseegg
kill @e[type=marker,tag=rng1]