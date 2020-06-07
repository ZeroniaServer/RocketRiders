summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1,Duration:2,Tags:[fireAEC]}
execute as @e[tag=fireAEC] at @s run fill ~ ~ ~ ~ ~ ~ water[level=1] replace air
tag @e[tag=fireAEC] add waterPlaced
schedule function game:putoutfire2 1t append