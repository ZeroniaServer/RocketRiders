execute if entity @s[scores={x=1..}] at @s run tp @s ~1 ~ ~
execute if entity @s[scores={x=1..}] at @s run scoreboard players remove @s x 1
execute if entity @s[scores={y=1..}] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={y=1..}] at @s run scoreboard players remove @s y 1
execute if entity @s[scores={z=1..}] at @s run tp @s ~ ~ ~1
execute if entity @s[scores={z=1..}] at @s run scoreboard players remove @s z 1

execute unless entity @s[scores={x=-1000..0,y=-1000..0,z=-1000..0}] at @s run function rr_chase:chaseblocks/teleport

execute if entity @s[scores={x=-1000..0,y=-1000..0,z=-1000..0}] at @s run function rr_chase:chaseblocks/set
execute if entity @s[scores={x=-1000..0,y=-1000..0,z=-1000..0}] run kill @s