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
execute if entity @s[tag=!WindDownForce] run function modifiers:disablemodifiers

#Add needed settings and modifiers
tag @s add doPrevention
tag @s add doHotbarLimit
tag @s add doTying
tag @s[tag=!crusadeEnabled] remove doStacking
tag @s remove doFireballPortals

#######################################################
## The lines below make it so 12 items are selected. ##
##        Thanks to Llewv for the suggestion!        ##
#######################################################

tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"Active Items:","color":"aqua","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"A set of 12 items is randomly generated for each game.","color":"white"}]}},{"text":" (hover for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=!ctfEnabled] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]
execute if entity @s[tag=ctfEnabled] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type.
summon marker ~ ~ ~ {CustomName:'{"text":"Shield","color":"light_purple"}',Tags:["ServerRNG","Shield","RShieldRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Obsidian Shield","color":"light_purple"}',Tags:["ServerRNG","Obshield","RShieldRNG","RUtilRNG"]}
tag @e[type=marker,tag=RShieldRNG,limit=1,sort=random] add SelRRNG

#normal shield selected
execute if entity @e[type=marker,tag=Shield,tag=SelRRNG] run tag @s add rngShield
execute if entity @e[type=marker,tag=Shield,tag=SelRRNG] run tag @s remove rngObshield

#obshield selected
execute if entity @e[type=marker,tag=Obshield,tag=SelRRNG] run tag @s add rngObshield
execute if entity @e[type=marker,tag=Obshield,tag=SelRRNG] run tag @s remove rngShield

### 1 projectile type (except in CTF)
summon marker ~ ~ ~ {CustomName:'{"text":"Fireball","color":"light_purple"}',Tags:["ServerRNG","Fireball","RProjecRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:'{"text":"Nova Rocket","color":"light_purple"}',Tags:["ServerRNG","Nova","RProjecRNG","RUtilRNG"]}
execute if entity @s[tag=!ctfEnabled] run tag @e[type=marker,tag=RProjecRNG,limit=1,sort=random] add SelRRNG
execute if entity @s[tag=ctfEnabled] run tag @e[type=marker,tag=RProjecRNG] add SelRRNG

#fireball selected
execute if entity @e[type=marker,tag=Fireball,tag=SelRRNG] run tag @s add rngFireball
execute if entity @s[tag=!ctfEnabled] if entity @e[type=marker,tag=Fireball,tag=SelRRNG] run tag @s remove rngNova

#nova rocket selected
execute if entity @e[type=marker,tag=Nova,tag=SelRRNG] run tag @s add rngNova
execute if entity @s[tag=!ctfEnabled] if entity @e[type=marker,tag=Nova,tag=SelRRNG] run tag @s remove rngFireball

#Announce extra utils
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"light_purple","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
summon marker ~ ~ ~ {Tags:["ServerRNG","Hurricane","RLightningRNG"]}
summon marker ~ ~ ~ {Tags:["ServerRNG","Thunderbolt","RLightningRNG"]}
tag @e[type=marker,tag=RLightningRNG,limit=1,sort=random] add SelRRNG

#hurricane selected
execute if entity @e[type=marker,tag=Hurricane,tag=SelRRNG] run tag @s add rngHur
execute if entity @e[type=marker,tag=Hurricane,tag=SelRRNG] run tag @s remove rngThun

#thunderbolt selected
execute if entity @e[type=marker,tag=Thunderbolt,tag=SelRRNG] run tag @s add rngThun
execute if entity @e[type=marker,tag=Thunderbolt,tag=SelRRNG] run tag @s remove rngHur

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

tag @e[type=marker,tag=RMisRNG,tag=!SelRRNG,limit=5,sort=random] add SelRRNG

execute if entity @e[type=marker,tag=SelRRNG,tag=Ant] run tag @s add rngAnt
execute if entity @e[type=marker,tag=SelRRNG,tag=Auxiliary] run tag @s add rngAux
execute if entity @e[type=marker,tag=SelRRNG,tag=Blade] run tag @s add rngBlade
execute if entity @e[type=marker,tag=SelRRNG,tag=Catapult] run tag @s add rngCata
execute if entity @e[type=marker,tag=SelRRNG,tag=Nullifier] run tag @s add rngNull
execute if entity @e[type=marker,tag=SelRRNG,tag=Citadel] run tag @s add rngCitadel
execute if entity @e[type=marker,tag=SelRRNG,tag=Guard] run tag @s add rngEguard
execute if entity @e[type=marker,tag=SelRRNG,tag=Gemini] run tag @s add rngGemi
execute if entity @e[type=marker,tag=SelRRNG,tag=Juggerbuster] run tag @s add rngJbuster
execute if entity @e[type=marker,tag=SelRRNG,tag=Lifter] run tag @s add rngLift
execute if entity @e[type=marker,tag=SelRRNG,tag=Rifter] run tag @s add rngRift
execute if entity @e[type=marker,tag=SelRRNG,tag=Slasher] run tag @s add rngSlash
execute if entity @e[type=marker,tag=SelRRNG,tag=TomaTwo] run tag @s add rngToma
execute if entity @e[type=marker,tag=SelRRNG,tag=Warhead] run tag @s add rngWar

#Announce normals
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"green","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[type=marker,tag=Hurricane,tag=SelRRNG] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Hurricane","color":"gold","bold":false}]
execute if entity @e[type=marker,tag=Thunderbolt,tag=SelRRNG] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
tag @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] remove rngHeavy
execute unless entity @e[type=armor_stand,tag=Selection,tag=!rngHeavy] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"red","bold":false},{"selector":"@e[type=marker,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]
tag @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] add heavyOff
execute unless entity @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] run tag @s remove heavyOff
kill @e[type=marker,tag=ServerRNG]

tellraw @a [{"text":""}]