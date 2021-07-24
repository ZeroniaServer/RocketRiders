tag @s add rngNormal
tag @s add rngLightning
tag @s add rngUtil
tag @s add rngHeavy


tag @s remove rngAnt
tag @s remove rngGemi
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
#> [NOVA REMOVED DUE TO FEEDBACK FOR NOW] tag @s add rngNova
#> [CANOPY DISABLED DUE TO FEEDBACK FOR NOW] (I cry) tag @s add rngCanopy

#Deactivated items
#ANT WAS ADDED tag @s remove rngAnt
#GEMI WAS ADDED tag @s remove rngGemi
tag @s remove rngJbuster
tag @s remove rngRift
tag @s remove rngCanopy
tag @s remove rngNova

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

tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"Active Items: ","color":"gray","bold":false},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"In 1v1 Duel Mode, a set of 12 items is randomly generated for each round.","color":"white"}]}}]
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"}]
### 1 shield type.
summon marker ~ ~ ~ {CustomName:'{"text":"Shield","color":"light_purple"}',Tags:["RankedRNG","Shield","RShieldRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Obsidian Shield","color":"light_purple"}',Tags:["RankedRNG","Obshield","RShieldRNG","RUtilRNG"]}
tag @e[type=marker,tag=RShieldRNG,limit=1,sort=random] add SelRRNG

#normal shield selected
execute if entity @e[type=marker,tag=Shield,tag=SelRRNG] run tag @s add rngShield
execute if entity @e[type=marker,tag=Shield,tag=SelRRNG] run tag @s remove rngObshield

#obshield selected
execute if entity @e[type=marker,tag=Obshield,tag=SelRRNG] run tag @s add rngObshield
execute if entity @e[type=marker,tag=Obshield,tag=SelRRNG] run tag @s remove rngShield

### 1 projectile type.
summon marker ~ ~ ~ {CustomName:'{"text":"Fireball","color":"light_purple"}',Tags:["RankedRNG","Fireball","RProjecRNG","RUtilRNG"]}
#> [NOVAROCKET DISABLED DUE TO FEEDBACK FOR NOW] summon marker ~ ~ ~ {CustomName:'{"text":"Nova Rocket","color":"light_purple"}',Tags:["RankedRNG","Nova","RProjecRNG","RUtilRNG"]}
tag @e[type=marker,tag=RProjecRNG,limit=1,sort=random] add SelRRNG

#fireball selected
execute if entity @e[type=marker,tag=Fireball,tag=SelRRNG] run tag @s add rngFireball
execute if entity @e[type=marker,tag=Fireball,tag=SelRRNG] run tag @s remove rngNova

#nova rocket selected
execute if entity @e[type=marker,tag=Nova,tag=SelRRNG] run tag @s add rngNova
execute if entity @e[type=marker,tag=Nova,tag=SelRRNG] run tag @s remove rngFireball

#Announce extra utils
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"light_purple","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
summon marker ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
summon marker ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightningRNG"]}
tag @e[type=marker,tag=RLightningRNG,limit=1,sort=random] add SelRRNG

#hurricane selected
execute if entity @e[type=marker,tag=Hurricane,tag=SelRRNG] run tag @s add rngHur
execute if entity @e[type=marker,tag=Hurricane,tag=SelRRNG] run tag @s remove rngThun

#thunderbolt selected
execute if entity @e[type=marker,tag=Thunderbolt,tag=SelRRNG] run tag @s add rngThun
execute if entity @e[type=marker,tag=Thunderbolt,tag=SelRRNG] run tag @s remove rngHur

### 5/10 non-lightning missiles
summon marker ~ ~ ~ {CustomName:'{"text":"A.N.T","color":"green"}',Tags:["RankedRNG","Ant","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Gemini","color":"green"}',Tags:["RankedRNG","Gemini","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"TomaTwo","color":"green"}',Tags:["RankedRNG","TomaTwo","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Auxiliary","color":"red"}',Tags:["RankedRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Blade","color":"green"}',Tags:["RankedRNG","Blade","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Catapult","color":"green"}',Tags:["RankedRNG","Catapult","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Slasher","color":"green"}',Tags:["RankedRNG","Slasher","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Elder Guardian","color":"green"}',Tags:["RankedRNG","Guard","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Lifter","color":"green"}',Tags:["RankedRNG","Lifter","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Chronullifier","color":"green"}',Tags:["RankedRNG","Nullifier","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Citadel","color":"green"}',Tags:["RankedRNG","Citadel","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Warhead","color":"red"}',Tags:["RankedRNG","Warhead","RMisRNG","RHeavyRNG"]}

tag @e[type=marker,tag=RMisRNG,tag=!SelRRNG,limit=6,sort=random] add SelRRNG

execute if entity @e[type=marker,tag=SelRRNG,tag=Ant] run tag @s add rngAnt
execute if entity @e[type=marker,tag=SelRRNG,tag=Gemini] run tag @s add rngGemi
execute if entity @e[type=marker,tag=SelRRNG,tag=TomaTwo] run tag @s add rngToma
execute if entity @e[type=marker,tag=SelRRNG,tag=Auxiliary] run tag @s add rngAux
execute if entity @e[type=marker,tag=SelRRNG,tag=Blade] run tag @s add rngBlade
execute if entity @e[type=marker,tag=SelRRNG,tag=Catapult] run tag @s add rngCata
execute if entity @e[type=marker,tag=SelRRNG,tag=Slasher] run tag @s add rngSlash
execute if entity @e[type=marker,tag=SelRRNG,tag=Guard] run tag @s add rngEguard
execute if entity @e[type=marker,tag=SelRRNG,tag=Lifter] run tag @s add rngLift
execute if entity @e[type=marker,tag=SelRRNG,tag=Nullifier] run tag @s add rngNull
execute if entity @e[type=marker,tag=SelRRNG,tag=Citadel] run tag @s add rngCitadel
execute if entity @e[type=marker,tag=SelRRNG,tag=Warhead] run tag @s add rngWar

#Announce normals
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"green","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[type=marker,tag=Hurricane,tag=SelRRNG] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Hurricane","color":"gold","bold":false}]
execute if entity @e[type=marker,tag=Thunderbolt,tag=SelRRNG] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
execute unless entity @e[type=armor_stand,tag=Selection,tag=!rngAux,tag=!rngWar] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"red","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]

kill @e[type=marker,tag=RankedRNG]
tellraw @a [""]

#Enable/disable heavys
tag @s[tag=!rngWar,tag=!rngJbuster,tag=!rngAux,tag=!rngRift] add heavyOff
execute unless entity @s[tag=!rngWar,tag=!rngJbuster,tag=!rngAux,tag=!rngRift] run tag @s remove heavyOff