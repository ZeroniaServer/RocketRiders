##Puts out the executor's fire by placing a brief layer of water
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:[fireAEC]}
execute as @e[tag=fireAEC,type=area_effect_cloud] at @s run fill ~ ~ ~ ~ ~ ~ water[level=1] replace #custom:air
tag @e[tag=fireAEC,type=area_effect_cloud] add waterPlaced