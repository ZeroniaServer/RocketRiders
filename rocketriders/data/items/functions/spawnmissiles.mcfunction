#Prevention
execute if entity @e[tag=Selection,tag=doPrevention] run function items:prevention/preventmissiles

#Auxiliary
execute as @e[tag=BlueAux] at @s positioned ~-1 ~-9 ~4 run function items:prestructureblock
execute as @e[tag=BlueAux] at @s run setblock ~-1 ~-9 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:auxiliary_blue"}
execute as @e[tag=BlueAux] at @s positioned ~-1 ~-9 ~4 run function items:poststructureblock
execute as @e[tag=YellowAux] at @s positioned ~-1 ~-9 ~-14 run function items:prestructureblock
execute as @e[tag=YellowAux] at @s run setblock ~-1 ~-9 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:auxiliary_yellow"}
execute as @e[tag=YellowAux] at @s positioned ~-1 ~-9 ~-14 run function items:poststructureblock

#TomaTwo
execute as @e[tag=BlueToma] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueToma] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:tomatwo_blue"}
execute as @e[tag=BlueToma] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowToma] at @s positioned ~-1 ~-7 ~-12 run function items:prestructureblock
execute as @e[tag=YellowToma] at @s run setblock ~-1 ~-7 ~-12 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:tomatwo_yellow"}
execute as @e[tag=YellowToma] at @s positioned ~-1 ~-7 ~-12 run function items:poststructureblock

#Chronullifier
execute as @e[tag=BlueNull] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueNull] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:chronullifier_blue"}
execute as @e[tag=BlueNull] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowNull] at @s positioned ~-1 ~-8 ~-12 run function items:prestructureblock
execute as @e[tag=YellowNull] at @s run setblock ~-1 ~-8 ~-12 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:chronullifier_yellow"}
execute as @e[tag=YellowNull] at @s positioned ~-1 ~-8 ~-12 run function items:poststructureblock

#Warhead
execute as @e[tag=BlueWar] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueWar] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:warhead_blue"}
execute as @e[tag=BlueWar] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowWar] at @s positioned ~-1 ~-8 ~-14 run function items:prestructureblock
execute as @e[tag=YellowWar] at @s run setblock ~-1 ~-8 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:warhead_yellow"}
execute as @e[tag=YellowWar] at @s positioned ~-1 ~-8 ~-14 run function items:poststructureblock

#Thunderbolt
execute as @e[tag=BlueBolt] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueBolt] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:thunderbolt_blue"}
execute as @e[tag=BlueBolt] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowBolt] at @s positioned ~-1 ~-7 ~-14 run function items:prestructureblock
execute as @e[tag=YellowBolt] at @s run setblock ~-1 ~-7 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:thunderbolt_yellow"}
execute as @e[tag=YellowBolt] at @s positioned ~-1 ~-7 ~-14 run function items:poststructureblock

#Hurricane
execute as @e[tag=BlueHur] at @s positioned ~-1 ~-7 ~5 run function items:prestructureblock
execute as @e[tag=BlueHur] at @s run setblock ~-1 ~-7 ~5 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hurricane_blue"}
execute as @e[tag=BlueHur] at @s positioned ~-1 ~-7 ~5 run function items:poststructureblock
execute as @e[tag=YellowHur] at @s positioned ~-1 ~-7 ~-13 run function items:prestructureblock
execute as @e[tag=YellowHur] at @s run setblock ~-1 ~-7 ~-13 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hurricane_yellow"}
execute as @e[tag=YellowHur] at @s positioned ~-1 ~-7 ~-13 run function items:poststructureblock

#Elder Guardian
team join Blue @e[tag=BlueGuard]
execute as @e[tag=BlueGuard] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueGuard] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:elderguard_blue"}
execute as @e[tag=BlueGuard] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
team join Yellow @e[tag=YellowGuard]
execute as @e[tag=YellowGuard] at @s positioned ~-1 ~-8 ~-14 run function items:prestructureblock
execute as @e[tag=YellowGuard] at @s run setblock ~-1 ~-8 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:elderguard_yellow"}
execute as @e[tag=YellowGuard] at @s positioned ~-1 ~-8 ~-14 run function items:poststructureblock

#A.N.T.
execute as @e[tag=BlueAnt] at @s positioned ~ ~-9 ~4 run function items:prestructureblock
execute as @e[tag=BlueAnt] at @s run setblock ~ ~-9 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:ant_blue"}
execute as @e[tag=BlueAnt] at @s positioned ~ ~-9 ~4 run function items:poststructureblock
execute as @e[tag=YellowAnt] at @s positioned ~ ~-9 ~-9 run function items:prestructureblock
execute as @e[tag=YellowAnt] at @s run setblock ~ ~-9 ~-9 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:ant_yellow"}
execute as @e[tag=YellowAnt] at @s positioned ~ ~-9 ~-9 run function items:poststructureblock

#Blade
execute as @e[tag=BlueBlade] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueBlade] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:blade_blue"}
execute as @e[tag=BlueBlade] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowBlade] at @s positioned ~-1 ~-7 ~-18 run function items:prestructureblock
execute as @e[tag=YellowBlade] at @s run setblock ~-1 ~-7 ~-18 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:blade_yellow"}
execute as @e[tag=YellowBlade] at @s positioned ~-1 ~-7 ~-18 run function items:poststructureblock

#Rifter
execute as @e[tag=BlueRift] at @s positioned ~-1 ~-7 ~3 run function items:prestructureblock
execute as @e[tag=BlueRift] at @s run setblock ~-1 ~-7 ~3 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:rifter_blue"}
execute as @e[tag=BlueRift] at @s positioned ~-1 ~-7 ~3 run function items:poststructureblock
execute as @e[tag=YellowRift] at @s positioned ~-1 ~-7 ~-16 run function items:prestructureblock
execute as @e[tag=YellowRift] at @s run setblock ~-1 ~-7 ~-16 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:rifter_yellow"}
execute as @e[tag=YellowRift] at @s positioned ~-1 ~-7 ~-16 run function items:poststructureblock

#Juggerbuster
execute as @e[tag=BlueJug] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueJug] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:juggerbuster_blue"}
execute as @e[tag=BlueJug] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowJug] at @s positioned ~-1 ~-8 ~-20 run function items:prestructureblock
execute as @e[tag=YellowJug] at @s run setblock ~-1 ~-8 ~-20 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:juggerbuster_yellow"}
execute as @e[tag=YellowJug] at @s positioned ~-1 ~-8 ~-20 run function items:poststructureblock

#Slasher
execute as @e[tag=BlueSlash] at @s positioned ~-1 ~-9 ~4 run function items:prestructureblock
execute as @e[tag=BlueSlash] at @s run setblock ~-1 ~-9 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:slasher_blue"}
execute as @e[tag=BlueSlash] at @s positioned ~-1 ~-9 ~4 run function items:poststructureblock
execute as @e[tag=YellowSlash] at @s positioned ~-1 ~-9 ~-15 run function items:prestructureblock
execute as @e[tag=YellowSlash] at @s run setblock ~-1 ~-9 ~-15 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:slasher_yellow"}
execute as @e[tag=YellowSlash] at @s positioned ~-1 ~-9 ~-15 run function items:poststructureblock

#Catapult
execute as @e[tag=BlueCata] at @s positioned ~-1 ~-8 ~3 run function items:prestructureblock
execute as @e[tag=BlueCata] at @s run setblock ~-1 ~-8 ~3 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:catapult_blue"}
execute as @e[tag=BlueCata] at @s positioned ~-1 ~-8 ~3 run function items:poststructureblock
execute as @e[tag=BlueCata] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue,SmartClearAECcata],Duration:2000000000}
execute as @e[tag=YellowCata] at @s positioned ~-1 ~-8 ~-14 run function items:prestructureblock
execute as @e[tag=YellowCata] at @s run setblock ~-1 ~-8 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:catapult_yellow"}
execute as @e[tag=YellowCata] at @s positioned ~-1 ~-8 ~-14 run function items:poststructureblock
execute as @e[tag=YellowCata] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow,SmartClearAECcata],Duration:2000000000}

#Citadel
execute as @e[tag=BlueCitadel] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueCitadel] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:citadel_blue"}
execute as @e[tag=BlueCitadel] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowCitadel] at @s positioned ~-1 ~-8 ~-14 run function items:prestructureblock
execute as @e[tag=YellowCitadel] at @s run setblock ~-1 ~-8 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:citadel_yellow"}
execute as @e[tag=YellowCitadel] at @s positioned ~-1 ~-8 ~-14 run function items:poststructureblock

#Gemini
execute as @e[tag=BlueGemi] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueGemi] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:gemini_blue"}
execute as @e[tag=BlueGemi] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowGemi] at @s positioned ~-1 ~-7 ~-13 run function items:prestructureblock
execute as @e[tag=YellowGemi] at @s run setblock ~-1 ~-7 ~-13 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:gemini_yellow"}
execute as @e[tag=YellowGemi] at @s positioned ~-1 ~-7 ~-13 run function items:poststructureblock

#Lifter
execute as @e[tag=BlueLift] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueLift] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:lifter_blue"}
execute as @e[tag=BlueLift] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowLift] at @s positioned ~-1 ~-7 ~-10 run function items:prestructureblock
execute as @e[tag=YellowLift] at @s run setblock ~-1 ~-7 ~-10 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:lifter_yellow"}
execute as @e[tag=YellowLift] at @s positioned ~-1 ~-7 ~-10 run function items:poststructureblock

#Hypersonic
execute as @e[tag=BlueHyper] at @s positioned ~-1 ~-9 ~5 run function items:prestructureblock
execute as @e[tag=BlueHyper] at @s run setblock ~-1 ~-9 ~5 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hypersonic_blue"}
execute as @e[tag=BlueHyper] at @s positioned ~-1 ~-9 ~5 run function items:poststructureblock
execute as @e[tag=YellowHyper] at @s positioned ~-1 ~-9 ~-13 run function items:prestructureblock
execute as @e[tag=YellowHyper] at @s run setblock ~-1 ~-9 ~-13 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hypersonic_yellow"}
execute as @e[tag=YellowHyper] at @s positioned ~-1 ~-9 ~-13 run function items:poststructureblock

#Bullet
execute as @e[tag=BlueBull] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueBull] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:bullet_blue"}
execute as @e[tag=BlueBull] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowBull] at @s positioned ~-1 ~-8 ~-18 run function items:prestructureblock
execute as @e[tag=YellowBull] at @s run setblock ~-1 ~-8 ~-18 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:bullet_yellow"}
execute as @e[tag=YellowBull] at @s positioned ~-1 ~-8 ~-18 run function items:poststructureblock

#Missile prep (except Surprise Egg and Catapult)
execute as @e[tag=bluemissile,tag=!BlueCata,tag=!surprising,tag=!BlueSurprise] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue],Duration:2000000000}
execute as @e[tag=yellowmissile,tag=!YellowCata,tag=!surprising,tag=!YellowSurprise] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow],Duration:2000000000}
execute as @e[tag=missile,tag=!surprising] run tp @s ~ ~-200 ~
kill @e[tag=missile,tag=!surprising]

#Surprise Egg
execute as @e[tag=BlueSurprise] at @s run function items:surprise_blue/rng
execute as @e[tag=BlueSurpriseNormal] at @s run function items:surprise_blue/rngnormal
execute as @e[tag=BlueSurpriseHeavy] at @s run function items:surprise_blue/rngheavy
execute as @e[tag=BlueSurpriseLightning] at @s run function items:surprise_blue/rnglightning

execute as @e[tag=YellowSurprise] at @s run function items:surprise_yellow/rng
execute as @e[tag=YellowSurpriseNormal] at @s run function items:surprise_yellow/rngnormal
execute as @e[tag=YellowSurpriseHeavy] at @s run function items:surprise_yellow/rngheavy
execute as @e[tag=YellowSurpriseLightning] at @s run function items:surprise_yellow/rnglightning

#Surprise Egg prep
scoreboard players add @e[tag=surprising] surpriseTime 1
execute as @e[tag=bluemissile,tag=!BlueCata,tag=surprising,tag=!BlueSurprise,scores={surpriseTime=2}] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue],Duration:2000000000}
execute as @e[tag=yellowmissile,tag=!YellowCata,tag=surprising,tag=!YellowSurprise,scores={surpriseTime=2}] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow],Duration:2000000000}
execute as @e[tag=missile,tag=surprising,scores={surpriseTime=2..}] run tp @s ~ ~-200 ~
kill @e[tag=missile,tag=surprising,scores={surpriseTime=2..}]

#Nova Rocket
execute as @e[tag=BlueNovaSpawner] at @s run summon armor_stand ~ ~ ~ {Tags:["BlueNova"],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1}
execute as @e[tag=YellowNovaSpawner] at @s run summon armor_stand ~ ~ ~ {Tags:["YellowNova"],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1}
tp @e[tag=BlueNovaSpawner] ~ ~-200 ~
kill @e[tag=BlueNovaSpawner]
tp @e[tag=YellowNovaSpawner] ~ ~-200 ~
kill @e[tag=YellowNovaSpawner]

#Fireball
execute as @e[tag=BlueFireball] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["FireballAS"],Passengers:[{id:fireball,Tags:["NormalFireball","NoMotion"],ExplosionPower:1,direction:[0.0,0.0,0.0]}]}
tp @e[tag=BlueFireball] ~ ~-200 ~
kill @e[tag=BlueFireball]
execute as @e[tag=YellowFireball] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["FireballAS"],Passengers:[{id:fireball,Tags:["NormalFireball","NoMotion"],ExplosionPower:1,direction:[0.0,0.0,0.0]}]}
tp @e[tag=YellowFireball] ~ ~-200 ~
kill @e[tag=YellowFireball]
tag @e[type=fireball,tag=NormalFireball,nbt={direction:[0.0,0.0,0.0]},tag=!Still] add Still
execute as @e[type=fireball,tag=!Still] at @s[tag=NormalFireball] run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a
execute as @e[type=fireball,tag=!Still,tag=NoMotion] at @s run kill @e[tag=FireballAS,distance=..2,limit=1,sort=nearest]
execute as @e[type=fireball,tag=!Still,tag=NoMotion] at @s run tag @s remove NoMotion
tag @e[type=fireball] remove Still