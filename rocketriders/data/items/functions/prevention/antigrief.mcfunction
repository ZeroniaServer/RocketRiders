########################################################################
## ANTIGRIEF: Detects and prevents missiles from spawning at own base ##
## if the position is occupied by another missile or well within base ##
########################################################################

##Individual missile detection
#Auxiliary
execute as @s[tag=BlueAux,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BAux","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueAux,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~3 ~10 void_air
execute as @s[tag=BlueAux,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowAux,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YAux","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowAux,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~3 ~10 void_air
execute as @s[tag=YellowAux,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:antigrief force

#TomaTwo
execute as @s[tag=BlueToma,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BToma","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueToma,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~8 void_air
execute as @s[tag=BlueToma,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowToma,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YToma","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowToma,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-12 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~8 void_air
execute as @s[tag=YellowToma,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:antigrief force

#Chronullifier
execute as @s[tag=BlueNull,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BNull","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueNull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~1 ~2 ~8 void_air
execute as @s[tag=BlueNull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowNull,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YNull","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowNull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-12 store result score @s Volume run fill ~ ~ ~ ~1 ~2 ~8 void_air
execute as @s[tag=YellowNull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:antigrief force

#Warhead
execute as @s[tag=BlueWar,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BWar","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueWar,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~10 void_air
execute as @s[tag=BlueWar,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowWar,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YWar","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowWar,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~10 void_air
execute as @s[tag=YellowWar,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:antigrief force

#Thunderbolt
execute as @s[tag=BlueBolt,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BBolt","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueBolt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~10 void_air
execute as @s[tag=BlueBolt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~10 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowBolt,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YBolt","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowBolt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~10 void_air
execute as @s[tag=YellowBolt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~10 ~ 175 ~ filtered #custom:antigrief force

#Hurricane
execute as @s[tag=BlueHur,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BHur","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueHur,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~8 void_air
execute as @s[tag=BlueHur,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowHur,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YHur","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowHur,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~8 void_air
execute as @s[tag=YellowHur,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:antigrief force

#Elder Guardian
execute as @s[tag=BlueGuard,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BGuard","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueGuard,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~10 void_air
execute as @s[tag=BlueGuard,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowGuard,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YGuard","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowGuard,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~10 void_air
execute as @s[tag=YellowGuard,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:antigrief force

#A.N.T.
execute as @s[tag=BlueAnt,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BAnt","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueAnt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~ 175 ~4 store result score @s Volume run fill ~ ~ ~ ~ ~3 ~6 void_air
execute as @s[tag=BlueAnt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowAnt,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YAnt","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowAnt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~ 175 ~-10 store result score @s Volume run fill ~ ~ ~ ~ ~3 ~6 void_air
execute as @s[tag=YellowAnt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:antigrief force

#Blade
execute as @s[tag=BlueBlade,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BBlade","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueBlade,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~14 void_air
execute as @s[tag=BlueBlade,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowBlade,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YBlade","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowBlade,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-18 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~14 void_air
execute as @s[tag=YellowBlade,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:antigrief force

#Rifter
execute as @s[tag=BlueRift,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BRift","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueRift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~13 void_air
execute as @s[tag=BlueRift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowRift,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YRift","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowRift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-17 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~13 void_air
execute as @s[tag=YellowRift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:antigrief force

#Juggerbuster
execute as @s[tag=BlueJug,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BJug","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueJug,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~16 void_air
execute as @s[tag=BlueJug,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowJug,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YJug","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowJug,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-20 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~16 void_air
execute as @s[tag=YellowJug,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:antigrief force

#Slasher
execute as @s[tag=BlueSlash,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BSlash","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueSlash,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~3 ~12 void_air
execute as @s[tag=BlueSlash,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowSlash,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YSlash","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowSlash,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~ ~ ~ ~2 ~3 ~12 void_air
execute as @s[tag=YellowSlash,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:antigrief force

#Catapult
execute as @s[tag=BlueCata,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BCata","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueCata,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~3 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute as @s[tag=BlueCata,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowCata,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YCata","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowCata,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute as @s[tag=YellowCata,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief force

#Citadel
execute as @s[tag=BlueCitadel,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BCitadel","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute as @s[tag=BlueCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowCitadel,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YCitadel","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute as @s[tag=YellowCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief force

#Gemini
execute as @s[tag=BlueGemi,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BGemi","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueGemi,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~9 void_air
execute as @s[tag=BlueGemi,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowGemi,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YGemi","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowGemi,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~9 void_air
execute as @s[tag=YellowGemi,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:antigrief force

#Lifter
execute as @s[tag=BlueLift,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BLift","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueLift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~6 void_air
execute as @s[tag=BlueLift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowLift,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YLift","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowLift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-10 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~6 void_air
execute as @s[tag=YellowLift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:antigrief force

#Hypersonic
execute as @s[tag=BlueHyper,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BHyper","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueHyper,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute as @s[tag=BlueHyper,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowHyper,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YHyper","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowHyper,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute as @s[tag=YellowHyper,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief force

#Bullet
execute as @s[tag=BlueBull,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BBull","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueBull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~12 void_air
execute as @s[tag=BlueBull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowBull,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YBull","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowBull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~12 void_air
execute as @s[tag=YellowBull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:antigrief force

#Duplex
execute as @s[tag=BlueDuplex,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BDuplex","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~17 void_air
execute as @s[tag=BlueDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowDuplex,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YDuplex","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-21 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~17 void_air
execute as @s[tag=YellowDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:antigrief force

#Broadsword
execute as @s[tag=BlueBroad,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BBroad","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=BlueBroad,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~11 void_air
execute as @s[tag=BlueBroad,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:antigrief force
execute as @s[tag=YellowBroad,tag=!UnableMissile,type=area_effect_cloud] unless entity @e[tag=Selection,type=armor_stand,tag=doPrevention,tag=!preventionOff] unless entity @e[tag=Selection,type=armor_stand,tag=preventionOff,tag=!preventionSoft] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YBroad","UnableClear"],Duration:20000,Radius:0}
execute as @s[tag=YellowBroad,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~11 void_air
execute as @s[tag=YellowBroad,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:antigrief force

##All missiles
scoreboard players set $1000 Unable 1000
execute as @s[tag=missile,scores={Unable=1..},type=area_effect_cloud] run scoreboard players operation @s Unable *= $1000 Unable
execute as @s[tag=missile,scores={Unable=1..},type=area_effect_cloud] run scoreboard players operation @s Unable /= @s Volume
tag @s[tag=missile,scores={Unable=100..},type=area_effect_cloud] add UnableMissile
tag @s[tag=missile,scores={Unable=100..},type=area_effect_cloud] add antigrief
scoreboard players reset @s Unable