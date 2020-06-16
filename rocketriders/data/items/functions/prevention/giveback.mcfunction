#Auxiliary
execute as @a[tag=BackAux] run clear @s mooshroom_spawn_egg
scoreboard players set @a[tag=BackAux] HasAux 0
scoreboard players remove @a[tag=BackAux] AuxSpawned 1
tag @a[tag=BackAux] remove fullHotbar
execute as @a[tag=BackAux] run function items:missile/heavy/giveaux

#TomaTwo
execute as @a[tag=BackToma] run clear @s creeper_spawn_egg
scoreboard players set @a[tag=BackToma] HasToma 0
scoreboard players remove @a[tag=BackToma] TomaSpawned 1
tag @a[tag=BackToma] remove fullHotbar
execute as @a[tag=BackToma] run function items:missile/normal/givetoma

#Chronullifier
execute as @a[tag=BackNull] run clear @s phantom_spawn_egg
scoreboard players set @a[tag=BackNull] HasNull 0
scoreboard players remove @a[tag=BackNull] NullSpawned 1
tag @a[tag=BackNull] remove fullHotbar
execute as @a[tag=BackNull] run function items:missile/normal/givenull

#Warhead
execute as @a[tag=BackWar] run clear @s phantom_spawn_egg
scoreboard players set @a[tag=BackWar] HasWar 0
scoreboard players remove @a[tag=BackWar] WarSpawned 1
tag @a[tag=BackWar] remove fullHotbar
execute as @a[tag=BackWar] run function items:missile/heavy/givewar

#Thunderbolt
execute as @a[tag=BackBolt] run clear @s vex_spawn_egg
scoreboard players set @a[tag=BackBolt] HasBolt 0
scoreboard players remove @a[tag=BackBolt] ThunSpawned 1
tag @a[tag=BackBolt] remove fullHotbar
execute as @a[tag=BackBolt] run function items:missile/lightning/givethun

#Hurricane
execute as @a[tag=BackHur] run clear @s drowned_spawn_egg
scoreboard players set @a[tag=BackHur] HasHur 0
scoreboard players remove @a[tag=BackHur] HurSpawned 1
tag @a[tag=BackHur] remove fullHotbar
execute as @a[tag=BackHur] run function items:missile/lightning/givehur

#Elder Guardian
execute as @a[tag=BackGuard] run clear @s elder_guardian_spawn_egg
scoreboard players set @a[tag=BackGuard] HasGuard 0
scoreboard players remove @a[tag=BackGuard] GuardSpawned 1
tag @a[tag=BackGuard] remove fullHotbar
execute as @a[tag=BackGuard] run function items:missile/normal/giveeguard

#A.N.T
execute as @a[tag=BackAnt] run clear @s bat_spawn_egg
scoreboard players set @a[tag=BackAnt] HasAnt 0
scoreboard players remove @a[tag=BackAnt] AntsSpawned 1
tag @a[tag=BackAnt] remove fullHotbar
execute as @a[tag=BackAnt] run function items:missile/normal/giveant

#Blade
execute as @a[tag=BackBlade] run clear @s husk_spawn_egg
scoreboard players set @a[tag=BackBlade] HasBlade 0
scoreboard players remove @a[tag=BackBlade] BladeSpawned 1
tag @a[tag=BackBlade] remove fullHotbar
execute as @a[tag=BackBlade] run function items:missile/normal/giveblade

#Rifter
execute as @a[tag=BackRift] run clear @s salmon_spawn_egg
scoreboard players set @a[tag=BackRift] HasRift 0
scoreboard players remove @a[tag=BackRift] RifterSpawned 1
tag @a[tag=BackRift] remove fullHotbar
execute as @a[tag=BackRift] run function items:missile/heavy/giverift

#Juggerbuster
execute as @a[tag=BackJug] run clear @s zombie_horse_spawn_egg
scoreboard players set @a[tag=BackJug] HasJug 0
scoreboard players remove @a[tag=BackJug] JugbSpawned 1
tag @a[tag=BackJug] remove fullHotbar
execute as @a[tag=BackJug] run function items:missile/heavy/givejbuster

#Slasher
execute as @a[tag=BackSlash] run clear @s shulker_spawn_egg
scoreboard players set @a[tag=BackSlash] HasSlash 0
scoreboard players remove @a[tag=BackSlash] SlashSpawned 1
tag @a[tag=BackSlash] remove fullHotbar
execute as @a[tag=BackSlash] run function items:missile/normal/giveslash

#Catapult
execute as @a[tag=BackCata] run clear @s cave_spider_spawn_egg
scoreboard players set @a[tag=BackCata] HasCata 0
scoreboard players remove @a[tag=BackCata] CataSpawned 1
tag @a[tag=BackCata] remove fullHotbar
execute as @a[tag=BackCata] run function items:missile/normal/givecata

#Citadel
execute as @a[tag=BackCitadel] run clear @s wandering_trader_spawn_egg
scoreboard players set @a[tag=BackCitadel] HasCitadel 0
scoreboard players remove @a[tag=BackCita] CitaSpawned 1
tag @a[tag=BackCitadel] remove fullHotbar
execute as @a[tag=BackCitadel] run function items:missile/normal/givecitadel

#Gemini
execute as @a[tag=BackGemini] run clear @s fox_spawn_egg
scoreboard players set @a[tag=BackGemini] HasGemi 0
scoreboard players remove @a[tag=BackGemini] GemiSpawned 1
tag @a[tag=BackGemini] remove fullHotbar
execute as @a[tag=BackGemini] run function items:missile/normal/givegemi

#Lifter
execute as @a[tag=BackLift] run clear @s dolphin_spawn_egg
scoreboard players set @a[tag=BackLift] HasLift 0
scoreboard players remove @a[tag=BackLift] LifterSpawned 1
tag @a[tag=BackLift] remove fullHotbar
execute as @a[tag=BackLift] run function items:missile/normal/givelift

#Hypersonic
execute as @a[tag=BackHyper] run clear @s turtle_spawn_egg
scoreboard players set @a[tag=BackHyper] HasHyper 0
scoreboard players remove @a[tag=BackHyper] HyperSpawned 1
tag @a[tag=BackHyper] remove fullHotbar
execute as @a[tag=BackHyper] run function items:missile/special/givehyper

#Bullet
execute as @a[tag=BackBullet] run clear @s skeleton_horse_spawn_egg
scoreboard players set @a[tag=BackBullet] HasBullet 0
scoreboard players remove @a[tag=BackBullet] BulletSpawned 1
tag @a[tag=BackBullet] remove fullHotbar
execute as @a[tag=BackBullet] run function items:missile/special/givebull

#Duplex
execute as @a[tag=BackDuplex] run clear @s parrot_spawn_egg
scoreboard players set @a[tag=BackDuplex] HasDuplex 0
scoreboard players remove @a[tag=BackDuplex] DuplexSpawned 1
tag @a[tag=BackDuplex] remove fullHotbar
execute as @a[tag=BackDuplex] run function items:missile/special/giveduplex

#Broadsword
execute as @a[tag=BackBroad] run clear @s magma_cube_spawn_egg
scoreboard players set @a[tag=BackBroad] HasBroad 0
scoreboard players remove @a[tag=BackBroad] BroadSpawned 1
tag @a[tag=BackBroad] remove fullHotbar
execute as @a[tag=BackBroad] run function items:missile/special/givebroad

#Tag removal & unable message
execute unless entity @s[tag=customPrevention] as @a[tag=MissiMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of portals.","color":"red"}]
execute unless entity @s[tag=customPrevention] run tag @a[tag=MissiMSG] remove MissiMSG
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
tag @a remove BackLift
tag @a remove BackHyper
tag @a remove BackBullet
tag @a remove BackDuplex
tag @a remove BackBroad