##Gives back the appropriate missile when its placement has been prevented

execute as @a[x=0] unless items entity @s weapon.mainhand * run tag @s add giveback.mainhand_free

##Individual missiles
#Auxiliary
scoreboard players remove @a[x=0,tag=BackAux,limit=1] AuxSpawned 1
tag @a[x=0,tag=BackAux,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackAux,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/heavy/auxiliary
execute as @a[x=0,tag=BackAux,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/heavy/auxiliary

#TomaTwo
scoreboard players remove @a[x=0,tag=BackToma,limit=1] TomaSpawned 1
tag @a[x=0,tag=BackToma,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackToma,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/tomatwo
execute as @a[x=0,tag=BackToma,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/tomatwo

#Chronullifier
scoreboard players remove @a[x=0,tag=BackNull,limit=1] NullSpawned 1
tag @a[x=0,tag=BackNull,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackNull,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/chronullifier
execute as @a[x=0,tag=BackNull,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/chronullifier

#Warhead
scoreboard players remove @a[x=0,tag=BackWar,limit=1] WarSpawned 1
tag @a[x=0,tag=BackWar,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackWar,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/heavy/warhead
execute as @a[x=0,tag=BackWar,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/heavy/warhead

#Thunderbolt
scoreboard players remove @a[x=0,tag=BackBolt,limit=1] ThunSpawned 1
tag @a[x=0,tag=BackBolt,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackBolt,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/lightning/thunderbolt
execute as @a[x=0,tag=BackBolt,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/lightning/thunderbolt

#Hurricane
scoreboard players remove @a[x=0,tag=BackHur,limit=1] HurSpawned 1
tag @a[x=0,tag=BackHur,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackHur,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/lightning/hurricane
execute as @a[x=0,tag=BackHur,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/lightning/hurricane

#Elder Guardian
scoreboard players remove @a[x=0,tag=BackGuard,limit=1] GuardSpawned 1
tag @a[x=0,tag=BackGuard,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackGuard,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/elder_guardian
execute as @a[x=0,tag=BackGuard,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/elder_guardian

#A.N.T
scoreboard players remove @a[x=0,tag=BackAnt,limit=1] AntsSpawned 1
tag @a[x=0,tag=BackAnt,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackAnt,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/ant
execute as @a[x=0,tag=BackAnt,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/ant

#Blade
scoreboard players remove @a[x=0,tag=BackBlade,limit=1] BladeSpawned 1
tag @a[x=0,tag=BackBlade,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackBlade,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/blade
execute as @a[x=0,tag=BackBlade,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/blade

#Rifter
scoreboard players remove @a[x=0,tag=BackRift,limit=1] RifterSpawned 1
tag @a[x=0,tag=BackRift,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackRift,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/heavy/rifter
execute as @a[x=0,tag=BackRift,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/heavy/rifter

#Juggerbuster
scoreboard players remove @a[x=0,tag=BackJug,limit=1] JugbSpawned 1
tag @a[x=0,tag=BackJug,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackJug,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/heavy/juggerbuster
execute as @a[x=0,tag=BackJug,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/heavy/juggerbuster

#Slasher
scoreboard players remove @a[x=0,tag=BackSlash,limit=1] SlashSpawned 1
tag @a[x=0,tag=BackSlash,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackSlash,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/slasher
execute as @a[x=0,tag=BackSlash,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/slasher

#Catapult
scoreboard players remove @a[x=0,tag=BackCata,limit=1] CataSpawned 1
tag @a[x=0,tag=BackCata,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackCata,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/catapult
execute as @a[x=0,tag=BackCata,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/catapult

#Citadel
scoreboard players remove @a[x=0,tag=BackCita,limit=1] CitaSpawned 1
tag @a[x=0,tag=BackCitadel,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackCitadel,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/citadel
execute as @a[x=0,tag=BackCitadel,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/citadel

#Gemini
scoreboard players remove @a[x=0,tag=BackGemi,limit=1] GemiSpawned 1
tag @a[x=0,tag=BackGemi,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackGemi,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/gemini
execute as @a[x=0,tag=BackGemi,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/gemini

#Lifter
scoreboard players remove @a[x=0,tag=BackLift,limit=1] LifterSpawned 1
tag @a[x=0,tag=BackLift,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackLift,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/normal/lifter
execute as @a[x=0,tag=BackLift,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/normal/lifter

#Hypersonic
scoreboard players remove @a[x=0,tag=BackHyper,limit=1] HyperSpawned 1
tag @a[x=0,tag=BackHyper,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackHyper,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/special/hypersonic
execute as @a[x=0,tag=BackHyper,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/special/hypersonic

#Bullet
scoreboard players remove @a[x=0,tag=BackBull,limit=1] BulletSpawned 1
tag @a[x=0,tag=BackBull,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackBull,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/special/bullet
execute as @a[x=0,tag=BackBull,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/special/bullet

#Duplex
scoreboard players remove @a[x=0,tag=BackDuplex,limit=1] DuplexSpawned 1
tag @a[x=0,tag=BackDuplex,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackDuplex,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/special/duplex
execute as @a[x=0,tag=BackDuplex,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/special/duplex

#Broadsword
scoreboard players remove @a[x=0,tag=BackBroad,limit=1] BroadSpawned 1
tag @a[x=0,tag=BackBroad,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackBroad,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/special/broadsword
execute as @a[x=0,tag=BackBroad,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/special/broadsword

#Surprise Egg
scoreboard players remove @a[x=0,predicate=custom:team/blue,tag=BackSurprise,limit=1] BSurpriseSpawned 1
scoreboard players remove @a[x=0,predicate=custom:team/yellow,tag=BackSurprise,limit=1] YSurpriseSpawned 1
tag @a[x=0,tag=BackSurprise,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackSurprise,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:missile/surprise/all
execute as @a[x=0,tag=BackSurprise,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:missile/surprise/all

#Fireball
scoreboard players remove @a[x=0,tag=BackFireball,limit=1] FireballSpawned 1
tag @a[x=0,tag=BackFireball,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackFireball,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:util/fireball
execute as @a[x=0,tag=BackFireball,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:util/fireball

#Cluster Fireball
scoreboard players remove @a[x=0,tag=BackClusterFireball,limit=1] FireballSpawned 1
tag @a[x=0,tag=BackClusterFireball,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackClusterFireball,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:util/cluster_fireball
execute as @a[x=0,tag=BackClusterFireball,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:util/cluster_fireball

#Obsidian Shield
scoreboard players remove @a[x=0,tag=BackObshield,limit=1] ObshieldSpawned 1
tag @a[x=0,tag=BackObshield,limit=1] remove fullHotbar
execute as @a[x=0,tag=BackObshield,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:util/obsidian_shield
execute as @a[x=0,tag=BackObshield,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:util/obsidian_shield

tag @a remove giveback.mainhand_free

##Unable message
tag @a[x=0,tag=MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG,tag=!collisionMSG,tag=!roofMSGFB,tag=!voidMSGFB,tag=!roofMSGOS,tag=!voidMSGOS,limit=1] add preventionMSG
execute unless predicate game:gamemode_components/custom_pierce_prevention run tellraw @a[x=0,tag=preventionMSG,limit=1] ["",{"text":"Unable to spawn missile inside of portal.","color":"red"}]
tellraw @a[x=0,tag=roofMSG,limit=1] ["",{"text":"Unable to spawn missile too high.","color":"red"}]
tellraw @a[x=0,tag=voidMSG,limit=1] ["",{"text":"Unable to spawn missile near the void.","color":"red"}]
execute if score $game_duration global matches 200.. unless predicate game:gamemode_components/disable_antigrief_system run tellraw @a[x=0,tag=antigriefMSG,limit=1] ["",{"text":"Unable to spawn missile inside own base.","color":"red"}]
execute if score $game_duration global matches ..199 unless predicate game:gamemode_components/disable_antigrief_system run tellraw @a[x=0,tag=antigriefMSG,limit=1] ["",{"text":"Unable to collide missiles for the first 10 seconds of the match.","color":"red"}]
tellraw @a[x=0,tag=spawnpointMSG,limit=1] ["",{"text":"Unable to spawn missile inside team spawnpoint.","color":"red"}]
tellraw @a[x=0,tag=collisionMSG] ["",{"text":"Unable to spawn missile inside enemy base (Collision Control).","color":"red"}]
tellraw @a[x=0,tag=roofMSGFB,limit=1] ["",{"text":"Unable to spawn Fireball too high.","color":"red"}]
tellraw @a[x=0,tag=voidMSGFB,limit=1] ["",{"text":"Unable to spawn Fireball near the void.","color":"red"}]
tellraw @a[x=0,tag=roofMSGCFB,limit=1] ["",{"text":"Unable to spawn Cluster Fireball too high.","color":"red"}]
tellraw @a[x=0,tag=voidMSGCFB,limit=1] ["",{"text":"Unable to spawn Cluster Fireball near the void.","color":"red"}]
tellraw @a[x=0,tag=roofMSGOS,limit=1] ["",{"text":"Unable to spawn Obsidian Shield too high.","color":"red"}]
tellraw @a[x=0,tag=voidMSGOS,limit=1] ["",{"text":"Unable to spawn Obsidian Shield near the void.","color":"red"}]

##Tag removal
execute unless predicate game:gamemode_components/custom_pierce_prevention run tag @a[x=0,tag=preventionMSG,limit=1] remove preventionMSG
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