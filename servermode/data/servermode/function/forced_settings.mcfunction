#Missile
tag @s add rngNormal
tag @s add rngLightning
tag @s add rngUtil
tag @s add rngHeavy
tag @s remove normalOff
tag @s remove lightningOff

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
execute unless predicate game:gamemode_components/duel_settings_locked run function modifiers:disablemodifiers

#Add needed settings and modifiers
scoreboard players reset $disable_pierce_prevention config
tag @s add doHotbarLimit
scoreboard players reset $disable_tying config

#######################################################
## The lines below make it so 12 items are selected. ##
##        Thanks to Llewv for the suggestion!        ##
#######################################################

tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" Active Items:","color":"aqua","bold":false,"hover_event":{"action":"show_text","value":["",{"text":"A set of 12 items is randomly generated for each game.","color":"white"}]}},{"text":" (hover for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=!ctfEnabled] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]
execute if entity @s[tag=ctfEnabled] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type.
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Shield"}],Tags:["ServerRNG","Shield","RShieldRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Obsidian Shield"}],Tags:["ServerRNG","Obshield","RShieldRNG","RUtilRNG"]}
tag @e[x=0,type=marker,tag=RShieldRNG,limit=1,sort=random] add SelRRNG

#normal shield selected
execute if entity @e[x=0,type=marker,tag=Shield,tag=SelRRNG] run tag @s add rngShield
execute if entity @e[x=0,type=marker,tag=Shield,tag=SelRRNG] run tag @s remove rngObshield

#obshield selected
execute if entity @e[x=0,type=marker,tag=Obshield,tag=SelRRNG] run tag @s add rngObshield
execute if entity @e[x=0,type=marker,tag=Obshield,tag=SelRRNG] run tag @s remove rngShield

### 1 projectile type (except in CTF)
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Fireball"}],Tags:["ServerRNG","Fireball","RProjecRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Nova Rocket"}],Tags:["ServerRNG","Nova","RProjecRNG","RUtilRNG"]}
execute if entity @s[tag=!ctfEnabled] run tag @e[x=0,type=marker,tag=RProjecRNG,limit=1,sort=random] add SelRRNG
execute if entity @s[tag=ctfEnabled] run tag @e[x=0,type=marker,tag=RProjecRNG] add SelRRNG

#fireball selected
execute if entity @e[x=0,type=marker,tag=Fireball,tag=SelRRNG] run tag @s add rngFireball
execute if entity @s[tag=!ctfEnabled] if entity @e[x=0,type=marker,tag=Fireball,tag=SelRRNG] run tag @s remove rngNova

#nova rocket selected
execute if entity @e[x=0,type=marker,tag=Nova,tag=SelRRNG] run tag @s add rngNova
execute if entity @s[tag=!ctfEnabled] if entity @e[x=0,type=marker,tag=Nova,tag=SelRRNG] run tag @s remove rngFireball

#Announce extra utils
tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"light_purple","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
summon marker ~ ~ ~ {Tags:["ServerRNG","Hurricane","RLightningRNG"]}
summon marker ~ ~ ~ {Tags:["ServerRNG","Thunderbolt","RLightningRNG"]}
tag @e[x=0,type=marker,tag=RLightningRNG,limit=1,sort=random] add SelRRNG

#hurricane selected
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run tag @s add rngHur
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run tag @s remove rngThun

#thunderbolt selected
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run tag @s add rngThun
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run tag @s remove rngHur

### 5/14 non-lightning missiles
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"A.N.T."}],Tags:["ServerRNG","Ant","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Auxiliary"}],Tags:["ServerRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Blade"}],Tags:["ServerRNG","Blade","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Catapult"}],Tags:["ServerRNG","Catapult","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Chronullifier"}],Tags:["ServerRNG","Nullifier","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Citadel"}],Tags:["ServerRNG","Citadel","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Elder Guardian"}],Tags:["ServerRNG","Guard","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Gemini"}],Tags:["ServerRNG","Gemini","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Lifter"}],Tags:["ServerRNG","Lifter","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Juggerbuster"}],Tags:["ServerRNG","Juggerbuster","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Rifter"}],Tags:["ServerRNG","Rifter","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Slasher"}],Tags:["ServerRNG","Slasher","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"TomaTwo"}],Tags:["ServerRNG","TomaTwo","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Warhead"}],Tags:["ServerRNG","Warhead","RMisRNG","RHeavyRNG"]}

tag @e[x=0,type=marker,tag=RMisRNG,tag=!SelRRNG,limit=5,sort=random] add SelRRNG

execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Ant] run tag @s add rngAnt
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Auxiliary] run tag @s add rngAux
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Blade] run tag @s add rngBlade
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Catapult] run tag @s add rngCata
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Nullifier] run tag @s add rngNull
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Citadel] run tag @s add rngCitadel
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Guard] run tag @s add rngEguard
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Gemini] run tag @s add rngGemi
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Juggerbuster] run tag @s add rngJbuster
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Lifter] run tag @s add rngLift
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Rifter] run tag @s add rngRift
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Slasher] run tag @s add rngSlash
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=TomaTwo] run tag @s add rngToma
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Warhead] run tag @s add rngWar

#Announce normals
tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"green","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Hurricane","color":"gold","bold":false}]
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
tag @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] remove rngHeavy
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!rngHeavy] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"red","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]
tag @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] add heavyOff
execute unless entity @s[tag=!rngAux,tag=!rngJbuster,tag=!rngRift,tag=!rngWar] run tag @s remove heavyOff
kill @e[x=0,type=marker,tag=ServerRNG]

tellraw @a[x=0] [{"text":""}]