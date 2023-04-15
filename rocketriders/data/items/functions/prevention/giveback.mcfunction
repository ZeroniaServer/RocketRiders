##Gives back the appropriate missile when its placement has been prevented

##Individual missiles
#Auxiliary
scoreboard players remove @a[predicate=custom:indimension,tag=BackAux] AuxSpawned 1
tag @a[predicate=custom:indimension,tag=BackAux] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackAux] at @s run function items:missile/heavy/giveaux

#TomaTwo
scoreboard players remove @a[predicate=custom:indimension,tag=BackToma] TomaSpawned 1
tag @a[predicate=custom:indimension,tag=BackToma] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackToma] at @s run function items:missile/normal/givetoma

#Chronullifier
scoreboard players remove @a[predicate=custom:indimension,tag=BackNull] NullSpawned 1
tag @a[predicate=custom:indimension,tag=BackNull] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackNull] at @s run function items:missile/normal/givenull

#Warhead
scoreboard players remove @a[predicate=custom:indimension,tag=BackWar] WarSpawned 1
tag @a[predicate=custom:indimension,tag=BackWar] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackWar] at @s run function items:missile/heavy/givewar

#Thunderbolt
scoreboard players remove @a[predicate=custom:indimension,tag=BackBolt] ThunSpawned 1
tag @a[predicate=custom:indimension,tag=BackBolt] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackBolt] at @s run function items:missile/lightning/givethun

#Hurricane
scoreboard players remove @a[predicate=custom:indimension,tag=BackHur] HurSpawned 1
tag @a[predicate=custom:indimension,tag=BackHur] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackHur] at @s run function items:missile/lightning/givehur

#Elder Guardian
scoreboard players remove @a[predicate=custom:indimension,tag=BackGuard] GuardSpawned 1
tag @a[predicate=custom:indimension,tag=BackGuard] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackGuard] at @s run function items:missile/normal/giveeguard

#A.N.T
scoreboard players remove @a[predicate=custom:indimension,tag=BackAnt] AntsSpawned 1
tag @a[predicate=custom:indimension,tag=BackAnt] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackAnt] at @s run function items:missile/normal/giveant

#Blade
scoreboard players remove @a[predicate=custom:indimension,tag=BackBlade] BladeSpawned 1
tag @a[predicate=custom:indimension,tag=BackBlade] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackBlade] at @s run function items:missile/normal/giveblade

#Rifter
scoreboard players remove @a[predicate=custom:indimension,tag=BackRift] RifterSpawned 1
tag @a[predicate=custom:indimension,tag=BackRift] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackRift] at @s run function items:missile/heavy/giverift

#Juggerbuster
scoreboard players remove @a[predicate=custom:indimension,tag=BackJug] JugbSpawned 1
tag @a[predicate=custom:indimension,tag=BackJug] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackJug] at @s run function items:missile/heavy/givejbuster

#Slasher
scoreboard players remove @a[predicate=custom:indimension,tag=BackSlash] SlashSpawned 1
tag @a[predicate=custom:indimension,tag=BackSlash] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackSlash] at @s run function items:missile/normal/giveslash

#Catapult
scoreboard players remove @a[predicate=custom:indimension,tag=BackCata] CataSpawned 1
tag @a[predicate=custom:indimension,tag=BackCata] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackCata] at @s run function items:missile/normal/givecata

#Citadel
scoreboard players remove @a[predicate=custom:indimension,tag=BackCita] CitaSpawned 1
tag @a[predicate=custom:indimension,tag=BackCitadel] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackCitadel] at @s run function items:missile/normal/givecitadel

#Gemini
scoreboard players remove @a[predicate=custom:indimension,tag=BackGemi] GemiSpawned 1
tag @a[predicate=custom:indimension,tag=BackGemi] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackGemi] at @s run function items:missile/normal/givegemi

#Lifter
scoreboard players remove @a[predicate=custom:indimension,tag=BackLift] LifterSpawned 1
tag @a[predicate=custom:indimension,tag=BackLift] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackLift] at @s run function items:missile/normal/givelift

#Hypersonic
scoreboard players remove @a[predicate=custom:indimension,tag=BackHyper] HyperSpawned 1
tag @a[predicate=custom:indimension,tag=BackHyper] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackHyper] at @s run function items:missile/special/givehyper

#Bullet
scoreboard players remove @a[predicate=custom:indimension,tag=BackBull] BulletSpawned 1
tag @a[predicate=custom:indimension,tag=BackBull] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackBull] at @s run function items:missile/special/givebull

#Duplex
scoreboard players remove @a[predicate=custom:indimension,tag=BackDuplex] DuplexSpawned 1
tag @a[predicate=custom:indimension,tag=BackDuplex] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackDuplex] at @s run function items:missile/special/giveduplex

#Broadsword
scoreboard players remove @a[predicate=custom:indimension,tag=BackBroad] BroadSpawned 1
tag @a[predicate=custom:indimension,tag=BackBroad] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackBroad] at @s run function items:missile/special/givebroad

#Surprise Egg
scoreboard players remove @a[predicate=custom:indimension,team=Blue,tag=BackSurprise] BSurpriseSpawned 1
scoreboard players remove @a[predicate=custom:indimension,team=Yellow,tag=BackSurprise] YSurpriseSpawned 1
tag @a[predicate=custom:indimension,tag=BackSurprise] remove fullHotbar
execute as @a[predicate=custom:indimension,team=Blue,tag=BackSurprise] at @s run function items:surprise_blue/givesurpriseegg
execute as @a[predicate=custom:indimension,team=Yellow,tag=BackSurprise] at @s run function items:surprise_yellow/givesurpriseegg

#Fireball
scoreboard players remove @a[predicate=custom:indimension,tag=BackFireball] FireballSpawned 1
tag @a[predicate=custom:indimension,tag=BackFireball] remove fullHotbar
execute if entity @s[tag=!fireballOverride] as @a[predicate=custom:indimension,tag=BackFireball] at @s run function items:util/givefireball

#Obsidian Shield
scoreboard players remove @a[predicate=custom:indimension,tag=BackObshield] ObshieldSpawned 1
tag @a[predicate=custom:indimension,tag=BackObshield] remove fullHotbar
execute as @a[predicate=custom:indimension,tag=BackObshield] at @s run function items:util/giveobshield

##Unable message
tag @a[predicate=custom:indimension,tag=MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG,tag=!collisionMSG,tag=!roofMSGFB,tag=!voidMSGFB,tag=!roofMSGOS,tag=!voidMSGOS] add preventionMSG
execute unless entity @s[tag=customPrevention] as @a[predicate=custom:indimension,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or portals.","color":"red"}]
execute as @a[predicate=custom:indimension,tag=roofMSG] run tellraw @s ["",{"text":"Unable to spawn missile near the roof.","color":"red"}]
execute as @a[predicate=custom:indimension,tag=voidMSG] run tellraw @s ["",{"text":"Unable to spawn missile near the void.","color":"red"}]
execute if entity @s[tag=!antigriefOff,scores={gametime=200..}] as @a[predicate=custom:indimension,tag=antigriefMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside own base.","color":"red"}]
execute if entity @s[tag=!antigriefOff,scores={gametime=..199}] as @a[predicate=custom:indimension,tag=antigriefMSG] run tellraw @s ["",{"text":"Unable to collide missiles for the first 10 seconds of a game.","color":"red"}]
execute as @a[predicate=custom:indimension,tag=spawnpointMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside team spawnpoint.","color":"red"}]
execute as @a[predicate=custom:indimension,tag=collisionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside enemy base (Collision Control).","color":"red"}]
execute unless entity @s[tag=fireballOverride] as @a[predicate=custom:indimension,tag=roofMSGFB] run tellraw @s ["",{"text":"Unable to spawn Fireball near the roof.","color":"red"}]
execute unless entity @s[tag=fireballOverride] as @a[predicate=custom:indimension,tag=voidMSGFB] run tellraw @s ["",{"text":"Unable to spawn Fireball near the void.","color":"red"}]
execute as @a[predicate=custom:indimension,tag=roofMSGOS] run tellraw @s ["",{"text":"Unable to spawn Obsidian Shield near the roof.","color":"red"}]
execute as @a[predicate=custom:indimension,tag=voidMSGOS] run tellraw @s ["",{"text":"Unable to spawn Obsidian Shield near the void.","color":"red"}]

##Tag removal
execute unless entity @s[tag=customPrevention] run tag @a[predicate=custom:indimension,tag=preventionMSG] remove preventionMSG
tag @a[predicate=custom:indimension,tag=roofMSG] remove roofMSG
tag @a[predicate=custom:indimension,tag=voidMSG] remove voidMSG
execute unless entity @s[tag=fireballOverride] run tag @a[predicate=custom:indimension,tag=roofMSGFB] remove roofMSGFB
execute unless entity @s[tag=fireballOverride] run tag @a[predicate=custom:indimension,tag=voidMSGFB] remove voidMSGFB
tag @a[predicate=custom:indimension,tag=roofMSGOS] remove roofMSGOS
tag @a[predicate=custom:indimension,tag=voidMSGOS] remove voidMSGOS
tag @a[predicate=custom:indimension,tag=antigriefMSG] remove antigriefMSG
tag @a[predicate=custom:indimension,tag=spawnpointMSG] remove spawnpointMSG
tag @a[predicate=custom:indimension,tag=collisionMSG] remove collisionMSG
tag @a[predicate=custom:indimension,tag=MissiMSG] remove MissiMSG
tag @a[predicate=custom:indimension] remove BackAux
tag @a[predicate=custom:indimension] remove BackToma
tag @a[predicate=custom:indimension] remove BackNull
tag @a[predicate=custom:indimension] remove BackWar
tag @a[predicate=custom:indimension] remove BackBolt
tag @a[predicate=custom:indimension] remove BackHur
tag @a[predicate=custom:indimension] remove BackGuard
tag @a[predicate=custom:indimension] remove BackAnt
tag @a[predicate=custom:indimension] remove BackBlade
tag @a[predicate=custom:indimension] remove BackRift
tag @a[predicate=custom:indimension] remove BackJug
tag @a[predicate=custom:indimension] remove BackSlash
tag @a[predicate=custom:indimension] remove BackCata
tag @a[predicate=custom:indimension] remove BackCitadel
tag @a[predicate=custom:indimension] remove BackGemi
tag @a[predicate=custom:indimension] remove BackLift
tag @a[predicate=custom:indimension] remove BackHyper
tag @a[predicate=custom:indimension] remove BackBull
tag @a[predicate=custom:indimension] remove BackDuplex
tag @a[predicate=custom:indimension] remove BackBroad
tag @a[predicate=custom:indimension] remove BackSurprise
execute unless entity @s[tag=fireballOverride] run tag @a[predicate=custom:indimension] remove BackFireball
tag @a[predicate=custom:indimension] remove BackObshield