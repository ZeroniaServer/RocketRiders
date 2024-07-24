##Gives back the appropriate missile when its placement has been prevented

##Individual missiles
#Auxiliary
scoreboard players remove @a[x=0,tag=BackAux,limit=1] AuxSpawned 1
tag @a[x=0,tag=BackAux,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackAux,limit=1] at @s run function items:missile/heavy/giveaux

#TomaTwo
scoreboard players remove @a[x=0,tag=BackToma,limit=1] TomaSpawned 1
tag @a[x=0,tag=BackToma,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackToma,limit=1] at @s run function items:missile/normal/givetoma

#Chronullifier
scoreboard players remove @a[x=0,tag=BackNull,limit=1] NullSpawned 1
tag @a[x=0,tag=BackNull,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackNull,limit=1] at @s run function items:missile/normal/givenull

#Warhead
scoreboard players remove @a[x=0,tag=BackWar,limit=1] WarSpawned 1
tag @a[x=0,tag=BackWar,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackWar,limit=1] at @s run function items:missile/heavy/givewar

#Thunderbolt
scoreboard players remove @a[x=0,tag=BackBolt,limit=1] ThunSpawned 1
tag @a[x=0,tag=BackBolt,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackBolt,limit=1] at @s run function items:missile/lightning/givethun

#Hurricane
scoreboard players remove @a[x=0,tag=BackHur,limit=1] HurSpawned 1
tag @a[x=0,tag=BackHur,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackHur,limit=1] at @s run function items:missile/lightning/givehur

#Elder Guardian
scoreboard players remove @a[x=0,tag=BackGuard,limit=1] GuardSpawned 1
tag @a[x=0,tag=BackGuard,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackGuard,limit=1] at @s run function items:missile/normal/giveeguard

#A.N.T
scoreboard players remove @a[x=0,tag=BackAnt,limit=1] AntsSpawned 1
tag @a[x=0,tag=BackAnt,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackAnt,limit=1] at @s run function items:missile/normal/giveant

#Blade
scoreboard players remove @a[x=0,tag=BackBlade,limit=1] BladeSpawned 1
tag @a[x=0,tag=BackBlade,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackBlade,limit=1] at @s run function items:missile/normal/giveblade

#Rifter
scoreboard players remove @a[x=0,tag=BackRift,limit=1] RifterSpawned 1
tag @a[x=0,tag=BackRift,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackRift,limit=1] at @s run function items:missile/heavy/giverift

#Juggerbuster
scoreboard players remove @a[x=0,tag=BackJug,limit=1] JugbSpawned 1
tag @a[x=0,tag=BackJug,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackJug,limit=1] at @s run function items:missile/heavy/givejbuster

#Slasher
scoreboard players remove @a[x=0,tag=BackSlash,limit=1] SlashSpawned 1
tag @a[x=0,tag=BackSlash,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackSlash,limit=1] at @s run function items:missile/normal/giveslash

#Catapult
scoreboard players remove @a[x=0,tag=BackCata,limit=1] CataSpawned 1
tag @a[x=0,tag=BackCata,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackCata,limit=1] at @s run function items:missile/normal/givecata

#Citadel
scoreboard players remove @a[x=0,tag=BackCita,limit=1] CitaSpawned 1
tag @a[x=0,tag=BackCitadel,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackCitadel,limit=1] at @s run function items:missile/normal/givecitadel

#Gemini
scoreboard players remove @a[x=0,tag=BackGemi,limit=1] GemiSpawned 1
tag @a[x=0,tag=BackGemi,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackGemi,limit=1] at @s run function items:missile/normal/givegemi

#Lifter
scoreboard players remove @a[x=0,tag=BackLift,limit=1] LifterSpawned 1
tag @a[x=0,tag=BackLift,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackLift,limit=1] at @s run function items:missile/normal/givelift

#Hypersonic
scoreboard players remove @a[x=0,tag=BackHyper,limit=1] HyperSpawned 1
tag @a[x=0,tag=BackHyper,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackHyper,limit=1] at @s run function items:missile/special/givehyper

#Bullet
scoreboard players remove @a[x=0,tag=BackBull,limit=1] BulletSpawned 1
tag @a[x=0,tag=BackBull,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackBull,limit=1] at @s run function items:missile/special/givebull

#Duplex
scoreboard players remove @a[x=0,tag=BackDuplex,limit=1] DuplexSpawned 1
tag @a[x=0,tag=BackDuplex,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackDuplex,limit=1] at @s run function items:missile/special/giveduplex

#Broadsword
scoreboard players remove @a[x=0,tag=BackBroad,limit=1] BroadSpawned 1
tag @a[x=0,tag=BackBroad,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackBroad,limit=1] at @s run function items:missile/special/givebroad

#Surprise Egg
scoreboard players remove @a[x=0,team=Blue,tag=BackSurprise,limit=1] BSurpriseSpawned 1
scoreboard players remove @a[x=0,team=Yellow,tag=BackSurprise,limit=1] YSurpriseSpawned 1
tag @a[x=0,tag=BackSurprise,limit=1] remove fullHotbar
execute as @a[x=0,team=Blue,tag=BackSurprise,limit=1] at @s run function items:surprise_blue/givesurpriseegg
execute as @a[x=0,team=Yellow,tag=BackSurprise,limit=1] at @s run function items:surprise_yellow/givesurpriseegg

#Fireball
scoreboard players remove @a[x=0,tag=BackFireball,limit=1] FireballSpawned 1
tag @a[x=0,tag=BackFireball,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackFireball,limit=1] at @s run function items:util/givefireball

#Cluster Fireball
scoreboard players remove @a[x=0,tag=BackClusterFireball,limit=1] FireballSpawned 1
tag @a[x=0,tag=BackClusterFireball,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackClusterFireball,limit=1] at @s run function items:util/giveclusterfireball

#Obsidian Shield
scoreboard players remove @a[x=0,tag=BackObshield,limit=1] ObshieldSpawned 1
tag @a[x=0,tag=BackObshield,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackObshield,limit=1] at @s run function items:util/giveobshield

##Unable message
tag @a[x=0,tag=MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG,tag=!collisionMSG,tag=!roofMSGFB,tag=!voidMSGFB,tag=!roofMSGOS,tag=!voidMSGOS,limit=1] add preventionMSG
execute unless entity @s[tag=customPrevention] run tellraw @a[x=0,tag=preventionMSG,limit=1] ["",{"text":"Unable to spawn missile inside of obsidian or portals.","color":"red"}]
tellraw @a[x=0,tag=roofMSG,limit=1] ["",{"text":"Unable to spawn missile near the roof.","color":"red"}]
tellraw @a[x=0,tag=voidMSG,limit=1] ["",{"text":"Unable to spawn missile near the void.","color":"red"}]
execute if entity @s[tag=!antigriefOff,scores={gametime=200..}] run tellraw @a[x=0,tag=antigriefMSG,limit=1] ["",{"text":"Unable to spawn missile inside own base.","color":"red"}]
execute if entity @s[tag=!antigriefOff,scores={gametime=..199}] run tellraw @a[x=0,tag=antigriefMSG,limit=1] ["",{"text":"Unable to collide missiles for the first 10 seconds of a game.","color":"red"}]
tellraw @a[x=0,tag=spawnpointMSG,limit=1] ["",{"text":"Unable to spawn missile inside team spawnpoint.","color":"red"}]
tellraw @a[x=0,tag=collisionMSG] ["",{"text":"Unable to spawn missile inside enemy base (Collision Control).","color":"red"}]
tellraw @a[x=0,tag=roofMSGFB,limit=1] ["",{"text":"Unable to spawn Fireball near the roof.","color":"red"}]
tellraw @a[x=0,tag=voidMSGFB,limit=1] ["",{"text":"Unable to spawn Fireball near the void.","color":"red"}]
tellraw @a[x=0,tag=roofMSGCFB,limit=1] ["",{"text":"Unable to spawn Cluster Fireball near the roof.","color":"red"}]
tellraw @a[x=0,tag=voidMSGCFB,limit=1] ["",{"text":"Unable to spawn Cluster Fireball near the void.","color":"red"}]
tellraw @a[x=0,tag=roofMSGOS,limit=1] ["",{"text":"Unable to spawn Obsidian Shield near the roof.","color":"red"}]
tellraw @a[x=0,tag=voidMSGOS,limit=1] ["",{"text":"Unable to spawn Obsidian Shield near the void.","color":"red"}]

##Tag removal
execute unless entity @s[tag=customPrevention] run tag @a[x=0,tag=preventionMSG,limit=1] remove preventionMSG
tag @a[x=0,tag=roofMSG,limit=1] remove roofMSG
tag @a[x=0,tag=voidMSG,limit=1] remove voidMSG
tag @a[x=0,tag=roofMSGFB,limit=1] remove roofMSGFB
tag @a[x=0,tag=voidMSGFB,limit=1] remove voidMSGFB
tag @a[x=0,tag=roofMSGCFB,limit=1] remove roofMSGCFB
tag @a[x=0,tag=voidMSGCFB,limit=1] remove voidMSGCFB
tag @a[x=0,tag=roofMSGOS,limit=1] remove roofMSGOS
tag @a[x=0,tag=voidMSGOS,limit=1] remove voidMSGOS
tag @a[x=0,tag=antigriefMSG,limit=1] remove antigriefMSG
tag @a[x=0,tag=spawnpointMSG,limit=1] remove spawnpointMSG
tag @a[x=0,tag=collisionMSG,limit=1] remove collisionMSG
tag @a[x=0,tag=MissiMSG,limit=1] remove MissiMSG
tag @a[x=0,tag=placer,limit=1] remove BackAux
tag @a[x=0,tag=placer,limit=1] remove BackToma
tag @a[x=0,tag=placer,limit=1] remove BackNull
tag @a[x=0,tag=placer,limit=1] remove BackWar
tag @a[x=0,tag=placer,limit=1] remove BackBolt
tag @a[x=0,tag=placer,limit=1] remove BackHur
tag @a[x=0,tag=placer,limit=1] remove BackGuard
tag @a[x=0,tag=placer,limit=1] remove BackAnt
tag @a[x=0,tag=placer,limit=1] remove BackBlade
tag @a[x=0,tag=placer,limit=1] remove BackRift
tag @a[x=0,tag=placer,limit=1] remove BackJug
tag @a[x=0,tag=placer,limit=1] remove BackSlash
tag @a[x=0,tag=placer,limit=1] remove BackCata
tag @a[x=0,tag=placer,limit=1] remove BackCitadel
tag @a[x=0,tag=placer,limit=1] remove BackGemi
tag @a[x=0,tag=placer,limit=1] remove BackLift
tag @a[x=0,tag=placer,limit=1] remove BackHyper
tag @a[x=0,tag=placer,limit=1] remove BackBull
tag @a[x=0,tag=placer,limit=1] remove BackDuplex
tag @a[x=0,tag=placer,limit=1] remove BackBroad
tag @a[x=0,tag=placer,limit=1] remove BackSurprise
tag @a[x=0,tag=placer,limit=1] remove BackFireball
tag @a[x=0,tag=placer,limit=1] remove BackClusterFireball
tag @a[x=0,tag=placer,limit=1] remove BackObshield