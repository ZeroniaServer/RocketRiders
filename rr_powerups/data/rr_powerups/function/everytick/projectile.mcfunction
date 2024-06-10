execute at @s run tp @s ~ ~2 ~

execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000

execute at @s run tp @s ^ ^ ^0.001

execute store result score @s dx run data get entity @s Pos[0] 1000000
execute store result score @s dy run data get entity @s Pos[1] 1000000
execute store result score @s dz run data get entity @s Pos[2] 1000000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

execute store result entity @s Motion[0] double 0.003 run scoreboard players get @s dx
execute store result entity @s Motion[1] double 0.003 run scoreboard players get @s dy
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @s dz