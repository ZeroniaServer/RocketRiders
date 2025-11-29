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

#Deactivated items
tag @s remove rngJbuster
tag @s remove rngRift
tag @s remove rngCanopy
tag @s remove rngNova

#Disable modifiers
function modifiers:disablemodifiers

#Add needed settings and modifiers
tag @s add doHotbarLimit

#######################################################
## The lines below make it so 12 items are selected. ##
##        Thanks to Llewv for the suggestion!        ##
#######################################################

tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" Active Items:","color":"aqua","bold":false,"hover_event":{"action":"show_text","value":["",{"text":"In 1v1 Duel Mode, a set of 12 items is randomly generated for each round.","color":"white"}]}},{"text":" (hover for info)","italic":true,"color":"dark_gray"}]
tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type.
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Shield"}],Tags:["RankedRNG","Shield","RShieldRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Obsidian Shield"}],Tags:["RankedRNG","Obshield","RShieldRNG","RUtilRNG"]}
tag @e[x=0,type=marker,tag=RShieldRNG,limit=1,sort=random] add SelRRNG

#normal shield selected
execute if entity @e[x=0,type=marker,tag=Shield,tag=SelRRNG] run tag @s add rngShield
execute if entity @e[x=0,type=marker,tag=Shield,tag=SelRRNG] run tag @s remove rngObshield

#obshield selected
execute if entity @e[x=0,type=marker,tag=Obshield,tag=SelRRNG] run tag @s add rngObshield
execute if entity @e[x=0,type=marker,tag=Obshield,tag=SelRRNG] run tag @s remove rngShield

### 1 projectile type (only fireballs, novas removed)
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Fireball"}],Tags:["RankedRNG","Fireball","RProjecRNG","RUtilRNG"]}
tag @e[x=0,type=marker,tag=RProjecRNG,limit=1,sort=random] add SelRRNG

#fireball selected
tag @s add rngFireball
tag @s remove rngNova

#Announce extra utils
tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"light_purple","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
summon marker ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
summon marker ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightningRNG"]}
tag @e[x=0,type=marker,tag=RLightningRNG,limit=1,sort=random] add SelRRNG

#hurricane selected
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run tag @s add rngHur
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run tag @s remove rngThun

#thunderbolt selected
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run tag @s add rngThun
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run tag @s remove rngHur

### 6/10 non-lightning missiles
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"A.N.T"}],Tags:["RankedRNG","Ant","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Gemini"}],Tags:["RankedRNG","Gemini","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"TomaTwo"}],Tags:["RankedRNG","TomaTwo","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Auxiliary"}],Tags:["RankedRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Blade"}],Tags:["RankedRNG","Blade","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Catapult"}],Tags:["RankedRNG","Catapult","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Slasher"}],Tags:["RankedRNG","Slasher","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Elder Guardian"}],Tags:["RankedRNG","Guard","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Lifter"}],Tags:["RankedRNG","Lifter","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Chronullifier"}],Tags:["RankedRNG","Nullifier","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Citadel"}],Tags:["RankedRNG","Citadel","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Warhead"}],Tags:["RankedRNG","Warhead","RMisRNG","RHeavyRNG"]}

tag @e[x=0,type=marker,tag=RMisRNG,tag=!SelRRNG,limit=6,sort=random] add SelRRNG

execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Ant] run tag @s add rngAnt
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Gemini] run tag @s add rngGemi
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=TomaTwo] run tag @s add rngToma
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Auxiliary] run tag @s add rngAux
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Blade] run tag @s add rngBlade
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Catapult] run tag @s add rngCata
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Slasher] run tag @s add rngSlash
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Guard] run tag @s add rngEguard
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Lifter] run tag @s add rngLift
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Nullifier] run tag @s add rngNull
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Citadel] run tag @s add rngCitadel
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Warhead] run tag @s add rngWar

#Announce normals
tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"green","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Hurricane","color":"gold","bold":false}]
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!rngAux,tag=!rngWar] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"red","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]

kill @e[x=0,type=marker,tag=RankedRNG]
tellraw @a[x=0] [""]

#Enable/disable heavys
tag @s[tag=!rngWar,tag=!rngJbuster,tag=!rngAux,tag=!rngRift] add heavyOff
execute unless entity @s[tag=!rngWar,tag=!rngJbuster,tag=!rngAux,tag=!rngRift] run tag @s remove heavyOff