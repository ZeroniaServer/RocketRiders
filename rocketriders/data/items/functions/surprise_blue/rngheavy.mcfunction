##Sub-RNG for Heavy Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAux,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueAux","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngRift,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueRift","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngJbuster,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueJbuster","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngWar,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueWar","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseBlue2,sort=random,limit=1,distance=..1,type=area_effect_cloud] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseBlueAux,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueAux']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueJbuster,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueJug']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueWar,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueWar']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueRift,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueRift']}