#Auxiliary
function items:prevention/prevent-auxiliary
execute as @e[tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 ~-10 ~4 run function items:prestructureblock
execute as @e[tag=BlueAux,tag=!UnableMissile] at @s run setblock ~-1 ~-10 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:auxiliary_blue"}
execute as @e[tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 ~-10 ~4 run function items:poststructureblock
execute as @e[tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 ~-10 ~-14 run function items:prestructureblock
execute as @e[tag=YellowAux,tag=!UnableMissile] at @s run setblock ~-1 ~-10 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:auxiliary_yellow"}
execute as @e[tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 ~-10 ~-14 run function items:poststructureblock

#TomaTwo
function items:prevention/prevent-tomatwo
execute as @e[tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueToma,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:tomatwo_blue"}
execute as @e[tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-12 run function items:prestructureblock
execute as @e[tag=YellowToma,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~-12 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:tomatwo_yellow"}
execute as @e[tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-12 run function items:poststructureblock

#Chronullifier
function items:prevention/prevent-chronullifier
execute as @e[tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueNull,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:chronullifier_blue"}
execute as @e[tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-12 run function items:prestructureblock
execute as @e[tag=YellowNull,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~-12 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:chronullifier_yellow"}
execute as @e[tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-12 run function items:poststructureblock

#Warhead
function items:prevention/prevent-warhead
execute as @e[tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueWar,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:warhead_blue"}
execute as @e[tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-14 run function items:prestructureblock
execute as @e[tag=YellowWar,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:warhead_yellow"}
execute as @e[tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-14 run function items:poststructureblock

#Thunderbolt
function items:prevention/prevent-thunderbolt
execute as @e[tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueBolt,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:thunderbolt_blue"}
execute as @e[tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 run function items:prestructureblock
execute as @e[tag=YellowBolt,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:thunderbolt_yellow"}
execute as @e[tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 run function items:poststructureblock

#Hurricane
function items:prevention/prevent-hurricane
execute as @e[tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~5 run function items:prestructureblock
execute as @e[tag=BlueHur,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~5 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hurricane_blue"}
execute as @e[tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~5 run function items:poststructureblock
execute as @e[tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-13 run function items:prestructureblock
execute as @e[tag=YellowHur,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~-13 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hurricane_yellow"}
execute as @e[tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-13 run function items:poststructureblock

#Elder Guardian
function items:prevention/prevent-elderguardian
team join Blue @e[tag=BlueGuard,tag=!UnableMissile]
execute as @e[tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueGuard,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:elderguard_blue"}
execute as @e[tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
team join Yellow @e[tag=YellowGuard]
execute as @e[tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-14 run function items:prestructureblock
execute as @e[tag=YellowGuard,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:elderguard_yellow"}
execute as @e[tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-14 run function items:poststructureblock

#A.N.T.
function items:prevention/prevent-ant
execute as @e[tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ ~-9 ~4 run function items:prestructureblock
execute as @e[tag=BlueAnt,tag=!UnableMissile] at @s run setblock ~ ~-9 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:ant_blue"}
execute as @e[tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ ~-9 ~4 run function items:poststructureblock
execute as @e[tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ ~-9 ~-9 run function items:prestructureblock
execute as @e[tag=YellowAnt,tag=!UnableMissile] at @s run setblock ~ ~-9 ~-9 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:ant_yellow"}
execute as @e[tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ ~-9 ~-9 run function items:poststructureblock

#Blade
function items:prevention/prevent-blade
execute as @e[tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueBlade,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:blade_blue"}
execute as @e[tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-18 run function items:prestructureblock
execute as @e[tag=YellowBlade,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~-18 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:blade_yellow"}
execute as @e[tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-18 run function items:poststructureblock

#Rifter
function items:prevention/prevent-rifter
execute as @e[tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~3 run function items:prestructureblock
execute as @e[tag=BlueRift,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~3 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:rifter_blue"}
execute as @e[tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~3 run function items:poststructureblock
execute as @e[tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-16 run function items:prestructureblock
execute as @e[tag=YellowRift,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~-16 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:rifter_yellow"}
execute as @e[tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-16 run function items:poststructureblock

#Juggerbuster
function items:prevention/prevent-juggerbuster
execute as @e[tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueJug,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:juggerbuster_blue"}
execute as @e[tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-20 run function items:prestructureblock
execute as @e[tag=YellowJug,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~-20 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:juggerbuster_yellow"}
execute as @e[tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-20 run function items:poststructureblock

#Slasher
function items:prevention/prevent-slasher
execute as @e[tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 ~-9 ~4 run function items:prestructureblock
execute as @e[tag=BlueSlash,tag=!UnableMissile] at @s run setblock ~-1 ~-9 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:slasher_blue"}
execute as @e[tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 ~-9 ~4 run function items:poststructureblock
execute as @e[tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 ~-9 ~-15 run function items:prestructureblock
execute as @e[tag=YellowSlash,tag=!UnableMissile] at @s run setblock ~-1 ~-9 ~-15 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:slasher_yellow"}
execute as @e[tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 ~-9 ~-15 run function items:poststructureblock

#Catapult
function items:prevention/prevent-catapult
execute as @e[tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~3 run function items:prestructureblock
execute as @e[tag=BlueCata,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~3 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:catapult_blue"}
execute as @e[tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~3 run function items:poststructureblock
execute as @e[tag=BlueCata,tag=!UnableMissile] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue,SmartClearAECcata],Duration:2000000000}
execute as @e[tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-14 run function items:prestructureblock
execute as @e[tag=YellowCata,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:catapult_yellow"}
execute as @e[tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-14 run function items:poststructureblock
execute as @e[tag=YellowCata,tag=!UnableMissile] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow,SmartClearAECcata],Duration:2000000000}

#Citadel
function items:prevention/prevent-citadel
execute as @e[tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueCitadel,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:citadel_blue"}
execute as @e[tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-14 run function items:prestructureblock
execute as @e[tag=YellowCitadel,tag=!UnableMissile] at @s run setblock ~-1 ~-8 ~-14 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:citadel_yellow"}
execute as @e[tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-8 ~-14 run function items:poststructureblock

#Gemini
function items:prevention/prevent-gemini
execute as @e[tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 run function items:prestructureblock
execute as @e[tag=BlueGemi,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:gemini_blue"}
execute as @e[tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 run function items:poststructureblock
execute as @e[tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-13 run function items:prestructureblock
execute as @e[tag=YellowGemi,tag=!UnableMissile] at @s run setblock ~-1 ~-7 ~-13 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:gemini_yellow"}
execute as @e[tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-13 run function items:poststructureblock

#Unable to spawn missile
function items:prevention/unablefx



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