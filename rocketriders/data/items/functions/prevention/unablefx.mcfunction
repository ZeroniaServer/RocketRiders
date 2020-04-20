execute as @e[tag=UnableMissile] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force
execute as @e[tag=UnableMissile] at @s run summon area_effect_cloud ~ ~ ~ {Duration:25,CustomNameVisible:1b,CustomName:"\"Unable to spawn missile.\""}
tp @e[tag=UnableMissile] ~ ~-300 ~
kill @e[tag=UnableMissile]