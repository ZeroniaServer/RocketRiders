##Sub-RNG for Lightning Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngHur] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowHur","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngThun] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowBolt","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowHur] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowHur']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowBolt] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowBolt']}