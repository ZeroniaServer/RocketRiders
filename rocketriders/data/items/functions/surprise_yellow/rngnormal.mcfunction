##Sub-RNG for Normal Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAnt,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowAnt","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngBlade,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowBlade","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngCata,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowCata","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngCitadel,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowCitadel","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngEguard,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowEguard","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngGemi,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowGemi","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngNull,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowNull","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngLift,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowLift","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngSlash,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowSlash","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngToma,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowToma","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1,type=area_effect_cloud] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowAnt,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowAnt']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowBlade,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowBlade']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowCata,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowCata']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowCitadel,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowCitadel']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowEguard,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowGuard']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowGemi,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowGemi']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowNull,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowNull']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowLift,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowLift']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowSlash,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowSlash']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowToma,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowToma']}