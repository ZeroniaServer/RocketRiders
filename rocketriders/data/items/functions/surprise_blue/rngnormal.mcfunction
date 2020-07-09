##Sub-RNG for Normal Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAnt,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueAnt","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngBlade,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueBlade","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngCata,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueCata","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngCitadel,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueCitadel","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngEguard,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueEguard","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngGemi,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueGemi","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngNull,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueNull","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngLift,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueLift","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngSlash,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueSlash","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngToma,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueToma","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseBlue2,sort=random,limit=1,distance=..1,type=area_effect_cloud] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseBlueAnt,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueAnt']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueBlade,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueBlade']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueCata,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueCata']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueCitadel,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueCitadel']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueEguard,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueGuard']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueGemi,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueGemi']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueNull,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueNull']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueLift,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueLift']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueSlash,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueSlash']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueToma,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueToma']}