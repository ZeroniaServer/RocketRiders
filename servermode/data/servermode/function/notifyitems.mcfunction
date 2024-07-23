tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"Active Items:","color":"gray","bold":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"A set of 12 items is randomly generated for each game.","color":"white"}]}},{"text":" (hover for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ctfEnabled] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngShield] run summon marker ~ ~ ~ {CustomName:'{"text":"Shield","color":"light_purple"}',Tags:["ServerRNG","Shield","RShieldRNG","RUtilRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngObshield] run summon marker ~ ~ ~ {CustomName:'{"text":"Obsidian Shield","color":"light_purple"}',Tags:["ServerRNG","Obshield","RShieldRNG","RUtilRNG"]}

### 1 projectile type
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngFireball] run summon marker ~ ~ ~ {CustomName:'{"text":"Fireball","color":"light_purple"}',Tags:["ServerRNG","Fireball","RProjecRNG","RUtilRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngNova] run summon marker ~ ~ ~ {CustomName:'{"text":"Nova Rocket","color":"light_purple"}',Tags:["ServerRNG","Nova","RProjecRNG","RUtilRNG"]}

#Announce extra utils
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"light_purple","bold":false},{"selector":"@e[x=0,type=marker,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngHur] run summon marker ~ ~ ~ {Tags:["ServerRNG","Hurricane","RLightningRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngThun] run summon marker ~ ~ ~ {Tags:["ServerRNG","Thunderbolt","RLightningRNG"]}

### 5/14 non-lightning missiles
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngAnt] run summon marker ~ ~ ~ {CustomName:'{"text":"A.N.T.","color":"green"}',Tags:["ServerRNG","Ant","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngAux] run summon marker ~ ~ ~ {CustomName:'{"text":"Auxiliary","color":"red"}',Tags:["ServerRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngBlade] run summon marker ~ ~ ~ {CustomName:'{"text":"Blade","color":"green"}',Tags:["ServerRNG","Blade","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngCata] run summon marker ~ ~ ~ {CustomName:'{"text":"Catapult","color":"green"}',Tags:["ServerRNG","Catapult","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngNull] run summon marker ~ ~ ~ {CustomName:'{"text":"Chronullifier","color":"green"}',Tags:["ServerRNG","Nullifier","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngCita] run summon marker ~ ~ ~ {CustomName:'{"text":"Citadel","color":"green"}',Tags:["ServerRNG","Citadel","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngEguard] run summon marker ~ ~ ~ {CustomName:'{"text":"Elder Guardian","color":"green"}',Tags:["ServerRNG","Guard","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngGemi] run summon marker ~ ~ ~ {CustomName:'{"text":"Gemini","color":"green"}',Tags:["ServerRNG","Gemini","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngJbuster] run summon marker ~ ~ ~ {CustomName:'{"text":"Juggerbuster","color":"red"}',Tags:["ServerRNG","Juggerbuster","RMisRNG","RHeavyRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngLift] run summon marker ~ ~ ~ {CustomName:'{"text":"Lifter","color":"green"}',Tags:["ServerRNG","Lifter","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngRift] run summon marker ~ ~ ~ {CustomName:'{"text":"Rifter","color":"red"}',Tags:["ServerRNG","Rifter","RMisRNG","RHeavyRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngSlash] run summon marker ~ ~ ~ {CustomName:'{"text":"Slasher","color":"green"}',Tags:["ServerRNG","Slasher","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngToma] run summon marker ~ ~ ~ {CustomName:'{"text":"TomaTwo","color":"green"}',Tags:["ServerRNG","TomaTwo","RMisRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngWar] run summon marker ~ ~ ~ {CustomName:'{"text":"Warhead","color":"red"}',Tags:["ServerRNG","Warhead","RMisRNG","RHeavyRNG"]}

#Announce normals
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"green","bold":false},{"selector":"@e[x=0,type=marker,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[x=0,type=marker,tag=Hurricane] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Hurricane","color":"gold","bold":false}]
execute if entity @e[x=0,type=marker,tag=Thunderbolt] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!rngHeavy] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"red","bold":false},{"selector":"@e[x=0,type=marker,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]
kill @e[x=0,type=marker,tag=ServerRNG]

tellraw @s [{"text":""}]