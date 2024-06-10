##Gives back the appropriate missile when its placement has been prevented

##Individual missiles
#Auxiliary
scoreboard players remove @a[x=0,tag=BackAux] AuxSpawned 1
tag @a[x=0,tag=BackAux] remove fullHotbar
execute as @a[x=0,tag=BackAux] at @s run function items:missile/heavy/giveaux

#TomaTwo
scoreboard players remove @a[x=0,tag=BackToma] TomaSpawned 1
tag @a[x=0,tag=BackToma] remove fullHotbar
execute as @a[x=0,tag=BackToma] at @s run function items:missile/normal/givetoma

#Chronullifier
scoreboard players remove @a[x=0,tag=BackNull] NullSpawned 1
tag @a[x=0,tag=BackNull] remove fullHotbar
execute as @a[x=0,tag=BackNull] at @s run function items:missile/normal/givenull

#Warhead
scoreboard players remove @a[x=0,tag=BackWar] WarSpawned 1
tag @a[x=0,tag=BackWar] remove fullHotbar
execute as @a[x=0,tag=BackWar] at @s run function items:missile/heavy/givewar

#Thunderbolt
scoreboard players remove @a[x=0,tag=BackBolt] ThunSpawned 1
tag @a[x=0,tag=BackBolt] remove fullHotbar
execute as @a[x=0,tag=BackBolt] at @s run function items:missile/lightning/givethun

#Hurricane
scoreboard players remove @a[x=0,tag=BackHur] HurSpawned 1
tag @a[x=0,tag=BackHur] remove fullHotbar
execute as @a[x=0,tag=BackHur] at @s run function items:missile/lightning/givehur

#Elder Guardian
scoreboard players remove @a[x=0,tag=BackGuard] GuardSpawned 1
tag @a[x=0,tag=BackGuard] remove fullHotbar
execute as @a[x=0,tag=BackGuard] at @s run function items:missile/normal/giveeguard

#A.N.T
scoreboard players remove @a[x=0,tag=BackAnt] AntsSpawned 1
tag @a[x=0,tag=BackAnt] remove fullHotbar
execute as @a[x=0,tag=BackAnt] at @s run function items:missile/normal/giveant

#Blade
scoreboard players remove @a[x=0,tag=BackBlade] BladeSpawned 1
tag @a[x=0,tag=BackBlade] remove fullHotbar
execute as @a[x=0,tag=BackBlade] at @s run function items:missile/normal/giveblade

#Rifter
scoreboard players remove @a[x=0,tag=BackRift] RifterSpawned 1
tag @a[x=0,tag=BackRift] remove fullHotbar
execute as @a[x=0,tag=BackRift] at @s run function items:missile/heavy/giverift

#Juggerbuster
scoreboard players remove @a[x=0,tag=BackJug] JugbSpawned 1
tag @a[x=0,tag=BackJug] remove fullHotbar
execute as @a[x=0,tag=BackJug] at @s run function items:missile/heavy/givejbuster

#Slasher
scoreboard players remove @a[x=0,tag=BackSlash] SlashSpawned 1
tag @a[x=0,tag=BackSlash] remove fullHotbar
execute as @a[x=0,tag=BackSlash] at @s run function items:missile/normal/giveslash

#Catapult
scoreboard players remove @a[x=0,tag=BackCata] CataSpawned 1
tag @a[x=0,tag=BackCata] remove fullHotbar
execute as @a[x=0,tag=BackCata] at @s run function items:missile/normal/givecata

#Citadel
scoreboard players remove @a[x=0,tag=BackCita] CitaSpawned 1
tag @a[x=0,tag=BackCitadel] remove fullHotbar
execute as @a[x=0,tag=BackCitadel] at @s run function items:missile/normal/givecitadel

#Gemini
scoreboard players remove @a[x=0,tag=BackGemi] GemiSpawned 1
tag @a[x=0,tag=BackGemi] remove fullHotbar
execute as @a[x=0,tag=BackGemi] at @s run function items:missile/normal/givegemi

#Lifter
scoreboard players remove @a[x=0,tag=BackLift] LifterSpawned 1
tag @a[x=0,tag=BackLift] remove fullHotbar
execute as @a[x=0,tag=BackLift] at @s run function items:missile/normal/givelift

#Hypersonic
scoreboard players remove @a[x=0,tag=BackHyper] HyperSpawned 1
tag @a[x=0,tag=BackHyper] remove fullHotbar
execute as @a[x=0,tag=BackHyper] at @s run function items:missile/special/givehyper

#Bullet
scoreboard players remove @a[x=0,tag=BackBull] BulletSpawned 1
tag @a[x=0,tag=BackBull] remove fullHotbar
execute as @a[x=0,tag=BackBull] at @s run function items:missile/special/givebull

#Duplex
scoreboard players remove @a[x=0,tag=BackDuplex] DuplexSpawned 1
tag @a[x=0,tag=BackDuplex] remove fullHotbar
execute as @a[x=0,tag=BackDuplex] at @s run function items:missile/special/giveduplex

#Broadsword
scoreboard players remove @a[x=0,tag=BackBroad] BroadSpawned 1
tag @a[x=0,tag=BackBroad] remove fullHotbar
execute as @a[x=0,tag=BackBroad] at @s run function items:missile/special/givebroad

#Surprise Egg
scoreboard players remove @a[x=0,team=Blue,tag=BackSurprise] BSurpriseSpawned 1
scoreboard players remove @a[x=0,team=Yellow,tag=BackSurprise] YSurpriseSpawned 1
tag @a[x=0,tag=BackSurprise] remove fullHotbar
execute as @a[x=0,team=Blue,tag=BackSurprise] at @s run function items:surprise_blue/givesurpriseegg
execute as @a[x=0,team=Yellow,tag=BackSurprise] at @s run function items:surprise_yellow/givesurpriseegg

#Fireball
scoreboard players remove @a[x=0,tag=BackFireball] FireballSpawned 1
tag @a[x=0,tag=BackFireball] remove fullHotbar
execute if entity @s[tag=!fireballOverride] as @a[x=0,tag=BackFireball] at @s run function items:util/givefireball

#Obsidian Shield
scoreboard players remove @a[x=0,tag=BackObshield] ObshieldSpawned 1
tag @a[x=0,tag=BackObshield] remove fullHotbar
execute as @a[x=0,tag=BackObshield] at @s run function items:util/giveobshield

##Unable message
tag @a[x=0,tag=MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG,tag=!collisionMSG,tag=!roofMSGFB,tag=!voidMSGFB,tag=!roofMSGOS,tag=!voidMSGOS] add preventionMSG
execute unless entity @s[tag=customPrevention] as @a[x=0,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or portals.","color":"red"}]
execute as @a[x=0,tag=roofMSG] run tellraw @s ["",{"text":"Unable to spawn missile near the roof.","color":"red"}]
execute as @a[x=0,tag=voidMSG] run tellraw @s ["",{"text":"Unable to spawn missile near the void.","color":"red"}]
execute if entity @s[tag=!antigriefOff,scores={gametime=200..}] as @a[x=0,tag=antigriefMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside own base.","color":"red"}]
execute if entity @s[tag=!antigriefOff,scores={gametime=..199}] as @a[x=0,tag=antigriefMSG] run tellraw @s ["",{"text":"Unable to collide missiles for the first 10 seconds of a game.","color":"red"}]
execute as @a[x=0,tag=spawnpointMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside team spawnpoint.","color":"red"}]
execute as @a[x=0,tag=collisionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside enemy base (Collision Control).","color":"red"}]
execute unless entity @s[tag=fireballOverride] as @a[x=0,tag=roofMSGFB] run tellraw @s ["",{"text":"Unable to spawn Fireball near the roof.","color":"red"}]
execute unless entity @s[tag=fireballOverride] as @a[x=0,tag=voidMSGFB] run tellraw @s ["",{"text":"Unable to spawn Fireball near the void.","color":"red"}]
execute as @a[x=0,tag=roofMSGOS] run tellraw @s ["",{"text":"Unable to spawn Obsidian Shield near the roof.","color":"red"}]
execute as @a[x=0,tag=voidMSGOS] run tellraw @s ["",{"text":"Unable to spawn Obsidian Shield near the void.","color":"red"}]

##Tag removal
execute unless entity @s[tag=customPrevention] run tag @a[x=0,tag=preventionMSG] remove preventionMSG
tag @a[x=0,tag=roofMSG] remove roofMSG
tag @a[x=0,tag=voidMSG] remove voidMSG
execute unless entity @s[tag=fireballOverride] run tag @a[x=0,tag=roofMSGFB] remove roofMSGFB
execute unless entity @s[tag=fireballOverride] run tag @a[x=0,tag=voidMSGFB] remove voidMSGFB
tag @a[x=0,tag=roofMSGOS] remove roofMSGOS
tag @a[x=0,tag=voidMSGOS] remove voidMSGOS
tag @a[x=0,tag=antigriefMSG] remove antigriefMSG
tag @a[x=0,tag=spawnpointMSG] remove spawnpointMSG
tag @a[x=0,tag=collisionMSG] remove collisionMSG
tag @a[x=0,tag=MissiMSG] remove MissiMSG
tag @a[x=0] remove BackAux
tag @a[x=0] remove BackToma
tag @a[x=0] remove BackNull
tag @a[x=0] remove BackWar
tag @a[x=0] remove BackBolt
tag @a[x=0] remove BackHur
tag @a[x=0] remove BackGuard
tag @a[x=0] remove BackAnt
tag @a[x=0] remove BackBlade
tag @a[x=0] remove BackRift
tag @a[x=0] remove BackJug
tag @a[x=0] remove BackSlash
tag @a[x=0] remove BackCata
tag @a[x=0] remove BackCitadel
tag @a[x=0] remove BackGemi
tag @a[x=0] remove BackLift
tag @a[x=0] remove BackHyper
tag @a[x=0] remove BackBull
tag @a[x=0] remove BackDuplex
tag @a[x=0] remove BackBroad
tag @a[x=0] remove BackSurprise
execute unless entity @s[tag=fireballOverride] run tag @a[x=0] remove BackFireball
tag @a[x=0] remove BackObshield