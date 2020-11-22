###################################
## ANTIDUPE: Removes extra items ##
###################################

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
execute unless entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run clear @s[scores={HasPlat=2..}] ender_pearl 1
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run clear @s[scores={HasPlat=4..}] ender_pearl 1
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
clear @s[scores={HasVortex=2..}] egg 1
clear @s[scores={HasSplash=2..}] splash_potion{Potion:"minecraft:water"} 1