#Auxiliary
execute as @e[tag=BlueAux] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-8,posZ:4,name:"minecraft:auxiliary_blue"}

execute as @e[tag=YellowAux] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-8,posZ:-14,name:"minecraft:auxiliary_yellow"}

#Bullet
execute as @e[tag=BlueBull] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:4,name:"minecraft:bullet_blue"}

execute as @e[tag=YellowBull] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:-18,name:"minecraft:bullet_yellow"}

#TomaTwo
execute as @e[tag=BlueToma] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:4,name:"minecraft:tomatwo_blue"}

execute as @e[tag=YellowToma] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:-12,name:"minecraft:tomatwo_yellow"}

#Chronullifier
execute as @e[tag=BlueNull] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:4,name:"minecraft:chronullifier_blue"}

execute as @e[tag=YellowNull] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:-12,name:"minecraft:chronullifier_yellow"}

#Warhead
execute as @e[tag=BlueWar] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:4,name:"minecraft:warhead_blue"}

execute as @e[tag=YellowWar] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:-14,name:"minecraft:warhead_yellow"}

#Thunderbolt
execute as @e[tag=BlueBolt] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:4,name:"minecraft:thunderbolt_blue"}

execute as @e[tag=YellowBolt] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:-14,name:"minecraft:thunderbolt_yellow"}

#Hurricane
execute as @e[tag=BlueHur] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:5,name:"minecraft:hurricane_blue"}

execute as @e[tag=YellowHur] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:-13,name:"minecraft:hurricane_yellow"}

#Elder Guardian
team join Blue @e[tag=BlueGuard]
execute as @e[tag=BlueGuard] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:4,name:"minecraft:elderguard_blue"}

team join Yellow @e[tag=YellowGuard]
execute as @e[tag=YellowGuard] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:-14,name:"minecraft:elderguard_yellow"}

#A.N.T.
execute as @e[tag=BlueAnt] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:-7,posZ:4,name:"minecraft:ant_blue"}

execute as @e[tag=YellowAnt] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:-7,posZ:-9,name:"minecraft:ant_yellow"}

#Blade
execute as @e[tag=BlueBlade] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:4,name:"minecraft:blade_blue"}

execute as @e[tag=YellowBlade] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:-18,name:"minecraft:blade_yellow"}

#Rifter
execute as @e[tag=BlueRift] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:4,name:"minecraft:rifter_blue"}

execute as @e[tag=YellowRift] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:-15,name:"minecraft:rifter_yellow"}

#Juggerbuster
execute as @e[tag=BlueJug] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:4,name:"minecraft:juggerbuster_blue"}

execute as @e[tag=YellowJug] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:-20,name:"minecraft:juggerbuster_yellow"}

#Slasher
execute as @e[tag=BlueSlash] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-7,posZ:4,name:"minecraft:slasher_blue"}

execute as @e[tag=YellowSlash] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-7,posZ:-15,name:"minecraft:slasher_yellow"}

#Catapult
execute as @e[tag=BlueCata] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:3,name:"minecraft:catapult_blue"}
execute as @e[tag=BlueCata] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue,SmartClearAECcata],Duration:2000000000}

execute as @e[tag=YellowCata] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:-14,name:"minecraft:catapult_yellow"}
execute as @e[tag=YellowCata] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow,SmartClearAECcata],Duration:2000000000}

#Citadel
execute as @e[tag=BlueCitadel] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:4,name:"minecraft:citadel_blue"}

execute as @e[tag=YellowCitadel] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-6,posZ:-14,name:"minecraft:citadel_yellow"}

#Gemini
execute as @e[tag=BlueGemi] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:4,name:"minecraft:gemini_blue"}

execute as @e[tag=YellowGemi] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-5,posZ:-13,name:"minecraft:gemini_yellow"}

#Missile prep (except Surprise Egg and Hypersonic)
execute as @e[tag=missile,tag=!surprising,tag=!BlueHyper,tag=!YellowHyper] at @s run function items:structureblock
execute as @e[tag=bluemissile,tag=!BlueCata,tag=!surprising,tag=!BlueSurprise,tag=!BlueHyper] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue],Duration:2000000000}
execute as @e[tag=yellowmissile,tag=!YellowCata,tag=!surprising,tag=!YellowSurprise,tag=!YellowHyper] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow],Duration:2000000000}
execute as @e[tag=missile,tag=!surprising,tag=!BlueHyper,tag=!YellowHyper] run tp @s ~ ~-200 ~
kill @e[tag=missile,tag=!surprising,tag=!BlueHyper,tag=!YellowHyper]

#Surprise Egg
#Blue
execute as @e[tag=BlueSurprise] at @s run function items:surprise_blue/rng
execute as @e[tag=BlueSurpriseNormal] at @s run function items:surprise_blue/rngnormal
execute as @e[tag=BlueSurpriseHeavy] at @s run function items:surprise_blue/rngheavy
execute as @e[tag=BlueSurpriseLightning] at @s run function items:surprise_blue/rnglightning

#Yellow
execute as @e[tag=YellowSurprise] at @s run function items:surprise_yellow/rng
execute as @e[tag=YellowSurpriseNormal] at @s run function items:surprise_yellow/rngnormal
execute as @e[tag=YellowSurpriseHeavy] at @s run function items:surprise_yellow/rngheavy
execute as @e[tag=YellowSurpriseLightning] at @s run function items:surprise_yellow/rnglightning

scoreboard players add @e[tag=surprising] surpriseTime 1

#Surprise Egg prep
execute as @e[tag=missile,tag=surprising] at @s run function items:structureblock
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
execute as @e[tag=BlueFireball] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["FireballAS"],Passengers:[{id:fireball,Tags:["NormalFireball","NoMotion"],ExplosionPower:1,direction:[0.0,0.0,0.0]}]}
tp @e[tag=BlueFireball] ~ ~-200 ~
kill @e[tag=BlueFireball]
execute as @e[tag=YellowFireball] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["FireballAS"],Passengers:[{id:fireball,Tags:["NormalFireball","NoMotion"],ExplosionPower:1,direction:[0.0,0.0,0.0]}]}
tp @e[tag=YellowFireball] ~ ~-200 ~
kill @e[tag=YellowFireball]
tag @e[type=fireball,tag=NormalFireball,nbt={direction:[0.0,0.0,0.0]},tag=!Still] add Still
execute as @e[type=fireball,tag=!Still] at @s[tag=NormalFireball] run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a
execute as @e[type=fireball,tag=!Still,tag=NoMotion] at @s run kill @e[tag=FireballAS,distance=..2,limit=1,sort=nearest]
execute as @e[type=fireball,tag=!Still,tag=NoMotion] at @s run tag @s remove NoMotion
tag @e[type=fireball] remove Still