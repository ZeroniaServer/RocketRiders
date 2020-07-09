##Sub-RNG for Heavy Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAux,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowAux","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngRift,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowRift","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngJbuster,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowJbuster","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngWar,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowWar","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1,type=area_effect_cloud] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowAux,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowAux']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowRift,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowRift']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowJbuster,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowJug']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowWar,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowWar']}