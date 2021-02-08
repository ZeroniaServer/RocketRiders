tag @s add rngNormal
tag @s add rngLightning
tag @s add rngUtil
tag @s add rngHeavy

tag @s remove rngToma
tag @s remove rngAux
tag @s remove rngBlade
tag @s remove rngEguard
tag @s remove rngSlash
tag @s remove rngWar
tag @s remove rngLift
tag @s remove rngThun
tag @s remove rngHur
tag @s remove rngNull
tag @s remove rngCata
tag @s remove rngCitadel

#Util
tag @s add rngArrows
tag @s add rngFireball
tag @s add rngShield
tag @s add rngObshield
tag @s add rngVortex
tag @s add rngSplash
tag @s add rngNova
tag @s add rngCanopy

#Deactivated items
tag @s remove rngAnt
tag @s remove rngGemi
tag @s remove rngJbuster
tag @s remove rngRift

#Disable modifiers
function modifiers:disablemodifiers

#Add needed settings and modifiers
tag @s add WindDown
tag @s add doPrevention
tag @s add doHotbarLimit
tag @s remove doStacking
tag @s remove doFireballPortals

#######################################################
## The lines below make it so 12 items are selected. ##
##        Thanks to Llewv for the suggestion!        ##
#######################################################

tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"Active Items: ","color":"gray","bold":"false"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"In 1v1 Duel Mode, a set of 12 items is randomly generated for each round.","color":"white"}]}}]
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type.
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Shield","color":"light_purple"}',Tags:["RankedRNG","Shield","RShieldRNG","RUtilRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Obsidian Shield","color":"light_purple"}',Tags:["RankedRNG","Obshield","RShieldRNG","RUtilRNG"]}
tag @e[tag=RShieldRNG,limit=1,sort=random,type=area_effect_cloud] add SelRRNG

#normal shield selected
execute if entity @e[tag=Shield,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngShield
execute if entity @e[tag=Shield,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngObshield

#obshield selected
execute if entity @e[tag=Obshield,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngObshield
execute if entity @e[tag=Obshield,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngShield

### 1 projectile type.
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Fireball","color":"light_purple"}',Tags:["RankedRNG","Fireball","RProjecRNG","RUtilRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Nova Rocket","color":"light_purple"}',Tags:["RankedRNG","Nova","RProjecRNG","RUtilRNG"]}
tag @e[tag=RProjecRNG,limit=1,sort=random,type=area_effect_cloud] add SelRRNG

#fireball selected
execute if entity @e[tag=Fireball,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngFireball
execute if entity @e[tag=Fireball,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngNova

#nova rocket selected
execute if entity @e[tag=Nova,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngNova
execute if entity @e[tag=Nova,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngFireball

#Announce extra utils
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- ","color":"light_purple","bold":"false"},{"selector":"@e[type=area_effect_cloud,tag=SelRRNG,tag=RUtilRNG]","color":"light_purple","bold":"false"}]

### 1 lightning type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightningRNG"]}
tag @e[tag=RLightningRNG,limit=1,sort=random,type=area_effect_cloud] add SelRRNG

#hurricane selected
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngHur
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngThun

#thunderbolt selected
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngThun
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngHur

### 5/10 non-lightning missiles
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"TomaTwo","color":"green"}',Tags:["RankedRNG","TomaTwo","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Auxiliary","color":"red"}',Tags:["RankedRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Blade","color":"green"}',Tags:["RankedRNG","Blade","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Catapult","color":"green"}',Tags:["RankedRNG","Catapult","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Slasher","color":"green"}',Tags:["RankedRNG","Slasher","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Elder Guardian","color":"green"}',Tags:["RankedRNG","Guard","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Lifter","color":"green"}',Tags:["RankedRNG","Lifter","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Chronullifier","color":"green"}',Tags:["RankedRNG","Nullifier","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Citadel","color":"green"}',Tags:["RankedRNG","Citadel","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Warhead","color":"red"}',Tags:["RankedRNG","Warhead","RMisRNG","RHeavyRNG"]}

tag @e[tag=RMisRNG,tag=!SelRRNG,limit=5,sort=random,type=area_effect_cloud] add SelRRNG

execute if entity @e[tag=SelRRNG,tag=TomaTwo,type=area_effect_cloud] run tag @s add rngToma
execute if entity @e[tag=SelRRNG,tag=Auxiliary,type=area_effect_cloud] run tag @s add rngAux
execute if entity @e[tag=SelRRNG,tag=Blade,type=area_effect_cloud] run tag @s add rngBlade
execute if entity @e[tag=SelRRNG,tag=Catapult,type=area_effect_cloud] run tag @s add rngCata
execute if entity @e[tag=SelRRNG,tag=Slasher,type=area_effect_cloud] run tag @s add rngSlash
execute if entity @e[tag=SelRRNG,tag=Guard,type=area_effect_cloud] run tag @s add rngEguard
execute if entity @e[tag=SelRRNG,tag=Lifter,type=area_effect_cloud] run tag @s add rngLift
execute if entity @e[tag=SelRRNG,tag=Nullifier,type=area_effect_cloud] run tag @s add rngNull
execute if entity @e[tag=SelRRNG,tag=Citadel,type=area_effect_cloud] run tag @s add rngCitadel
execute if entity @e[tag=SelRRNG,tag=Warhead,type=area_effect_cloud] run tag @s add rngWar

#Announce normals
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- ","color":"green","bold":"false"},{"selector":"@e[type=area_effect_cloud,tag=SelRRNG,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":"false"}]

#Announce lightning
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Hurricane","color":"gold","bold":"false"}]
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Thunderbolt","color":"gold","bold":"false"}]

#Announce heavys (if any)
execute unless entity @e[tag=Selection,tag=!rngAux,tag=!rngWar,type=armor_stand] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- ","color":"red","bold":"false"},{"selector":"@e[type=area_effect_cloud,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":"false"}]

kill @e[tag=RankedRNG,type=area_effect_cloud]

#Enable/disable heavys
tag @s[tag=!rngWar,tag=!rngJbuster,tag=!rngAux,tag=!rngRift] add heavyOff
execute unless entity @s[tag=!rngWar,tag=!rngJbuster,tag=!rngAux,tag=!rngRift] run tag @s remove heavyOff