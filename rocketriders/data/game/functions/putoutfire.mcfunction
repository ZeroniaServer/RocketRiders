##Puts out the executor's fire by placing a brief layer of water
summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1,Duration:2,Tags:[fireAEC]}
execute as @e[tag=fireAEC] at @s run fill ~ ~ ~ ~ ~ ~ water[level=1] replace air
tag @e[tag=fireAEC] add waterPlaced
#Schedules to remove the water placed
schedule function game:putoutfire2 1t append