#########################################
## RNG: The starting point for an item ##
## to be selected and given to players ##
#########################################

##Choose between Missile and Utility (Missile is always first item)
execute unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute if entity @s[tag=rngUtil,tag=!utilOff] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngUtil","rng1"]}

##Surprise Egg modifier - summons extra Missile/Utility AECs to make Surprise Eggs rarer
execute if entity @s[tag=SurpriseEgg] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSurprise","rng1"]}
execute if entity @s[tag=SurpriseEgg] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute if entity @s[tag=rngUtil,tag=!utilOff,tag=SurpriseEgg] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngUtil","rng1"]}

##Select item and run appropriate sub-RNG function
tag @e[tag=rng1,sort=random,limit=1,type=area_effect_cloud] add rngSelected
execute as @e[tag=rngSelected,tag=rngMissile,type=area_effect_cloud] run function items:missile/rng
execute as @e[tag=rngSelected,tag=rngUtil,type=area_effect_cloud] run function rr_ctf:items/util/rng
execute as @e[tag=rngSelected,tag=rngSurprise,type=area_effect_cloud] as @a[team=Blue,tag=!fullHotbar] run function items:surprise_blue/givesurpriseegg
execute as @e[tag=rngSelected,tag=rngSurprise,type=area_effect_cloud] as @a[team=Yellow,tag=!fullHotbar] run function items:surprise_yellow/givesurpriseegg