########################################################################
## ANTIGRIEF: Detects and prevents missiles from spawning at own base ##
## if the position is occupied by another missile or well within base ##
########################################################################

##Individual missile detection
#Auxiliary
execute as @s[tag=BlueAux,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BAux","UnableClear"]}
execute as @s[tag=BlueAux,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~10 void_air
execute as @s[tag=BlueAux,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowAux,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YAux","UnableClear"]}
execute as @s[tag=YellowAux,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~10 void_air
execute as @s[tag=YellowAux,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~10 ~ 175 ~ filtered #custom:missileblocks force

#TomaTwo
execute as @s[tag=BlueToma,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BToma","UnableClear"]}
execute as @s[tag=BlueToma,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute as @s[tag=BlueToma,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowToma,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YToma","UnableClear"]}
execute as @s[tag=YellowToma,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-12 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute as @s[tag=YellowToma,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Chronullifier
execute as @s[tag=BlueNull,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BNull","UnableClear"]}
execute as @s[tag=BlueNull,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~2 ~2 ~8 void_air
execute as @s[tag=BlueNull,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~2 ~2 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowNull,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YNull","UnableClear"]}
execute as @s[tag=YellowNull,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-12 store result score @s Volume run fill ~-1 ~ ~ ~2 ~2 ~8 void_air
execute as @s[tag=YellowNull,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~-1 ~ ~ ~2 ~2 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Warhead
execute as @s[tag=BlueWar,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BWar","UnableClear"]}
execute as @s[tag=BlueWar,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute as @s[tag=BlueWar,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowWar,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YWar","UnableClear"]}
execute as @s[tag=YellowWar,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute as @s[tag=YellowWar,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force

#Thunderbolt
execute as @s[tag=BlueBolt,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BBolt","UnableClear"]}
execute as @s[tag=BlueBolt,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~10 void_air
execute as @s[tag=BlueBolt,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowBolt,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YBolt","UnableClear"]}
execute as @s[tag=YellowBolt,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~10 void_air
execute as @s[tag=YellowBolt,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~10 ~ 175 ~ filtered #custom:missileblocks force

#Hurricane
execute as @s[tag=BlueHur,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BHur","UnableClear"]}
execute as @s[tag=BlueHur,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute as @s[tag=BlueHur,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowHur,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YHur","UnableClear"]}
execute as @s[tag=YellowHur,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute as @s[tag=YellowHur,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Elder Guardian
execute as @s[tag=BlueGuard,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BGuard","UnableClear"]}
execute as @s[tag=BlueGuard,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute as @s[tag=BlueGuard,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowGuard,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YGuard","UnableClear"]}
execute as @s[tag=YellowGuard,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute as @s[tag=YellowGuard,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force

#A.N.T.
execute as @s[tag=BlueAnt,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BAnt","UnableClear"]}
execute as @s[tag=BlueAnt,tag=!UnableMissile,type=marker] at @s positioned ~ 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~1 ~3 ~6 void_air
execute as @s[tag=BlueAnt,tag=!UnableMissile,type=marker] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~1 ~3 ~6 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowAnt,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YAnt","UnableClear"]}
execute as @s[tag=YellowAnt,tag=!UnableMissile,type=marker] at @s positioned ~ 175 ~-10 store result score @s Volume run fill ~-1 ~ ~ ~1 ~3 ~6 void_air
execute as @s[tag=YellowAnt,tag=!UnableMissile,type=marker] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~-1 ~ ~ ~1 ~3 ~6 ~ 175 ~ filtered #custom:missileblocks force

#Blade
execute as @s[tag=BlueBlade,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BBlade","UnableClear"]}
execute as @s[tag=BlueBlade,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~14 void_air
execute as @s[tag=BlueBlade,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~14 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowBlade,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YBlade","UnableClear"]}
execute as @s[tag=YellowBlade,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-18 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~14 void_air
execute as @s[tag=YellowBlade,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~14 ~ 175 ~ filtered #custom:missileblocks force

#Rifter
execute as @s[tag=BlueRift,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BRift","UnableClear"]}
execute as @s[tag=BlueRift,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~13 void_air
execute as @s[tag=BlueRift,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~13 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowRift,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YRift","UnableClear"]}
execute as @s[tag=YellowRift,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-17 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~13 void_air
execute as @s[tag=YellowRift,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~13 ~ 175 ~ filtered #custom:missileblocks force

#Juggerbuster
execute as @s[tag=BlueJug,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BJug","UnableClear"]}
execute as @s[tag=BlueJug,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~16 void_air
execute as @s[tag=BlueJug,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~16 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowJug,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YJug","UnableClear"]}
execute as @s[tag=YellowJug,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-20 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~16 void_air
execute as @s[tag=YellowJug,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~16 ~ 175 ~ filtered #custom:missileblocks force

#Slasher
execute as @s[tag=BlueSlash,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BSlash","UnableClear"]}
execute as @s[tag=BlueSlash,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~12 void_air
execute as @s[tag=BlueSlash,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~12 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowSlash,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YSlash","UnableClear"]}
execute as @s[tag=YellowSlash,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~12 void_air
execute as @s[tag=YellowSlash,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~12 ~ 175 ~ filtered #custom:missileblocks force

#Catapult
execute as @s[tag=BlueCata,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BCata","UnableClear"]}
execute as @s[tag=BlueCata,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~3 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute as @s[tag=BlueCata,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowCata,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YCata","UnableClear"]}
execute as @s[tag=YellowCata,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute as @s[tag=YellowCata,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force

#Citadel
execute as @s[tag=BlueCitadel,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BCitadel","UnableClear"]}
execute as @s[tag=BlueCitadel,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute as @s[tag=BlueCitadel,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowCitadel,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YCitadel","UnableClear"]}
execute as @s[tag=YellowCitadel,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute as @s[tag=YellowCitadel,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Gemini
execute as @s[tag=BlueGemi,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BGemi","UnableClear"]}
execute as @s[tag=BlueGemi,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~9 void_air
execute as @s[tag=BlueGemi,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowGemi,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YGemi","UnableClear"]}
execute as @s[tag=YellowGemi,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~9 void_air
execute as @s[tag=YellowGemi,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Lifter
execute as @s[tag=BlueLift,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BLift","UnableClear"]}
execute as @s[tag=BlueLift,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~6 void_air
execute as @s[tag=BlueLift,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~6 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowLift,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YLift","UnableClear"]}
execute as @s[tag=YellowLift,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-10 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~6 void_air
execute as @s[tag=YellowLift,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~6 ~ 175 ~ filtered #custom:missileblocks force

#Hypersonic
execute as @s[tag=BlueHyper,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BHyper","UnableClear"]}
execute as @s[tag=BlueHyper,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute as @s[tag=BlueHyper,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowHyper,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YHyper","UnableClear"]}
execute as @s[tag=YellowHyper,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute as @s[tag=YellowHyper,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Bullet
execute as @s[tag=BlueBull,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BBull","UnableClear"]}
execute as @s[tag=BlueBull,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~12 void_air
execute as @s[tag=BlueBull,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~12 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowBull,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YBull","UnableClear"]}
execute as @s[tag=YellowBull,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~12 void_air
execute as @s[tag=YellowBull,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~12 ~ 175 ~ filtered #custom:missileblocks force

#Duplex
execute as @s[tag=BlueDuplex,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BDuplex","UnableClear"]}
execute as @s[tag=BlueDuplex,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~17 void_air
execute as @s[tag=BlueDuplex,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~17 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowDuplex,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YDuplex","UnableClear"]}
execute as @s[tag=YellowDuplex,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-21 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~17 void_air
execute as @s[tag=YellowDuplex,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~17 ~ 175 ~ filtered #custom:missileblocks force

#Broadsword
execute as @s[tag=BlueBroad,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["BBroad","UnableClear"]}
execute as @s[tag=BlueBroad,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute as @s[tag=BlueBroad,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force
execute as @s[tag=YellowBroad,tag=!UnableMissile,type=marker] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon marker ~ ~ ~ {Tags:["YBroad","UnableClear"]}
execute as @s[tag=YellowBroad,tag=!UnableMissile,type=marker] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute as @s[tag=YellowBroad,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force

##All missiles
scoreboard players set $1000 Unable 1000
execute as @s[tag=missile,scores={Unable=1..},type=marker] run scoreboard players operation @s Unable *= $1000 Unable
execute as @s[tag=missile,scores={Unable=1..},type=marker] run scoreboard players operation @s Unable /= @s Volume
tag @s[tag=missile,scores={Unable=70..},type=marker] add UnableMissile
tag @s[tag=missile,scores={Unable=70..},type=marker] add antigrief
scoreboard players reset @s Unable