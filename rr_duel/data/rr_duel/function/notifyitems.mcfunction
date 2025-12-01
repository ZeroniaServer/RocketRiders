# tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true}]
tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" Active Items:","color":"aqua","bold":false,"hover_event":{"action":"show_text","value":["",{"text":"In 1v1 Duel Mode, a set of 12 items is randomly generated for each round.","color":"white"}]}},{"text":" (hover for info)","italic":true,"color":"dark_gray"}]
tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type.
execute if predicate game:item_pool/shield run summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Shield"}],Tags:["RankedRNG","Shield","RShieldRNG","RUtilRNG"]}
execute if predicate game:item_pool/obsidian_shield run summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Obsidian Shield"}],Tags:["RankedRNG","Obshield","RShieldRNG","RUtilRNG"]}

### 1 projectile type.
execute if predicate game:item_pool/fireball run summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Fireball"}],Tags:["RankedRNG","Fireball","RProjecRNG","RUtilRNG"]}
execute if predicate game:item_pool/nova_rocket run summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Nova Rocket"}],Tags:["RankedRNG","Nova","RProjecRNG","RUtilRNG"]}

#Announce extra utils
tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"light_purple","bold":false},{"selector":"@e[x=0,type=marker,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
execute if predicate game:item_pool/missile/hurricane run summon marker ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
execute if predicate game:item_pool/missile/thunderbolt run summon marker ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightningRNG"]}

### 6/10 non-lightning missiles
execute if predicate game:item_pool/missile/ant run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"A.N.T."}],Tags:["RankedRNG","Ant","RMisRNG"]}
execute if predicate game:item_pool/missile/gemini run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Gemini"}],Tags:["RankedRNG","Gemini","RMisRNG"]}
execute if predicate game:item_pool/missile/tomatwo run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"TomaTwo"}],Tags:["RankedRNG","TomaTwo","RMisRNG"]}
execute if predicate game:item_pool/missile/auxiliary run summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Auxiliary"}],Tags:["RankedRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
execute if predicate game:item_pool/missile/blade run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Blade"}],Tags:["RankedRNG","Blade","RMisRNG"]}
execute if predicate game:item_pool/missile/catapult run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Catapult"}],Tags:["RankedRNG","Catapult","RMisRNG"]}
execute if predicate game:item_pool/missile/slasher run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Slasher"}],Tags:["RankedRNG","Slasher","RMisRNG"]}
execute if predicate game:item_pool/missile/elder_guardian run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Elder Guardian"}],Tags:["RankedRNG","Guard","RMisRNG"]}
execute if predicate game:item_pool/missile/lifter run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Lifter"}],Tags:["RankedRNG","Lifter","RMisRNG"]}
execute if predicate game:item_pool/missile/chronullifier run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Chronullifier"}],Tags:["RankedRNG","Nullifier","RMisRNG"]}
execute if predicate game:item_pool/missile/citadel run summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Citadel"}],Tags:["RankedRNG","Citadel","RMisRNG"]}
execute if predicate game:item_pool/missile/warhead run summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Warhead"}],Tags:["RankedRNG","Warhead","RMisRNG","RHeavyRNG"]}

#Announce normals
tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"green","bold":false},{"selector":"@e[x=0,type=marker,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=RLightningRNG] run tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Hurricane","color":"gold","bold":false}]
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=RLightningRNG] run tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
execute if entity @e[limit=1,x=0,type=marker,tag=RMisRNG,tag=RHeavyRNG] run tellraw @s ["",{"text":"|","color":"dark_gray","bold":true},{"text":" - ","color":"red","bold":false},{"selector":"@e[x=0,type=marker,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]

tellraw @s [""]

kill @e[x=0,type=marker,tag=RankedRNG]