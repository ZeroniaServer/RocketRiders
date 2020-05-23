execute if entity @e[tag=Selection,tag=rngAux] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowAux","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngRift] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowRift","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngJbuster] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowJbuster","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngWar] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowWar","surpriseYellow2"]}
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowAux] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowAux','surprising']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowRift] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowRift','surprising']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowJbuster] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowJug','surprising']}
execute if entity @e[tag=rngSelected,tag=surpriseYellowWar] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowWar','surprising']}