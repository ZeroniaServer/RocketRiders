##Randomized paintings for Lobby easter eggs
summon marker ~ ~ ~ {Tags:["RandomPainting"]}
scoreboard players set @e[type=marker,tag=RandomPainting] RNGmax 7

execute as @e[type=marker,tag=RandomPainting] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=RandomPainting] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[type=marker,tag=RandomPainting,limit=1] RNGscore

execute if entity @e[type=marker,tag=RandomPainting,scores={RNGscore=0}] at @s run summon painting ~ ~ ~ {Motive:"minecraft:aztec",Silent:1b,Invulnerable:1b,Facing:0b,Tags:["changed"]}
execute if entity @e[type=marker,tag=RandomPainting,scores={RNGscore=1}] at @s run summon painting ~ ~ ~ {Motive:"minecraft:alban",Silent:1b,Invulnerable:1b,Facing:0b,Tags:["changed"]}
execute if entity @e[type=marker,tag=RandomPainting,scores={RNGscore=2}] at @s run summon painting ~ ~ ~ {Motive:"minecraft:aztec2",Silent:1b,Invulnerable:1b,Facing:0b,Tags:["changed"]}
execute if entity @e[type=marker,tag=RandomPainting,scores={RNGscore=3}] at @s run summon painting ~ ~ ~ {Motive:"minecraft:bomb",Silent:1b,Invulnerable:1b,Facing:0b,Tags:["changed"]}
execute if entity @e[type=marker,tag=RandomPainting,scores={RNGscore=4}] at @s run summon painting ~ ~ ~ {Motive:"minecraft:kebab",Silent:1b,Invulnerable:1b,Facing:0b,Tags:["changed"]}
execute if entity @e[type=marker,tag=RandomPainting,scores={RNGscore=5}] at @s run summon painting ~ ~ ~ {Motive:"minecraft:plant",Silent:1b,Invulnerable:1b,Facing:0b,Tags:["changed"]}
execute if entity @e[type=marker,tag=RandomPainting,scores={RNGscore=6}] at @s run summon painting ~ ~ ~ {Motive:"minecraft:wasteland",Silent:1b,Invulnerable:1b,Facing:0b,Tags:["changed"]}
kill @e[type=marker,tag=RandomPainting]
kill @s