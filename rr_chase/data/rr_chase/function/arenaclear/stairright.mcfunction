tp @e[x=0,type=marker,tag=chaseStairs,limit=1] ~ ~ ~
execute unless entity @s[tag=Hardcore,tag=!HardcoreOff] run fill ~ ~ ~ ~ ~ ~-4 obsidian
execute unless entity @s[tag=Hardcore,tag=!HardcoreOff] run fill ~ ~1 ~ ~ ~4 ~-4 air
execute if entity @s[tag=Hardcore,tag=!HardcoreOff] run fill ~ ~ ~ ~ ~ ~-2 obsidian
execute if entity @s[tag=Hardcore,tag=!HardcoreOff] run fill ~ ~1 ~ ~ ~4 ~-2 air
execute positioned ~1 ~-1 ~ if entity @e[x=0,type=marker,tag=chaseStairs,limit=1,predicate=custom:base_width] run function rr_chase:arenaclear/stairright