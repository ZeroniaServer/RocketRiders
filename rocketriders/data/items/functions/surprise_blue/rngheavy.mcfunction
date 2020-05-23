execute if entity @e[tag=Selection,tag=rngAux] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueAux","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngRift] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueRift","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngJbuster] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueJbuster","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngWar] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueWar","surpriseBlue2"]}
tag @e[tag=surpriseBlue2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseBlueAux] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueAux','surprising']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueJbuster] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueJug','surprising']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueWar] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueWar','surprising']}
execute if entity @e[tag=rngSelected,tag=surpriseBlueRift] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueRift','surprising']}