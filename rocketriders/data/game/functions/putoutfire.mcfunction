##Puts out the executor's fire by placing a brief layer of water
summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1,Duration:2,Tags:[fireAEC]}
execute as @e[tag=fireAEC,type=area_effect_cloud] at @s run fill ~ ~ ~ ~ ~ ~ water[level=1] replace air
tag @e[tag=fireAEC,type=area_effect_cloud] add waterPlaced