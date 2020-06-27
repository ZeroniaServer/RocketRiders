##Sub-RNG for Normal Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAnt] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueAnt","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngBlade] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueBlade","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngCata] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueCata","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngCitadel] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueCitadel","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngEguard] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueEguard","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngGemi] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueGemi","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngNull] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueNull","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngLift] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueLift","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngSlash] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueSlash","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngToma] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueToma","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseBlue2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseBlueAnt] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueAnt']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueBlade] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueBlade']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueCata] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueCata']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueCitadel] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueCitadel']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueEguard] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueGuard']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueGemi] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueGemi']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueNull] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueNull']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueLift] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueLift']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueSlash] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueSlash']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueToma] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueToma']}