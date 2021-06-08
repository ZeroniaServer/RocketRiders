#Missile
tag @s add rngNormal
tag @s add rngLightning
tag @s add rngUtil
tag @s add rngHeavy

tag @s remove rngAnt
tag @s remove rngAux
tag @s remove rngBlade
tag @s remove rngCata
tag @s remove rngNull
tag @s remove rngCitadel
tag @s remove rngEguard
tag @s remove rngGemi
tag @s remove rngHur
tag @s remove rngJbuster
tag @s remove rngLift
tag @s remove rngRift
tag @s remove rngSlash
tag @s remove rngToma
tag @s remove rngThun
tag @s remove rngWar

#Util
tag @s[tag=!ctfEnabled] add rngArrows
tag @s add rngFireball
tag @s add rngShield
tag @s add rngObshield
tag @s add rngVortex
tag @s add rngSplash
tag @s add rngNova
tag @s add rngCanopy

#Disable modifiers
execute as @s[tag=!WindDownForce] run function modifiers:disablemodifiers

#Add needed settings and modifiers
tag @s add doPrevention
tag @s add doHotbarLimit
tag @s add doTying
tag @s remove doStacking
tag @s remove doFireballPortals

#######################################################
## The lines below make it so 12 items are selected. ##
##        Thanks to Llewv for the suggestion!        ##
#######################################################

tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"Active Items: ","color":"gray","bold":false},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"A set of 12 items is randomly generated for each game.","color":"white"}]}}]
execute as @s[tag=!ctfEnabled] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]
execute as @s[tag=ctfEnabled] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type.
summon marker ~ ~ ~ {CustomName:'{"text":"Shield","color":"light_purple"}',Tags:["ServerRNG","Shield","RShieldRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Obsidian Shield","color":"light_purple"}',Tags:["ServerRNG","Obshield","RShieldRNG","RUtilRNG"]}
tag @e[tag=RShieldRNG,limit=1,sort=random,type=marker] add SelRRNG

#normal shield selected
execute if entity @e[tag=Shield,tag=SelRRNG,type=marker] run tag @s add rngShield
execute if entity @e[tag=Shield,tag=SelRRNG,type=marker] run tag @s remove rngObshield

#obshield selected
execute if entity @e[tag=Obshield,tag=SelRRNG,type=marker] run tag @s add rngObshield
execute if entity @e[tag=Obshield,tag=SelRRNG,type=marker] run tag @s remove rngShield

### 1 projectile type (except in CTF)
summon marker ~ ~ ~ {CustomName:'{"text":"Fireball","color":"light_purple"}',Tags:["ServerRNG","Fireball","RProjecRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Nova Rocket","color":"light_purple"}',Tags:["ServerRNG","Nova","RProjecRNG","RUtilRNG"]}
execute as @s[tag=!ctfEnabled] run tag @e[tag=RProjecRNG,limit=1,sort=random,type=marker] add SelRRNG
execute as @s[tag=ctfEnabled] run tag @e[tag=RProjecRNG,type=marker] add SelRRNG

#fireball selected
execute if entity @e[tag=Fireball,tag=SelRRNG,type=marker] run tag @s add rngFireball
execute as @s[tag=!ctfEnabled] if entity @e[tag=Fireball,tag=SelRRNG,type=marker] run tag @s remove rngNova

#nova rocket selected
execute if entity @e[tag=Nova,tag=SelRRNG,type=marker] run tag @s add rngNova
execute as @s[tag=!ctfEnabled] if entity @e[tag=Nova,tag=SelRRNG,type=marker] run tag @s remove rngFireball

#Announce extra utils
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"light_purple","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
summon marker ~ ~ ~ {Tags:["ServerRNG","Hurricane","RLightningRNG"]}
summon marker ~ ~ ~ {Tags:["ServerRNG","Thunderbolt","RLightningRNG"]}
tag @e[tag=RLightningRNG,limit=1,sort=random,type=marker] add SelRRNG

#hurricane selected
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=marker] run tag @s add rngHur
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=marker] run tag @s remove rngThun

#thunderbolt selected
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=marker] run tag @s add rngThun
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=marker] run tag @s remove rngHur

### 5/14 non-lightning missiles
summon marker ~ ~ ~ {CustomName:'{"text":"A.N.T.","color":"green"}',Tags:["ServerRNG","Ant","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Auxiliary","color":"red"}',Tags:["ServerRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Blade","color":"green"}',Tags:["ServerRNG","Blade","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Catapult","color":"green"}',Tags:["ServerRNG","Catapult","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Chronullifier","color":"green"}',Tags:["ServerRNG","Nullifier","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Citadel","color":"green"}',Tags:["ServerRNG","Citadel","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Elder Guardian","color":"green"}',Tags:["ServerRNG","Guard","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Gemini","color":"green"}',Tags:["ServerRNG","Gemini","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Lifter","color":"green"}',Tags:["ServerRNG","Lifter","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Juggerbuster","color":"red"}',Tags:["ServerRNG","Juggerbuster","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Rifter","color":"red"}',Tags:["ServerRNG","Rifter","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Slasher","color":"green"}',Tags:["ServerRNG","Slasher","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"TomaTwo","color":"green"}',Tags:["ServerRNG","TomaTwo","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Warhead","color":"red"}',Tags:["ServerRNG","Warhead","RMisRNG","RHeavyRNG"]}

tag @e[tag=RMisRNG,tag=!SelRRNG,limit=5,sort=random,type=marker] add SelRRNG

execute if entity @e[tag=SelRRNG,tag=Ant,type=marker] run tag @s add rngAnt
execute if entity @e[tag=SelRRNG,tag=Auxiliary,type=marker] run tag @s add rngAux
execute if entity @e[tag=SelRRNG,tag=Blade,type=marker] run tag @s add rngBlade
execute if entity @e[tag=SelRRNG,tag=Catapult,type=marker] run tag @s add rngCata
execute if entity @e[tag=SelRRNG,tag=Nullifier,type=marker] run tag @s add rngNull
execute if entity @e[tag=SelRRNG,tag=Citadel,type=marker] run tag @s add rngCitadel
execute if entity @e[tag=SelRRNG,tag=Guard,type=marker] run tag @s add rngEguard
execute if entity @e[tag=SelRRNG,tag=Gemini,type=marker] run tag @s add rngGemi
execute if entity @e[tag=SelRRNG,tag=Juggerbuster,type=marker] run tag @s add rngJbuster
execute if entity @e[tag=SelRRNG,tag=Lifter,type=marker] run tag @s add rngLift
execute if entity @e[tag=SelRRNG,tag=Rifter,type=marker] run tag @s add rngRift
execute if entity @e[tag=SelRRNG,tag=Slasher,type=marker] run tag @s add rngSlash
execute if entity @e[tag=SelRRNG,tag=TomaTwo,type=marker] run tag @s add rngToma
execute if entity @e[tag=SelRRNG,tag=Warhead,type=marker] run tag @s add rngWar

#Announce normals
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"green","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[tag=Hurricane,tag=SelRRNG,type=marker] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Hurricane","color":"gold","bold":false}]
execute if entity @e[tag=Thunderbolt,tag=SelRRNG,type=marker] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
tag @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] remove rngHeavy
execute unless entity @e[tag=Selection,tag=!rngHeavy,type=armor_stand] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"red","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]
tag @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] add heavyOff
execute unless entity @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] run tag @s remove heavyOff
kill @e[tag=ServerRNG,type=marker]

tellraw @a [{"text":""}]