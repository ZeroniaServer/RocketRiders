##Sub-RNG for Normal Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAnt] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowAnt","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngBlade] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowBlade","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngCata] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowCata","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngCitadel] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowCitadel","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngEguard] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowEguard","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngGemi] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowGemi","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngNull] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowNull","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngLift] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowLift","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngSlash] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowSlash","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngToma] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowToma","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowAnt] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowAnt']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowBlade] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowBlade']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowCata] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowCata']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowCitadel] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowCitadel']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowEguard] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowGuard']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowGemi] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowGemi']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowNull] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowNull']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowLift] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowLift']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowSlash] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowSlash']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowToma] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowToma']}