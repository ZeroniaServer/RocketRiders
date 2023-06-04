#########################################
## RNG: The starting point for an item ##
## to be selected and given to players ##
#########################################

##Choose between Missile and Utility (Missile is always first item)
execute unless entity @s[tag=givenAllMissile] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute unless entity @s[tag=givenAllMissile] run summon marker 0 0 0 {Tags:["rngMissile","rng1"]}
execute unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon marker 0 0 0 {Tags:["rngUtil","rng1"]}

##Select item and run appropriate sub-RNG function
tag @e[x=0,type=marker,tag=rng1,sort=random,limit=1] add rngSelected
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngMissile] run function rr_crusade:items/missile/rng
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngUtil] run function rr_crusade:items/util/rng

kill @e[x=0,type=marker,tag=rng1]