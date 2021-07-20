########################################################################
## ANTIGRIEF: Detects and prevents missiles from spawning at own base ##
## if the position is occupied by another missile or well within base ##
########################################################################

##Individual missile detection
#Auxiliary
execute if entity @s[tag=BlueAux,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BAux","UnableClear"]}
execute if entity @s[tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~10 void_air
execute if entity @s[tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowAux,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YAux","UnableClear"]}
execute if entity @s[tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~10 void_air
execute if entity @s[tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~10 ~ 175 ~ filtered #custom:missileblocks force

#TomaTwo
execute if entity @s[tag=BlueToma,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BToma","UnableClear"]}
execute if entity @s[tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute if entity @s[tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowToma,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YToma","UnableClear"]}
execute if entity @s[tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 175 ~-12 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute if entity @s[tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Chronullifier
execute if entity @s[tag=BlueNull,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BNull","UnableClear"]}
execute if entity @s[tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~2 ~2 ~8 void_air
execute if entity @s[tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~2 ~2 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowNull,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YNull","UnableClear"]}
execute if entity @s[tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 175 ~-12 store result score @s Volume run fill ~-1 ~ ~ ~2 ~2 ~8 void_air
execute if entity @s[tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~-1 ~ ~ ~2 ~2 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Warhead
execute if entity @s[tag=BlueWar,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BWar","UnableClear"]}
execute if entity @s[tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute if entity @s[tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowWar,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YWar","UnableClear"]}
execute if entity @s[tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute if entity @s[tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force

#Thunderbolt
execute if entity @s[tag=BlueBolt,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BBolt","UnableClear"]}
execute if entity @s[tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~10 void_air
execute if entity @s[tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowBolt,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YBolt","UnableClear"]}
execute if entity @s[tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~10 void_air
execute if entity @s[tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~10 ~ 175 ~ filtered #custom:missileblocks force

#Hurricane
execute if entity @s[tag=BlueHur,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BHur","UnableClear"]}
execute if entity @s[tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute if entity @s[tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowHur,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YHur","UnableClear"]}
execute if entity @s[tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute if entity @s[tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Elder Guardian
execute if entity @s[tag=BlueGuard,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BGuard","UnableClear"]}
execute if entity @s[tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute if entity @s[tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowGuard,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YGuard","UnableClear"]}
execute if entity @s[tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute if entity @s[tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force

#A.N.T.
execute if entity @s[tag=BlueAnt,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BAnt","UnableClear"]}
execute if entity @s[tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~1 ~3 ~6 void_air
execute if entity @s[tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~1 ~3 ~6 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowAnt,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YAnt","UnableClear"]}
execute if entity @s[tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ 175 ~-10 store result score @s Volume run fill ~-1 ~ ~ ~1 ~3 ~6 void_air
execute if entity @s[tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~-1 ~ ~ ~1 ~3 ~6 ~ 175 ~ filtered #custom:missileblocks force

#Blade
execute if entity @s[tag=BlueBlade,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BBlade","UnableClear"]}
execute if entity @s[tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~14 void_air
execute if entity @s[tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~14 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowBlade,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YBlade","UnableClear"]}
execute if entity @s[tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 175 ~-18 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~14 void_air
execute if entity @s[tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~14 ~ 175 ~ filtered #custom:missileblocks force

#Rifter
execute if entity @s[tag=BlueRift,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BRift","UnableClear"]}
execute if entity @s[tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~13 void_air
execute if entity @s[tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~13 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowRift,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YRift","UnableClear"]}
execute if entity @s[tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 175 ~-17 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~13 void_air
execute if entity @s[tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~13 ~ 175 ~ filtered #custom:missileblocks force

#Juggerbuster
execute if entity @s[tag=BlueJug,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BJug","UnableClear"]}
execute if entity @s[tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~16 void_air
execute if entity @s[tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~16 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowJug,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YJug","UnableClear"]}
execute if entity @s[tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 175 ~-20 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~16 void_air
execute if entity @s[tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~16 ~ 175 ~ filtered #custom:missileblocks force

#Slasher
execute if entity @s[tag=BlueSlash,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BSlash","UnableClear"]}
execute if entity @s[tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~12 void_air
execute if entity @s[tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~12 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowSlash,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YSlash","UnableClear"]}
execute if entity @s[tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~12 void_air
execute if entity @s[tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~12 ~ 175 ~ filtered #custom:missileblocks force

#Catapult
execute if entity @s[tag=BlueCata,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BCata","UnableClear"]}
execute if entity @s[tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 175 ~3 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute if entity @s[tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowCata,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YCata","UnableClear"]}
execute if entity @s[tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute if entity @s[tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force

#Citadel
execute if entity @s[tag=BlueCitadel,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BCitadel","UnableClear"]}
execute if entity @s[tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute if entity @s[tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowCitadel,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YCitadel","UnableClear"]}
execute if entity @s[tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute if entity @s[tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Gemini
execute if entity @s[tag=BlueGemi,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BGemi","UnableClear"]}
execute if entity @s[tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~9 void_air
execute if entity @s[tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowGemi,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YGemi","UnableClear"]}
execute if entity @s[tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~9 void_air
execute if entity @s[tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Lifter
execute if entity @s[tag=BlueLift,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BLift","UnableClear"]}
execute if entity @s[tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~6 void_air
execute if entity @s[tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~6 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowLift,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YLift","UnableClear"]}
execute if entity @s[tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 175 ~-10 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~6 void_air
execute if entity @s[tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~6 ~ 175 ~ filtered #custom:missileblocks force

#Hypersonic
execute if entity @s[tag=BlueHyper,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BHyper","UnableClear"]}
execute if entity @s[tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute if entity @s[tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowHyper,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YHyper","UnableClear"]}
execute if entity @s[tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute if entity @s[tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Bullet
execute if entity @s[tag=BlueBull,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BBull","UnableClear"]}
execute if entity @s[tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~12 void_air
execute if entity @s[tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~12 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowBull,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YBull","UnableClear"]}
execute if entity @s[tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~12 void_air
execute if entity @s[tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~12 ~ 175 ~ filtered #custom:missileblocks force

#Duplex
execute if entity @s[tag=BlueDuplex,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BDuplex","UnableClear"]}
execute if entity @s[tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~17 void_air
execute if entity @s[tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~17 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowDuplex,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YDuplex","UnableClear"]}
execute if entity @s[tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 175 ~-21 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~17 void_air
execute if entity @s[tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~17 ~ 175 ~ filtered #custom:missileblocks force

#Broadsword
execute if entity @s[tag=BlueBroad,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BBroad","UnableClear"]}
execute if entity @s[tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute if entity @s[tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force
execute if entity @s[tag=YellowBroad,tag=!UnableMissile] unless entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] unless entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YBroad","UnableClear"]}
execute if entity @s[tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute if entity @s[tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force

##All missiles
scoreboard players set $1000 Unable 1000
execute if entity @s[tag=missile,scores={Unable=1..}] run scoreboard players operation @s Unable *= $1000 Unable
execute if entity @s[tag=missile,scores={Unable=1..}] run scoreboard players operation @s Unable /= @s Volume
tag @s[tag=missile,scores={Unable=70..}] add UnableMissile
tag @s[tag=missile,scores={Unable=70..}] add antigrief
scoreboard players reset @s Unable