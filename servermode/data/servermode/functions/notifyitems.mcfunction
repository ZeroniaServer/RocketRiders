tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"Active Items: ","color":"gray","bold":false},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"A set of 12 items is randomly generated for each game.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=!ctfEnabled,limit=1,type=armor_stand] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]
execute if entity @e[tag=Selection,tag=ctfEnabled,limit=1,type=armor_stand] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type
execute if entity @e[tag=Selection,tag=rngShield,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Shield","color":"light_purple"}',Tags:["ServerRNG","Shield","RShieldRNG","RUtilRNG"]}
execute if entity @e[tag=Selection,tag=rngObshield,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Obsidian Shield","color":"light_purple"}',Tags:["ServerRNG","Obshield","RShieldRNG","RUtilRNG"]}

### 1 projectile type
execute if entity @e[tag=Selection,tag=rngFireball,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Fireball","color":"light_purple"}',Tags:["ServerRNG","Fireball","RProjecRNG","RUtilRNG"]}
execute if entity @e[tag=Selection,tag=rngNova,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Nova Rocket","color":"light_purple"}',Tags:["ServerRNG","Nova","RProjecRNG","RUtilRNG"]}

#Announce extra utils
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"light_purple","bold":false},{"selector":"@e[type=marker,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
execute if entity @e[tag=Selection,tag=rngHur,limit=1,type=armor_stand] run summon marker ~ ~ ~ {Tags:["ServerRNG","Hurricane","RLightningRNG"]}
execute if entity @e[tag=Selection,tag=rngThun,limit=1,type=armor_stand] run summon marker ~ ~ ~ {Tags:["ServerRNG","Thunderbolt","RLightningRNG"]}

### 5/14 non-lightning missiles
execute if entity @e[tag=Selection,tag=rngAnt,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"A.N.T.","color":"green"}',Tags:["ServerRNG","Ant","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngAux,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Auxiliary","color":"red"}',Tags:["ServerRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
execute if entity @e[tag=Selection,tag=rngBlade,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Blade","color":"green"}',Tags:["ServerRNG","Blade","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngCata,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Catapult","color":"green"}',Tags:["ServerRNG","Catapult","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngNull,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Chronullifier","color":"green"}',Tags:["ServerRNG","Nullifier","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngCita,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Citadel","color":"green"}',Tags:["ServerRNG","Citadel","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngEguard,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Elder Guardian","color":"green"}',Tags:["ServerRNG","Guard","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngGemi,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Gemini","color":"green"}',Tags:["ServerRNG","Gemini","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngJbuster,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Juggerbuster","color":"red"}',Tags:["ServerRNG","Juggerbuster","RMisRNG","RHeavyRNG"]}
execute if entity @e[tag=Selection,tag=rngLift,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Lifter","color":"green"}',Tags:["ServerRNG","Lifter","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngRift,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Rifter","color":"red"}',Tags:["ServerRNG","Rifter","RMisRNG","RHeavyRNG"]}
execute if entity @e[tag=Selection,tag=rngSlash,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Slasher","color":"green"}',Tags:["ServerRNG","Slasher","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngToma,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"TomaTwo","color":"green"}',Tags:["ServerRNG","TomaTwo","RMisRNG"]}
execute if entity @e[tag=Selection,tag=rngWar,limit=1,type=armor_stand] run summon marker ~ ~ ~ {CustomName:'{"text":"Warhead","color":"red"}',Tags:["ServerRNG","Warhead","RMisRNG","RHeavyRNG"]}

#Announce normals
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"green","bold":false},{"selector":"@e[type=marker,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[tag=Hurricane,type=marker] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Hurricane","color":"gold","bold":false}]
execute if entity @e[tag=Thunderbolt,type=marker] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
execute unless entity @e[tag=Selection,tag=!rngHeavy,type=armor_stand] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"red","bold":false},{"selector":"@e[type=marker,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]
kill @e[tag=ServerRNG,type=marker]

tellraw @s [{"text":""}]