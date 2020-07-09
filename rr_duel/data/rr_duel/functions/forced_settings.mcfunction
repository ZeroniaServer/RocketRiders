tag @s add rngNormal
tag @s add rngLightning
tag @s add rngUtil
tag @s add rngHeavy

tag @s add rngToma
tag @s add rngAux
tag @s add rngBlade
tag @s add rngEguard
tag @s add rngSlash
tag @s add rngWar
tag @s add rngLift
tag @s add rngThun
tag @s add rngHur
tag @s add rngNull
tag @s add rngCata
tag @s add rngCitadel

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

execute if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"Active Items: ","color":"gray","bold":"false"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"In Ranked 1v1 Mode, a set of items is chosen automatically each round.","color":"white"}]}}]

tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Arrows","color":"light_purple","bold":"false"}]
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Canopy","color":"light_purple","bold":"false"}]
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Splash","color":"light_purple","bold":"false"}]
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Vortex","color":"light_purple","bold":"false"}]

### 1 shield type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Shield","RShieldRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Obshield","RShieldRNG"]}
tag @e[tag=RShieldRNG,limit=1,sort=random,type=area_effect_cloud] add SelRRNG

#normal shield selected
execute if entity @e[tag=Shield,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngShield
execute if entity @e[tag=Shield,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngObshield
execute if entity @e[tag=Shield,tag=SelRRNG,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Shield","color":"light_purple","bold":"false"}]

#obshield selected
execute if entity @e[tag=Obshield,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngObshield
execute if entity @e[tag=Obshield,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngShield
execute if entity @e[tag=Obshield,tag=SelRRNG,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Obsidian Shield","color":"light_purple","bold":"false"}]

### 1 projectile type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Fireball","RProjecRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Nova","RProjecRNG"]}
tag @e[tag=RProjecRNG,limit=1,sort=random,type=area_effect_cloud] add SelRRNG

#fireball selected
execute if entity @e[tag=Fireball,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngFireball
execute if entity @e[tag=Fireball,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngNova
execute if entity @e[tag=Fireball,tag=SelRRNG,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Fireball","color":"light_purple","bold":"false"}]

#nova rocket selected
execute if entity @e[tag=Nova,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngNova
execute if entity @e[tag=Nova,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngFireball
execute if entity @e[tag=Nova,tag=SelRRNG,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Nova Rocket","color":"light_purple","bold":"false"}]

### 1 lightning type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightningRNG"]}
tag @e[tag=RLightningRNG,limit=1,sort=random,type=area_effect_cloud] add SelRRNG

#hurricane selected
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngHur
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngThun
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Hurricane","color":"gold","bold":"false"}]

#thunderbolt selected
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=area_effect_cloud] run tag @s add rngThun
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=area_effect_cloud] run tag @s remove rngHur
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Thunderbolt","color":"gold","bold":"false"}]

### 5/10 non-lightning missiles
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","TomaTwo","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Auxiliary","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Blade","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Catapult","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Slasher","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Guard","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Lifter","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Nullifier","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Citadel","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Warhead","RMisRNG"]}

tag @e[tag=RMisRNG,tag=!SelRRNG,limit=5,sort=random,type=area_effect_cloud] add SelRRNG

execute if entity @e[tag=SelRRNG,tag=TomaTwo,type=area_effect_cloud] run tag @s remove rngToma
execute if entity @e[tag=SelRRNG,tag=Auxiliary,type=area_effect_cloud] run tag @s remove rngAux
execute if entity @e[tag=SelRRNG,tag=Blade,type=area_effect_cloud] run tag @s remove rngBlade
execute if entity @e[tag=SelRRNG,tag=Catapult,type=area_effect_cloud] run tag @s remove rngCata
execute if entity @e[tag=SelRRNG,tag=Slasher,type=area_effect_cloud] run tag @s remove rngSlash
execute if entity @e[tag=SelRRNG,tag=Guard,type=area_effect_cloud] run tag @s remove rngEguard
execute if entity @e[tag=SelRRNG,tag=Lifter,type=area_effect_cloud] run tag @s remove rngLift
execute if entity @e[tag=SelRRNG,tag=Nullifier,type=area_effect_cloud] run tag @s remove rngNull
execute if entity @e[tag=SelRRNG,tag=Citadel,type=area_effect_cloud] run tag @s remove rngCitadel
execute if entity @e[tag=SelRRNG,tag=Warhead,type=area_effect_cloud] run tag @s remove rngWar

execute if entity @e[tag=Selection,tag=rngToma,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- TomaTwo","color":"green","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngBlade,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Blade","color":"green","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngCata,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Catapult","color":"green","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngSlash,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Slasher","color":"green","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngEguard,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Elder Guardian","color":"green","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngLift,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Lifter","color":"green","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngNull,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Nullifier","color":"green","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngCitadel,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Citadel","color":"green","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngAux,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Auxiliary","color":"red","bold":"false"}]
execute if entity @e[tag=Selection,tag=rngWar,type=area_effect_cloud] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"- Warhead","color":"red","bold":"false"}]

kill @e[tag=RankedRNG,type=area_effect_cloud]