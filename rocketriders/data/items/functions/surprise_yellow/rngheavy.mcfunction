##Sub-RNG for Heavy Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAux] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowAux","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngRift] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowRift","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngJbuster] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowJbuster","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngWar] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowWar","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowAux] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowAux']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowRift] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowRift']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowJbuster] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowJug']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowWar] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowWar']}