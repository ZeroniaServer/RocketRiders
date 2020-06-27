##Sub-RNG for Lightning Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngHur] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueHur","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngThun] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueBolt","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseBlue2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseBlueHur] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueHur']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueBolt] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueBolt']}