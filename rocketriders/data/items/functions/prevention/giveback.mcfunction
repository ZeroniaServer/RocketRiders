#Auxiliary
execute as @a[tag=BackAux] run clear @s mooshroom_spawn_egg
scoreboard players set @a[tag=BackAux] HasAux 0
tag @a[tag=BackAux] remove fullHotbar 
execute as @a[tag=BackAux] run function items:missile/heavy/giveaux

#TomaTwo
execute as @a[tag=BackToma] run clear @s creeper_spawn_egg
scoreboard players set @a[tag=BackToma] HasToma 0
tag @a[tag=BackToma] remove fullHotbar 
execute as @a[tag=BackToma] run function items:missile/normal/givetoma

#Chronullifier
execute as @a[tag=BackNull] run clear @s phantom_spawn_egg
scoreboard players set @a[tag=BackNull] HasNull 0
tag @a[tag=BackNull] remove fullHotbar 
execute as @a[tag=BackNull] run function items:missile/normal/givenull

#Warhead
execute as @a[tag=BackWar] run clear @s phantom_spawn_egg
scoreboard players set @a[tag=BackWar] HasWar 0
tag @a[tag=BackWar] remove fullHotbar 
execute as @a[tag=BackWar] run function items:missile/heavy/givewar

#Thunderbolt
execute as @a[tag=BackBolt] run clear @s vex_spawn_egg
scoreboard players set @a[tag=BackBolt] HasBolt 0
tag @a[tag=BackBolt] remove fullHotbar 
execute as @a[tag=BackBolt] run function items:missile/lightning/givethun

#Thunderbolt
execute as @a[tag=BackHur] run clear @s drowned_spawn_egg
scoreboard players set @a[tag=BackHur] HasHur 0
tag @a[tag=BackHur] remove fullHotbar 
execute as @a[tag=BackHur] run function items:missile/lightning/givehur

#Elder Guardian
execute as @a[tag=BackGuard] run clear @s elder_guardian_spawn_egg
scoreboard players set @a[tag=BackGuard] HasGuard 0
tag @a[tag=BackGuard] remove fullHotbar 
execute as @a[tag=BackGuard] run function items:missile/normal/giveeguard

#A.N.T
execute as @a[tag=BackAnt] run clear @s bat_spawn_egg
scoreboard players set @a[tag=BackAnt] HasAnt 0
tag @a[tag=BackAnt] remove fullHotbar 
execute as @a[tag=BackAnt] run function items:missile/normal/giveant

#Blade
execute as @a[tag=BackBlade] run clear @s husk_spawn_egg
scoreboard players set @a[tag=BackBlade] HasBlade 0
tag @a[tag=BackBlade] remove fullHotbar 
execute as @a[tag=BackBlade] run function items:missile/normal/giveblade

#Rifter
execute as @a[tag=BackRift] run clear @s salmon_spawn_egg
scoreboard players set @a[tag=BackRift] HasRift 0
tag @a[tag=BackRift] remove fullHotbar 
execute as @a[tag=BackRift] run function items:missile/heavy/giverift

#Juggerbuster
execute as @a[tag=BackJug] run clear @s zombie_horse_spawn_egg
scoreboard players set @a[tag=BackJug] HasJug 0
tag @a[tag=BackJug] remove fullHotbar 
execute as @a[tag=BackJug] run function items:missile/heavy/givejbuster

#Slasher
execute as @a[tag=BackSlash] run clear @s shulker_spawn_egg
scoreboard players set @a[tag=BackSlash] HasSlash 0
tag @a[tag=BackSlash] remove fullHotbar 
execute as @a[tag=BackSlash] run function items:missile/normal/giveslash

#Catapult
execute as @a[tag=BackCata] run clear @s cave_spider_spawn_egg
scoreboard players set @a[tag=BackCata] HasCata 0
tag @a[tag=BackCata] remove fullHotbar 
execute as @a[tag=BackCata] run function items:missile/normal/givecata

#Citadel
execute as @a[tag=BackCitadel] run clear @s cave_spider_spawn_egg
scoreboard players set @a[tag=BackCitadel] HasCitadel 0
tag @a[tag=BackCitadel] remove fullHotbar 
execute as @a[tag=BackCitadel] run function items:missile/normal/givecitadel

#Gemini
execute as @a[tag=BackGemini] run clear @s fox_spawn_egg
scoreboard players set @a[tag=BackGemini] HasGemi 0
tag @a[tag=BackGemini] remove fullHotbar 
execute as @a[tag=BackGemini] run function items:missile/normal/givegemi

#Hypersonic
execute as @a[tag=BackHyper] run clear @s turtle_spawn_egg
scoreboard players set @a[tag=BackHyper] HasHyper 0
tag @a[tag=BackHyper] remove fullHotbar 
execute as @a[tag=BackHyper] run function rr_powerups:items/powerup/givehyper

#Bullet
execute as @a[tag=BackBullet] run clear @s skeleton_horse_spawn_egg
scoreboard players set @a[tag=BackBullet] HasBullet 0
tag @a[tag=BackBullet] remove fullHotbar 
execute as @a[tag=BackBullet] run function rr_powerups:items/powerup/givebull











#Tag removal & unable message
execute as @a[tag=MissiMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of portals.","color":"red"}]
tag @a remove MissiMSG
tag @a remove BackAux
tag @a remove BackToma
tag @a remove BackNull
tag @a remove BackWar
tag @a remove BackBolt
tag @a remove BackHur
tag @a remove BackGuard
tag @a remove BackAnt
tag @a remove BackBlade
tag @a remove BackRift
tag @a remove BackJug
tag @a remove BackSlash
tag @a remove BackCata
tag @a remove BackCitadel
tag @a remove BackGemini
tag @a remove BackHyper
tag @a remove BackBullet