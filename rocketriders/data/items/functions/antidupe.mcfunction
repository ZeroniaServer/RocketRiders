##############################################
## ANTIDUPE: Removes extra duplicated items ##
## Only runs the tick after items are given ##
##############################################

##Counts how many items using output of /clear @s <item> 0
execute store result score @s HasAux run clear @s mooshroom_spawn_egg 0
execute store result score @s HasToma run clear @s creeper_spawn_egg 0
execute store result score @s HasBlade run clear @s husk_spawn_egg 0
execute store result score @s HasWar run clear @s silverfish_spawn_egg 0
execute store result score @s HasAnt run clear @s bat_spawn_egg 0
execute store result score @s HasBolt run clear @s vex_spawn_egg 0
execute store result score @s HasGuard run clear @s elder_guardian_spawn_egg 0
execute store result score @s HasRift run clear @s salmon_spawn_egg 0
execute store result score @s HasJug run clear @s zombie_horse_spawn_egg 0
execute store result score @s HasShield run clear @s snowball 0
execute store result score @s HasPlat run clear @s ender_pearl 0
execute store result score @s HasFireball run clear @s blaze_spawn_egg 0
execute store result score @s HasObshield run clear @s enderman_spawn_egg 0
execute store result score @s HasBullet run clear @s skeleton_horse_spawn_egg 0
execute store result score @s HasNull run clear @s phantom_spawn_egg 0
execute store result score @s HasHur run clear @s drowned_spawn_egg 0
execute store result score @s HasSlash run clear @s shulker_spawn_egg 0
execute store result score @s HasHyper run clear @s turtle_spawn_egg 0
execute store result score @s HasCata run clear @s cave_spider_spawn_egg 0
execute store result score @s HasCitadel run clear @s wandering_trader_spawn_egg 0
execute store result score @s HasGemi run clear @s fox_spawn_egg 0
execute store result score @s HasLift run clear @s dolphin_spawn_egg 0
execute store result score @s HasDuplex run clear @s parrot_spawn_egg 0
execute store result score @s HasBroad run clear @s magma_cube_spawn_egg 0
execute store result score @s HasNova run clear @s crossbow{nova:1b} 0
execute store result score @s HasVortex run clear @s egg{icbm:0b} 0
execute store result score @s HasSplash run clear @s lingering_potion{Potion:"minecraft:water"} 0
execute store result score @s HasICBM run clear @s egg{icbm:1b} 0
execute store result score @s[team=Blue] HasSurprise run clear @s squid_spawn_egg 0
execute store result score @s[team=Yellow] HasSurprise run clear @s cod_spawn_egg 0

##Removes duplicate items based on output of previous check
clear @s[scores={HasAux=2..}] mooshroom_spawn_egg 1
clear @s[scores={HasToma=2..}] creeper_spawn_egg 1
clear @s[scores={HasBlade=2..}] husk_spawn_egg 1
clear @s[scores={HasWar=2..}] silverfish_spawn_egg 1
clear @s[scores={HasAnt=2..}] bat_spawn_egg 1
clear @s[scores={HasBolt=2..}] vex_spawn_egg 1
clear @s[scores={HasGuard=2..}] elder_guardian_spawn_egg 1
clear @s[scores={HasRift=2..}] salmon_spawn_egg 1
clear @s[scores={HasJug=2..}] zombie_horse_spawn_egg 1
clear @s[scores={HasShield=2..}] snowball 1
#Canopies are an exception for modes that require extra Canopies for travel. In this case, you can only have 3 Canopies.
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack] run clear @s[scores={HasPlat=2..}] ender_pearl 1
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack] run scoreboard players remove @s[scores={HasPlat=2..}] HasPlat 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] run clear @s[scores={HasPlat=3..}] ender_pearl 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] run scoreboard players remove @s[scores={HasPlat=3..}] HasPlat 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] run clear @s[scores={HasPlat=4..}] ender_pearl 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] run scoreboard players remove @s[scores={HasPlat=4..}] HasPlat 1
clear @s[scores={HasFireball=2..}] blaze_spawn_egg 1
clear @s[scores={HasObshield=2..}] enderman_spawn_egg 1
clear @s[scores={HasBullet=2..}] skeleton_horse_spawn_egg 1
clear @s[scores={HasNull=2..}] phantom_spawn_egg 1
clear @s[scores={HasHur=2..}] drowned_spawn_egg 1
clear @s[scores={HasSlash=2..}] shulker_spawn_egg 1
clear @s[scores={HasHyper=2..}] turtle_spawn_egg 1
clear @s[scores={HasCata=2..}] cave_spider_spawn_egg 1
clear @s[scores={HasCitadel=2..}] wandering_trader_spawn_egg 1
clear @s[scores={HasGemi=2..}] fox_spawn_egg 1
clear @s[scores={HasLift=2..}] dolphin_spawn_egg 1
clear @s[scores={HasDuplex=2..}] parrot_spawn_egg 1
clear @s[scores={HasBroad=2..}] magma_cube_spawn_egg 1
clear @s[team=Blue,scores={HasSurprise=4..}] squid_spawn_egg 1
clear @s[team=Yellow,scores={HasSurprise=4..}] cod_spawn_egg 1
clear @s[scores={HasNova=2..}] crossbow 1
clear @s[scores={HasVortex=2..}] egg{icbm:0b} 1
clear @s[scores={HasSplash=2..}] splash_potion{Potion:"minecraft:water"} 1
clear @s[scores={HasICBM=2..}] egg{icbm:1b} 1