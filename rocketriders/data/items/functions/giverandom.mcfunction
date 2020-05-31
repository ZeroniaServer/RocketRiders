function items:rng
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar
execute as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}

#surprise egg chance
execute if entity @s[tag=rngMissile,tag=SurpriseEgg] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSurprise","rngSU"]}
execute if entity @s[tag=rngMissile,tag=SurpriseEgg] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNoSurprise","rngSU"]}
execute if entity @s[tag=rngMissile,tag=SurpriseEgg] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNoSurprise","rngSU"]}
tag @e[tag=rngSU,sort=random,limit=1] add rngSUSelected
execute as @e[tag=rngSUSelected,tag=rngSurprise] as @a[team=Blue,tag=!fullHotbar] run function items:surprise_blue/givesurpriseegg
execute as @e[tag=rngSUSelected,tag=rngSurprise] as @a[team=Yellow,tag=!fullHotbar] run function items:surprise_yellow/givesurpriseegg