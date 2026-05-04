##Gives back the appropriate missile when its placement has been prevented

execute as @a[x=0] unless items entity @s weapon.mainhand * run tag @s add giveback.mainhand_free

##Individual missiles
#Auxiliary
scoreboard players remove @a[x=0,tag=BackAux,limit=1] AuxSpawned 1
execute as @a[x=0,tag=BackAux,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/auxiliary
execute as @a[x=0,tag=BackAux,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/auxiliary

#TomaTwo
scoreboard players remove @a[x=0,tag=BackToma,limit=1] TomaSpawned 1
execute as @a[x=0,tag=BackToma,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/tomatwo
execute as @a[x=0,tag=BackToma,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/tomatwo

#Chronullifier
scoreboard players remove @a[x=0,tag=BackNull,limit=1] NullSpawned 1
execute as @a[x=0,tag=BackNull,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/chronullifier
execute as @a[x=0,tag=BackNull,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/chronullifier

#Warhead
scoreboard players remove @a[x=0,tag=BackWar,limit=1] WarSpawned 1
execute as @a[x=0,tag=BackWar,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/warhead
execute as @a[x=0,tag=BackWar,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/warhead

#Thunderbolt
scoreboard players remove @a[x=0,tag=BackBolt,limit=1] ThunSpawned 1
execute as @a[x=0,tag=BackBolt,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/thunderbolt
execute as @a[x=0,tag=BackBolt,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/thunderbolt

#Hurricane
scoreboard players remove @a[x=0,tag=BackHur,limit=1] HurSpawned 1
execute as @a[x=0,tag=BackHur,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/hurricane
execute as @a[x=0,tag=BackHur,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/hurricane

#Elder Guardian
scoreboard players remove @a[x=0,tag=BackGuard,limit=1] GuardSpawned 1
execute as @a[x=0,tag=BackGuard,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/elder_guardian
execute as @a[x=0,tag=BackGuard,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/elder_guardian

#A.N.T
scoreboard players remove @a[x=0,tag=BackAnt,limit=1] AntsSpawned 1
execute as @a[x=0,tag=BackAnt,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/ant
execute as @a[x=0,tag=BackAnt,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/ant

#Blade
scoreboard players remove @a[x=0,tag=BackBlade,limit=1] BladeSpawned 1
execute as @a[x=0,tag=BackBlade,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/blade
execute as @a[x=0,tag=BackBlade,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/blade

#Rifter
scoreboard players remove @a[x=0,tag=BackRift,limit=1] RifterSpawned 1
execute as @a[x=0,tag=BackRift,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/rifter
execute as @a[x=0,tag=BackRift,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/rifter

#Juggerbuster
scoreboard players remove @a[x=0,tag=BackJug,limit=1] JugbSpawned 1
execute as @a[x=0,tag=BackJug,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/juggerbuster
execute as @a[x=0,tag=BackJug,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/juggerbuster

#Slasher
scoreboard players remove @a[x=0,tag=BackSlash,limit=1] SlashSpawned 1
execute as @a[x=0,tag=BackSlash,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/slasher
execute as @a[x=0,tag=BackSlash,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/slasher

#Catapult
scoreboard players remove @a[x=0,tag=BackCata,limit=1] CataSpawned 1
execute as @a[x=0,tag=BackCata,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/catapult
execute as @a[x=0,tag=BackCata,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/catapult

#Citadel
scoreboard players remove @a[x=0,tag=BackCita,limit=1] CitaSpawned 1
execute as @a[x=0,tag=BackCitadel,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/citadel
execute as @a[x=0,tag=BackCitadel,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/citadel

#Gemini
scoreboard players remove @a[x=0,tag=BackGemi,limit=1] GemiSpawned 1
execute as @a[x=0,tag=BackGemi,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/gemini
execute as @a[x=0,tag=BackGemi,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/gemini

#Lifter
scoreboard players remove @a[x=0,tag=BackLift,limit=1] LifterSpawned 1
execute as @a[x=0,tag=BackLift,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/lifter
execute as @a[x=0,tag=BackLift,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/lifter

#Hypersonic
scoreboard players remove @a[x=0,tag=BackHyper,limit=1] HyperSpawned 1
execute as @a[x=0,tag=BackHyper,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/hypersonic
execute as @a[x=0,tag=BackHyper,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/hypersonic

#Bullet
scoreboard players remove @a[x=0,tag=BackBull,limit=1] BulletSpawned 1
execute as @a[x=0,tag=BackBull,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/bullet
execute as @a[x=0,tag=BackBull,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/bullet

#Duplex
scoreboard players remove @a[x=0,tag=BackDuplex,limit=1] DuplexSpawned 1
execute as @a[x=0,tag=BackDuplex,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/duplex
execute as @a[x=0,tag=BackDuplex,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/duplex

#Broadsword
scoreboard players remove @a[x=0,tag=BackBroad,limit=1] BroadSpawned 1
execute as @a[x=0,tag=BackBroad,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/broadsword
execute as @a[x=0,tag=BackBroad,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/missile/broadsword

#Surprise Egg
scoreboard players remove @a[x=0,predicate=custom:team/blue,tag=BackSurprise,limit=1] BSurpriseSpawned 1
scoreboard players remove @a[x=0,predicate=custom:team/yellow,tag=BackSurprise,limit=1] YSurpriseSpawned 1
execute as @a[x=0,tag=BackSurprise,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/surprise_egg
execute as @a[x=0,tag=BackSurprise,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/surprise_egg

#Fireball
execute as @a[x=0,tag=BackFireball,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/fireball
execute as @a[x=0,tag=BackFireball,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/fireball

#Cluster Fireball
execute as @a[x=0,tag=BackClusterFireball,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/cluster_fireball
execute as @a[x=0,tag=BackClusterFireball,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/cluster_fireball

#Obsidian Shield
scoreboard players remove @a[x=0,tag=BackObshield,limit=1] ObshieldSpawned 1
execute as @a[x=0,tag=BackObshield,tag=giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot replace entity @s weapon.mainhand loot items:item/obsidian_shield
execute as @a[x=0,tag=BackObshield,tag=!giveback.mainhand_free,gamemode=!creative,limit=1] at @s run loot give @s loot items:item/obsidian_shield

tag @a remove giveback.mainhand_free

##Unable message
tag @a[x=0,tag=MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG,tag=!collisionMSG,tag=!roofMSGFB,tag=!voidMSGFB,tag=!spawnzoneMSGFB,tag=!roofMSGCFB,tag=!voidMSGCFB,tag=!spawnzoneMSGCFB,tag=!roofMSGOS,tag=!voidMSGOS,limit=1] add preventionMSG
execute unless predicate game:match_components/custom_pierce_prevention run title @a[x=0,tag=preventionMSG,limit=1] actionbar {color:"red",text:"You cannot spawn missiles inside of portals"}
title @a[x=0,tag=roofMSG,limit=1] actionbar {color:"red",text:"You cannot spawn missiles at this height"}
title @a[x=0,tag=voidMSG,limit=1] actionbar {color:"red",text:"You cannot spawn missiles at this height"}
execute if score $match_play_time global matches 200.. unless predicate game:match_components/disable_antigrief_system run title @a[x=0,tag=antigriefMSG,limit=1] actionbar {color:"red",text:"You cannot spawn missiles inside your own base"}
execute if score $match_play_time global matches ..199 unless predicate game:match_components/disable_antigrief_system run title @a[x=0,tag=antigriefMSG,limit=1] actionbar {color:"red",text:"You cannot collide missiles for the first 10 seconds of a match"}
title @a[x=0,tag=spawnpointMSG,limit=1] actionbar {color:"red",text:"You cannot spawn missiles inside a team's spawnpoint"}
title @a[x=0,tag=collisionMSG] actionbar [{color:"red",text:"You cannot spawn missiles inside the enemy's base "},{italic:true,text:"[Collision Control]"}]
title @a[x=0,tag=roofMSGFB,limit=1] actionbar {color:"red",text:"You cannot spawn fireballs at this height"}
title @a[x=0,tag=voidMSGFB,limit=1] actionbar {color:"red",text:"You cannot spawn fireballs at this height"}
title @a[x=0,tag=spawnzoneMSGFB,limit=1] actionbar {color:"red",text:"You cannot spawn fireballs near an enemy's spawnpoint"}
title @a[x=0,tag=roofMSGCFB,limit=1] actionbar {color:"red",text:"You cannot spawn cluster fireballs at this height"}
title @a[x=0,tag=voidMSGCFB,limit=1] actionbar {color:"red",text:"You cannot spawn cluster fireballs at this height"}
title @a[x=0,tag=spawnzoneMSGCFB,limit=1] actionbar {color:"red",text:"You cannot spawn cluster fireballs near an enemy's spawnpoint"}
title @a[x=0,tag=roofMSGOS,limit=1] actionbar {color:"red",text:"You cannot spawn obsidian shields at this height"}
title @a[x=0,tag=voidMSGOS,limit=1] actionbar {color:"red",text:"You cannot spawn obsidian shields at this height"}

execute as @a[x=0] unless entity @s[tag=!MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG,tag=!collisionMSG,tag=!roofMSGFB,tag=!voidMSGFB,tag=!spawnzoneMSGFB,tag=!roofMSGCFB,tag=!voidMSGCFB,tag=!spawnzoneMSGCFB,tag=!roofMSGOS,tag=!voidMSGOS,tag=!preventionMSG] run function custom:player/delay_actionbar

##Tag removal
execute unless predicate game:match_components/custom_pierce_prevention run tag @a[x=0,tag=preventionMSG,limit=1] remove preventionMSG
tag @a[x=0,tag=roofMSG,limit=1] remove roofMSG
tag @a[x=0,tag=voidMSG,limit=1] remove voidMSG
tag @a[x=0,tag=roofMSGFB,limit=1] remove roofMSGFB
tag @a[x=0,tag=voidMSGFB,limit=1] remove voidMSGFB
tag @a[x=0,tag=roofMSGCFB,limit=1] remove roofMSGCFB
tag @a[x=0,tag=spawnzoneMSGFB,limit=1] remove spawnzoneMSGFB
tag @a[x=0,tag=voidMSGCFB,limit=1] remove voidMSGCFB
tag @a[x=0,tag=roofMSGOS,limit=1] remove roofMSGOS
tag @a[x=0,tag=spawnzoneMSGCFB,limit=1] remove spawnzoneMSGCFB
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