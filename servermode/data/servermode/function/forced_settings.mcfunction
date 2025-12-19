#Missile
scoreboard players reset $disable_item_category/normal_missiles config
scoreboard players reset $disable_item_category/lightning_missiles config
scoreboard players reset $disable_item_category/utilities config
scoreboard players reset $disable_item_category/heavy_missiles config

scoreboard players set $item_pool.missile/ant gamemode_components -1
scoreboard players set $item_pool.missile/auxiliary gamemode_components -1
scoreboard players set $item_pool.missile/blade gamemode_components -1
scoreboard players set $item_pool.missile/catapult gamemode_components -1
scoreboard players set $item_pool.missile/chronullifier gamemode_components -1
scoreboard players set $item_pool.missile/citadel gamemode_components -1
scoreboard players set $item_pool.missile/elder_guardian gamemode_components -1
scoreboard players set $item_pool.missile/gemini gamemode_components -1
scoreboard players set $item_pool.missile/hurricane gamemode_components -1
scoreboard players set $item_pool.missile/juggerbuster gamemode_components -1
scoreboard players set $item_pool.missile/lifter gamemode_components -1
scoreboard players set $item_pool.missile/rifter gamemode_components -1
scoreboard players set $item_pool.missile/slasher gamemode_components -1
scoreboard players set $item_pool.missile/tomatwo gamemode_components -1
scoreboard players set $item_pool.missile/thunderbolt gamemode_components -1
scoreboard players set $item_pool.missile/warhead gamemode_components -1

#Util
execute unless score $item_pool.arrow gamemode_components matches -1 run scoreboard players set $item_pool.arrow gamemode_components 1
execute unless score $item_pool.fireball gamemode_components matches -1 run scoreboard players set $item_pool.fireball gamemode_components 1
execute unless score $item_pool.shield gamemode_components matches -1 run scoreboard players set $item_pool.shield gamemode_components 1
execute unless score $item_pool.obsidian_shield gamemode_components matches -1 run scoreboard players set $item_pool.obsidian_shield gamemode_components 1
execute unless score $item_pool.vortex gamemode_components matches -1 run scoreboard players set $item_pool.vortex gamemode_components 1
execute unless score $item_pool.splash gamemode_components matches -1 run scoreboard players set $item_pool.splash gamemode_components 1
execute unless score $item_pool.nova_rocket gamemode_components matches -1 run scoreboard players set $item_pool.nova_rocket gamemode_components 1
execute unless score $item_pool.canopy gamemode_components matches -1 run scoreboard players set $item_pool.canopy gamemode_components 1

#Disable modifiers
execute unless predicate game:gamemode_components/duel_settings_locked run function modifiers:disablemodifiers

#Add needed settings and modifiers
scoreboard players reset $disable_pierce_prevention config
scoreboard players reset $disable_hotbar_limit config
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
execute if entity @e[x=0,type=marker,tag=Shield,tag=SelRRNG] run scoreboard players set $item_pool.shield gamemode_components 1
execute if entity @e[x=0,type=marker,tag=Shield,tag=SelRRNG] run scoreboard players set $item_pool.obsidian_shield gamemode_components -1

#obshield selected
execute if entity @e[x=0,type=marker,tag=Obshield,tag=SelRRNG] run scoreboard players set $item_pool.obsidian_shield gamemode_components 1
execute if entity @e[x=0,type=marker,tag=Obshield,tag=SelRRNG] run scoreboard players set $item_pool.shield gamemode_components -1

### 1 projectile type (except in CTF)
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Fireball"}],Tags:["ServerRNG","Fireball","RProjecRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Nova Rocket"}],Tags:["ServerRNG","Nova","RProjecRNG","RUtilRNG"]}
execute if entity @s[tag=!ctfEnabled] run tag @e[x=0,type=marker,tag=RProjecRNG,limit=1,sort=random] add SelRRNG
execute if entity @s[tag=ctfEnabled] run tag @e[x=0,type=marker,tag=RProjecRNG] add SelRRNG

#fireball selected
execute if entity @e[x=0,type=marker,tag=Fireball,tag=SelRRNG] run scoreboard players set $item_pool.fireball gamemode_components 1
execute if entity @s[tag=!ctfEnabled] if entity @e[x=0,type=marker,tag=Fireball,tag=SelRRNG] run scoreboard players set $item_pool.nova_rocket gamemode_components -1

#nova rocket selected
execute if entity @e[x=0,type=marker,tag=Nova,tag=SelRRNG] run scoreboard players set $item_pool.nova_rocket gamemode_components 1
execute if entity @s[tag=!ctfEnabled] if entity @e[x=0,type=marker,tag=Nova,tag=SelRRNG] run scoreboard players set $item_pool.fireball gamemode_components -1

#Announce extra utils
tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"light_purple","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
summon marker ~ ~ ~ {Tags:["ServerRNG","Hurricane","RLightningRNG"]}
summon marker ~ ~ ~ {Tags:["ServerRNG","Thunderbolt","RLightningRNG"]}
tag @e[x=0,type=marker,tag=RLightningRNG,limit=1,sort=random] add SelRRNG

#hurricane selected
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run scoreboard players set $item_pool.missile/hurricane gamemode_components 1
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run scoreboard players set $item_pool.missile/thunderbolt gamemode_components -1

#thunderbolt selected
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run scoreboard players set $item_pool.missile/thunderbolt gamemode_components 1
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run scoreboard players set $item_pool.missile/hurricane gamemode_components -1

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

execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Ant] run scoreboard players set $item_pool.missile/ant gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Auxiliary] run scoreboard players set $item_pool.missile/auxiliary gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Blade] run scoreboard players set $item_pool.missile/blade gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Catapult] run scoreboard players set $item_pool.missile/catapult gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Nullifier] run scoreboard players set $item_pool.missile/chronullifier gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Citadel] run scoreboard players set $item_pool.missile/citadel gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Guard] run scoreboard players set $item_pool.missile/elder_guardian gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Gemini] run scoreboard players set $item_pool.missile/gemini gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Juggerbuster] run scoreboard players set $item_pool.missile/juggerbuster gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Lifter] run scoreboard players set $item_pool.missile/lifter gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Rifter] run scoreboard players set $item_pool.missile/rifter gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Slasher] run scoreboard players set $item_pool.missile/slasher gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=TomaTwo] run scoreboard players set $item_pool.missile/tomatwo gamemode_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Warhead] run scoreboard players set $item_pool.missile/warhead gamemode_components 1

#Announce normals
tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"green","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Hurricane","color":"gold","bold":false}]
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
execute unless predicate game:item_pool_meta/all_heavy_missiles_disabled run tellraw @a[x=0] ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"red","bold":false},{"selector":"@e[x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]
kill @e[x=0,type=marker,tag=ServerRNG]

tellraw @a[x=0] [{"text":""}]