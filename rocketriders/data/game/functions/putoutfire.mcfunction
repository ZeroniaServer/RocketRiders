##Puts out the executor's fire by placing a brief layer of water
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:[fireAEC]}
execute as @e[x=0,type=area_effect_cloud,tag=fireAEC] at @s run fill ~ ~ ~ ~ ~ ~ water[level=1] replace #custom:air
tag @e[x=0,type=area_effect_cloud,tag=fireAEC] add waterPlaced