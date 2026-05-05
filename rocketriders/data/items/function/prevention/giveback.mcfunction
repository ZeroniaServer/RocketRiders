##Gives back the appropriate missile when its placement has been prevented

execute as @a[x=0] unless items entity @s weapon.mainhand * run tag @s add giveback.mainhand_free

##Individual missiles
#Auxiliary
scoreboard players remove @a[limit=1,x=0,tag=BackAux] AuxSpawned 1
execute as @a[limit=1,x=0,tag=BackAux,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/auxiliary
execute as @a[limit=1,x=0,tag=BackAux,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/auxiliary

#TomaTwo
scoreboard players remove @a[limit=1,x=0,tag=BackToma] TomaSpawned 1
execute as @a[limit=1,x=0,tag=BackToma,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/tomatwo
execute as @a[limit=1,x=0,tag=BackToma,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/tomatwo

#Chronullifier
scoreboard players remove @a[limit=1,x=0,tag=BackNull] NullSpawned 1
execute as @a[limit=1,x=0,tag=BackNull,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/chronullifier
execute as @a[limit=1,x=0,tag=BackNull,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/chronullifier

#Warhead
scoreboard players remove @a[limit=1,x=0,tag=BackWar] WarSpawned 1
execute as @a[limit=1,x=0,tag=BackWar,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/warhead
execute as @a[limit=1,x=0,tag=BackWar,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/warhead

#Thunderbolt
scoreboard players remove @a[limit=1,x=0,tag=BackBolt] ThunSpawned 1
execute as @a[limit=1,x=0,tag=BackBolt,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/thunderbolt
execute as @a[limit=1,x=0,tag=BackBolt,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/thunderbolt

#Hurricane
scoreboard players remove @a[limit=1,x=0,tag=BackHur] HurSpawned 1
execute as @a[limit=1,x=0,tag=BackHur,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/hurricane
execute as @a[limit=1,x=0,tag=BackHur,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/hurricane

#Elder Guardian
scoreboard players remove @a[limit=1,x=0,tag=BackGuard] GuardSpawned 1
execute as @a[limit=1,x=0,tag=BackGuard,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/elder_guardian
execute as @a[limit=1,x=0,tag=BackGuard,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/elder_guardian

#A.N.T
scoreboard players remove @a[limit=1,x=0,tag=BackAnt] AntsSpawned 1
execute as @a[limit=1,x=0,tag=BackAnt,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/ant
execute as @a[limit=1,x=0,tag=BackAnt,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/ant

#Blade
scoreboard players remove @a[limit=1,x=0,tag=BackBlade] BladeSpawned 1
execute as @a[limit=1,x=0,tag=BackBlade,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/blade
execute as @a[limit=1,x=0,tag=BackBlade,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/blade

#Rifter
scoreboard players remove @a[limit=1,x=0,tag=BackRift] RifterSpawned 1
execute as @a[limit=1,x=0,tag=BackRift,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/rifter
execute as @a[limit=1,x=0,tag=BackRift,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/rifter

#Juggerbuster
scoreboard players remove @a[limit=1,x=0,tag=BackJug] JugbSpawned 1
execute as @a[limit=1,x=0,tag=BackJug,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/juggerbuster
execute as @a[limit=1,x=0,tag=BackJug,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/juggerbuster

#Slasher
scoreboard players remove @a[limit=1,x=0,tag=BackSlash] SlashSpawned 1
execute as @a[limit=1,x=0,tag=BackSlash,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/slasher
execute as @a[limit=1,x=0,tag=BackSlash,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/slasher

#Catapult
scoreboard players remove @a[limit=1,x=0,tag=BackCata] CataSpawned 1
execute as @a[limit=1,x=0,tag=BackCata,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/catapult
execute as @a[limit=1,x=0,tag=BackCata,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/catapult

#Citadel
scoreboard players remove @a[limit=1,x=0,tag=BackCita] CitaSpawned 1
execute as @a[limit=1,x=0,tag=BackCitadel,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/citadel
execute as @a[limit=1,x=0,tag=BackCitadel,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/citadel

#Gemini
scoreboard players remove @a[limit=1,x=0,tag=BackGemi] GemiSpawned 1
execute as @a[limit=1,x=0,tag=BackGemi,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/gemini
execute as @a[limit=1,x=0,tag=BackGemi,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/gemini

#Lifter
scoreboard players remove @a[limit=1,x=0,tag=BackLift] LifterSpawned 1
execute as @a[limit=1,x=0,tag=BackLift,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/lifter
execute as @a[limit=1,x=0,tag=BackLift,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/lifter

#Hypersonic
scoreboard players remove @a[limit=1,x=0,tag=BackHyper] HyperSpawned 1
execute as @a[limit=1,x=0,tag=BackHyper,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/hypersonic
execute as @a[limit=1,x=0,tag=BackHyper,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/hypersonic

#Bullet
scoreboard players remove @a[limit=1,x=0,tag=BackBull] BulletSpawned 1
execute as @a[limit=1,x=0,tag=BackBull,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/bullet
execute as @a[limit=1,x=0,tag=BackBull,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/bullet

#Duplex
scoreboard players remove @a[limit=1,x=0,tag=BackDuplex] DuplexSpawned 1
execute as @a[limit=1,x=0,tag=BackDuplex,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/duplex
execute as @a[limit=1,x=0,tag=BackDuplex,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/duplex

#Broadsword
scoreboard players remove @a[limit=1,x=0,tag=BackBroad] BroadSpawned 1
execute as @a[limit=1,x=0,tag=BackBroad,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/missile/broadsword
execute as @a[limit=1,x=0,tag=BackBroad,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/missile/broadsword

#Surprise Egg
scoreboard players remove @a[limit=1,x=0,tag=BackSurprise,predicate=custom:team/blue] BSurpriseSpawned 1
scoreboard players remove @a[limit=1,x=0,tag=BackSurprise,predicate=custom:team/yellow] YSurpriseSpawned 1
execute as @a[limit=1,x=0,tag=BackSurprise,tag=giveback.mainhand_free,gamemode=!creative] at @s run loot replace entity @s weapon.mainhand loot items:item/surprise_egg
execute as @a[limit=1,x=0,tag=BackSurprise,tag=!giveback.mainhand_free,gamemode=!creative] at @s run loot give @s loot items:item/surprise_egg

tag @a remove giveback.mainhand_free

##Unable message
tag @a[limit=1,x=0,tag=MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG,tag=!collisionMSG] add preventionMSG
execute unless predicate game:match_components/custom_pierce_prevention run title @a[limit=1,x=0,tag=preventionMSG] actionbar {color:"red",text:"You cannot spawn missiles inside of portals"}
title @a[limit=1,x=0,tag=roofMSG] actionbar {color:"red",text:"You cannot spawn missiles at this height"}
title @a[limit=1,x=0,tag=voidMSG] actionbar {color:"red",text:"You cannot spawn missiles at this height"}
execute if score $match_play_time global matches 200.. unless predicate game:match_components/disable_antigrief_system run title @a[limit=1,x=0,tag=antigriefMSG] actionbar {color:"red",text:"You cannot spawn missiles inside your own base"}
execute if score $match_play_time global matches ..199 unless predicate game:match_components/disable_antigrief_system run title @a[limit=1,x=0,tag=antigriefMSG] actionbar {color:"red",text:"You cannot collide missiles for the first 10 seconds of a match"}
title @a[limit=1,x=0,tag=spawnpointMSG] actionbar {color:"red",text:"You cannot spawn missiles inside a team's spawnpoint"}
title @a[x=0,tag=collisionMSG] actionbar [{color:"red",text:"You cannot spawn missiles inside the enemy's base "},{italic:true,text:"[Collision Control]"}]

execute as @a[x=0] unless entity @s[tag=!MissiMSG,tag=!roofMSG,tag=!voidMSG,tag=!antigriefMSG,tag=!spawnpointMSG,tag=!collisionMSG,tag=!preventionMSG] run function custom:player/delay_actionbar

##Tag removal
execute unless predicate game:match_components/custom_pierce_prevention run tag @a[limit=1,x=0,tag=preventionMSG] remove preventionMSG
tag @a[limit=1,x=0,tag=roofMSG] remove roofMSG
tag @a[limit=1,x=0,tag=voidMSG] remove voidMSG
tag @a[limit=1,x=0,tag=antigriefMSG] remove antigriefMSG
tag @a[limit=1,x=0,tag=spawnpointMSG] remove spawnpointMSG
tag @a[limit=1,x=0,tag=collisionMSG] remove collisionMSG
tag @a[limit=1,x=0,tag=MissiMSG] remove MissiMSG
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackAux
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackToma
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackNull
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackWar
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackBolt
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackHur
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackGuard
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackAnt
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackBlade
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackRift
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackJug
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackSlash
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackCata
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackCitadel
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackGemi
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackLift
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackHyper
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackBull
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackDuplex
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackBroad
tag @a[limit=1,x=0,tag=spawn_egg.placer] remove BackSurprise
