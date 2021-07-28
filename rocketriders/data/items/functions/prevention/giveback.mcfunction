##Gives back the appropriate missile when its placement has been prevented

##Individual missiles
#Auxiliary
scoreboard players remove @a[tag=BackAux] AuxSpawned 1
tag @a[tag=BackAux] remove fullHotbar
execute as @a[tag=BackAux] at @s run function items:missile/heavy/giveaux

#TomaTwo
scoreboard players remove @a[tag=BackToma] TomaSpawned 1
tag @a[tag=BackToma] remove fullHotbar
execute as @a[tag=BackToma] at @s run function items:missile/normal/givetoma

#Chronullifier
scoreboard players remove @a[tag=BackNull] NullSpawned 1
tag @a[tag=BackNull] remove fullHotbar
execute as @a[tag=BackNull] at @s run function items:missile/normal/givenull

#Warhead
scoreboard players remove @a[tag=BackWar] WarSpawned 1
tag @a[tag=BackWar] remove fullHotbar
execute as @a[tag=BackWar] at @s run function items:missile/heavy/givewar

#Thunderbolt
scoreboard players remove @a[tag=BackBolt] ThunSpawned 1
tag @a[tag=BackBolt] remove fullHotbar
execute as @a[tag=BackBolt] at @s run function items:missile/lightning/givethun

#Hurricane
scoreboard players remove @a[tag=BackHur] HurSpawned 1
tag @a[tag=BackHur] remove fullHotbar
execute as @a[tag=BackHur] at @s run function items:missile/lightning/givehur

#Elder Guardian
scoreboard players remove @a[tag=BackGuard] GuardSpawned 1
tag @a[tag=BackGuard] remove fullHotbar
execute as @a[tag=BackGuard] at @s run function items:missile/normal/giveeguard

#A.N.T
scoreboard players remove @a[tag=BackAnt] AntsSpawned 1
tag @a[tag=BackAnt] remove fullHotbar
execute as @a[tag=BackAnt] at @s run function items:missile/normal/giveant

#Blade
scoreboard players remove @a[tag=BackBlade] BladeSpawned 1
tag @a[tag=BackBlade] remove fullHotbar
execute as @a[tag=BackBlade] at @s run function items:missile/normal/giveblade

#Rifter
scoreboard players remove @a[tag=BackRift] RifterSpawned 1
tag @a[tag=BackRift] remove fullHotbar
execute as @a[tag=BackRift] at @s run function items:missile/heavy/giverift

#Juggerbuster
scoreboard players remove @a[tag=BackJug] JugbSpawned 1
tag @a[tag=BackJug] remove fullHotbar
execute as @a[tag=BackJug] at @s run function items:missile/heavy/givejbuster

#Slasher
scoreboard players remove @a[tag=BackSlash] SlashSpawned 1
tag @a[tag=BackSlash] remove fullHotbar
execute as @a[tag=BackSlash] at @s run function items:missile/normal/giveslash

#Catapult
scoreboard players remove @a[tag=BackCata] CataSpawned 1
tag @a[tag=BackCata] remove fullHotbar
execute as @a[tag=BackCata] at @s run function items:missile/normal/givecata

#Citadel
scoreboard players remove @a[tag=BackCita] CitaSpawned 1
tag @a[tag=BackCitadel] remove fullHotbar
execute as @a[tag=BackCitadel] at @s run function items:missile/normal/givecitadel

#Gemini
scoreboard players remove @a[tag=BackGemi] GemiSpawned 1
tag @a[tag=BackGemi] remove fullHotbar
execute as @a[tag=BackGemi] at @s run function items:missile/normal/givegemi

#Lifter
scoreboard players remove @a[tag=BackLift] LifterSpawned 1
tag @a[tag=BackLift] remove fullHotbar
execute as @a[tag=BackLift] at @s run function items:missile/normal/givelift

#Hypersonic
scoreboard players remove @a[tag=BackHyper] HyperSpawned 1
tag @a[tag=BackHyper] remove fullHotbar
execute as @a[tag=BackHyper] at @s run function items:missile/special/givehyper

#Bullet
scoreboard players remove @a[tag=BackBull] BulletSpawned 1
tag @a[tag=BackBull] remove fullHotbar
execute as @a[tag=BackBull] at @s run function items:missile/special/givebull

#Duplex
scoreboard players remove @a[tag=BackDuplex] DuplexSpawned 1
tag @a[tag=BackDuplex] remove fullHotbar
execute as @a[tag=BackDuplex] at @s run function items:missile/special/giveduplex

#Broadsword
scoreboard players remove @a[tag=BackBroad] BroadSpawned 1
tag @a[tag=BackBroad] remove fullHotbar
execute as @a[tag=BackBroad] at @s run function items:missile/special/givebroad

#Surprise Egg
scoreboard players remove @a[team=Blue,tag=BackSurprise] BSurpriseSpawned 1
scoreboard players remove @a[team=Yellow,tag=BackSurprise] YSurpriseSpawned 1
tag @a[tag=BackSurprise] remove fullHotbar
execute as @a[team=Blue,tag=BackSurprise] at @s run function items:surprise_blue/givesurpriseegg
execute as @a[team=Yellow,tag=BackSurprise] at @s run function items:surprise_yellow/givesurpriseegg

##Unable message
tag @a[tag=MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG] add preventionMSG
execute unless entity @s[tag=customPrevention] as @a[tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or portals.","color":"red"}]
execute as @a[tag=roofMSG] run tellraw @s ["",{"text":"Unable to spawn missile near the roof.","color":"red"}]
execute as @a[tag=voidMSG] run tellraw @s ["",{"text":"Unable to spawn missile near the void.","color":"red"}]
execute if entity @s[tag=!antigriefOff,scores={gametime=200..}] as @a[tag=antigriefMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside own base.","color":"red"}]
execute if entity @s[tag=!antigriefOff,scores={gametime=..199}] as @a[tag=antigriefMSG] run tellraw @s ["",{"text":"Unable to collide missiles for the first 10 seconds of a game.","color":"red"}]
execute as @a[tag=spawnpointMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside team spawnpoint.","color":"red"}]

##Tag removal
execute unless entity @s[tag=customPrevention] run tag @a[tag=preventionMSG] remove preventionMSG
tag @a[tag=roofMSG] remove roofMSG
tag @a[tag=voidMSG] remove voidMSG
tag @a[tag=antigriefMSG] remove antigriefMSG
tag @a[tag=spawnpointMSG] remove spawnpointMSG
tag @a[tag=MissiMSG] remove MissiMSG
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
tag @a remove BackGemi
tag @a remove BackLift
tag @a remove BackHyper
tag @a remove BackBull
tag @a remove BackDuplex
tag @a remove BackBroad
tag @a remove BackSurprise