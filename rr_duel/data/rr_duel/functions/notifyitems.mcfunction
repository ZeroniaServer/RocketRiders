tellraw @s ["",{"text":"| ","color":"dark_gray","bold":"true"}]
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"Active Items: ","color":"gray","bold":"false"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"In 1v1 Duel Mode, a set of 12 items is randomly generated for each round.","color":"white"}]}}]
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type.
execute if entity @e[tag=Selection,tag=rngShield,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Shield","color":"light_purple"}',Tags:["RankedRNG","Shield","RShieldRNG","RUtilRNG"]}
execute if entity @e[tag=Selection,tag=rngObshield,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Obsidian Shield","color":"light_purple"}',Tags:["RankedRNG","Obshield","RShieldRNG","RUtilRNG"]}

### 1 projectile type.
execute if entity @e[tag=Selection,tag=rngFireball,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Fireball","color":"light_purple"}',Tags:["RankedRNG","Fireball","RProjecRNG","RUtilRNG"]}
execute if entity @e[tag=Selection,tag=rngNova,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Nova Rocket","color":"light_purple"}',Tags:["RankedRNG","Nova","RProjecRNG","RUtilRNG"]}

#Announce extra utils
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- ","color":"light_purple","bold":"false"},{"selector":"@e[type=area_effect_cloud,tag=RUtilRNG]","color":"light_purple","bold":"false"}]

### 1 lightning type.
execute if entity @e[tag=Selection,tag=rngHur,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
execute if entity @e[tag=Selection,tag=rngBolt,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightningRNG"]}

### 5/10 non-lightning missiles
execute if entity @e[tag=Selection,tag=rngToma,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"TomaTwo","color":"green"}',Tags:["RankedRNG","TomaTwo","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngAux,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Auxiliary","color":"red"}',Tags:["RankedRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
execute if entity @e[tag=Selection,tag=rngBlade,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Blade","color":"green"}',Tags:["RankedRNG","Blade","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngCata,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Catapult","color":"green"}',Tags:["RankedRNG","Catapult","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngSlash,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Slasher","color":"green"}',Tags:["RankedRNG","Slasher","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngEguard,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Elder Guardian","color":"green"}',Tags:["RankedRNG","Guard","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngLift,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Lifter","color":"green"}',Tags:["RankedRNG","Lifter","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngNull,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Chronullifier","color":"green"}',Tags:["RankedRNG","Nullifier","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngCitadel,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Citadel","color":"green"}',Tags:["RankedRNG","Citadel","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngWar,limit=1,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Warhead","color":"red"}',Tags:["RankedRNG","Warhead","RMisRNG","RHeavyRNG"]}

#Announce normals
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- ","color":"green","bold":"false"},{"selector":"@e[type=area_effect_cloud,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":"false"}]

#Announce lightning
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=area_effect_cloud] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Hurricane","color":"gold","bold":"false"}]
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=area_effect_cloud] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Thunderbolt","color":"gold","bold":"false"}]

#Announce heavys (if any)
execute unless entity @e[tag=Selection,tag=!rngAux,tag=!rngWar,type=armor_stand] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- ","color":"red","bold":"false"},{"selector":"@e[type=area_effect_cloud,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":"false"}]

kill @e[tag=RankedRNG,type=area_effect_cloud]