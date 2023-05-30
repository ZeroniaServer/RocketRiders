tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true}]
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"Active Items:","color":"gray","bold":false,"hoverEvent":{"action":"show_text","contents":["",{"text":"In 1v1 Duel Mode, a set of 12 items is randomly generated for each round.","color":"white"}]}},{"text":" (hover for info)","italic":true,"color":"dark_gray"}]
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"}]

### 1 shield type.
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngShield,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Shield","color":"light_purple"}',Tags:["RankedRNG","Shield","RShieldRNG","RUtilRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngObshield,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Obsidian Shield","color":"light_purple"}',Tags:["RankedRNG","Obshield","RShieldRNG","RUtilRNG"]}

### 1 projectile type.
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngFireball,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Fireball","color":"light_purple"}',Tags:["RankedRNG","Fireball","RProjecRNG","RUtilRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngNova,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Nova Rocket","color":"light_purple"}',Tags:["RankedRNG","Nova","RProjecRNG","RUtilRNG"]}

#Announce extra utils
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"light_purple","bold":false},{"selector":"@e[predicate=custom:indimension,type=marker,tag=RUtilRNG]","color":"light_purple","bold":false}]

### 1 lightning type.
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngHur,limit=1] run summon marker ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngBolt,limit=1] run summon marker ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightningRNG"]}

### 6/10 non-lightning missiles
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngAnt,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"A.N.T.","color":"green"}',Tags:["RankedRNG","Ant","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngGemi,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Gemini","color":"green"}',Tags:["RankedRNG","Gemini","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngToma,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"TomaTwo","color":"green"}',Tags:["RankedRNG","TomaTwo","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngAux,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Auxiliary","color":"red"}',Tags:["RankedRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngBlade,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Blade","color":"green"}',Tags:["RankedRNG","Blade","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngCata,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Catapult","color":"green"}',Tags:["RankedRNG","Catapult","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngSlash,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Slasher","color":"green"}',Tags:["RankedRNG","Slasher","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngEguard,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Elder Guardian","color":"green"}',Tags:["RankedRNG","Guard","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngLift,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Lifter","color":"green"}',Tags:["RankedRNG","Lifter","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngNull,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Chronullifier","color":"green"}',Tags:["RankedRNG","Nullifier","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngCitadel,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Citadel","color":"green"}',Tags:["RankedRNG","Citadel","RMisRNG"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngWar,limit=1] run summon marker ~ ~ ~ {CustomName:'{"text":"Warhead","color":"red"}',Tags:["RankedRNG","Warhead","RMisRNG","RHeavyRNG"]}

#Announce normals
tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"green","bold":false},{"selector":"@e[predicate=custom:indimension,type=marker,tag=RMisRNG,tag=!RHeavyRNG]","color":"green","bold":false}]

#Announce lightning
execute if entity @e[predicate=custom:indimension,type=marker,tag=Hurricane,tag=RLightningRNG] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Hurricane","color":"gold","bold":false}]
execute if entity @e[predicate=custom:indimension,type=marker,tag=Thunderbolt,tag=RLightningRNG] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- Thunderbolt","color":"gold","bold":false}]

#Announce heavys (if any)
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!rngAux,tag=!rngWar] run tellraw @s ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"- ","color":"red","bold":false},{"selector":"@e[predicate=custom:indimension,type=marker,tag=RMisRNG,tag=RHeavyRNG]","color":"red","bold":false}]

tellraw @s [""]

kill @e[predicate=custom:indimension,type=marker,tag=RankedRNG]