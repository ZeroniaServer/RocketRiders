##Randomized paintings for Lobby easter eggs
summon marker ~ ~ ~ {Tags:["RandomPainting"]}
scoreboard players set @e[x=0,type=marker,tag=RandomPainting] RNGmax 7

execute as @e[x=0,type=marker,tag=RandomPainting] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[x=0,type=marker,tag=RandomPainting] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[x=0,type=marker,tag=RandomPainting,limit=1] RNGscore

execute if entity @e[x=0,type=marker,tag=RandomPainting,scores={RNGscore=0}] run data merge entity @s {variant:"minecraft:aztec"}
execute if entity @e[x=0,type=marker,tag=RandomPainting,scores={RNGscore=1}] run data merge entity @s {variant:"minecraft:alban"}
execute if entity @e[x=0,type=marker,tag=RandomPainting,scores={RNGscore=2}] run data merge entity @s {variant:"minecraft:aztec2"}
execute if entity @e[x=0,type=marker,tag=RandomPainting,scores={RNGscore=3}] run data merge entity @s {variant:"minecraft:bomb"}
execute if entity @e[x=0,type=marker,tag=RandomPainting,scores={RNGscore=4}] run data merge entity @s {variant:"minecraft:kebab"}
execute if entity @e[x=0,type=marker,tag=RandomPainting,scores={RNGscore=5}] run data merge entity @s {variant:"minecraft:plant"}
execute if entity @e[x=0,type=marker,tag=RandomPainting,scores={RNGscore=6}] run data merge entity @s {variant:"minecraft:wasteland"}
tag @s add changed
kill @e[x=0,type=marker,tag=RandomPainting]