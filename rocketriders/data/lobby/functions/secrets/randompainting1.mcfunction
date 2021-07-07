##Randomized paintings for Lobby easter eggs
summon marker ~ ~ ~ {Tags:["RandomPainting"]}
scoreboard players set @e[tag=RandomPainting,type=marker] RNGmax 7

execute as @e[tag=RandomPainting,type=marker] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RandomPainting,type=marker] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomPainting,limit=1,type=marker] RNGscore

execute if entity @e[tag=RandomPainting,scores={RNGscore=0},type=marker] at @s run summon painting ~ ~ ~ {Motive:"minecraft:aztec",Silent:1b,Invulnerable:1b,Facing:2b,Tags:["changed"]}
execute if entity @e[tag=RandomPainting,scores={RNGscore=1},type=marker] at @s run summon painting ~ ~ ~ {Motive:"minecraft:alban",Silent:1b,Invulnerable:1b,Facing:2b,Tags:["changed"]}
execute if entity @e[tag=RandomPainting,scores={RNGscore=2},type=marker] at @s run summon painting ~ ~ ~ {Motive:"minecraft:aztec2",Silent:1b,Invulnerable:1b,Facing:2b,Tags:["changed"]}
execute if entity @e[tag=RandomPainting,scores={RNGscore=3},type=marker] at @s run summon painting ~ ~ ~ {Motive:"minecraft:bomb",Silent:1b,Invulnerable:1b,Facing:2b,Tags:["changed"]}
execute if entity @e[tag=RandomPainting,scores={RNGscore=4},type=marker] at @s run summon painting ~ ~ ~ {Motive:"minecraft:kebab",Silent:1b,Invulnerable:1b,Facing:2b,Tags:["changed"]}
execute if entity @e[tag=RandomPainting,scores={RNGscore=5},type=marker] at @s run summon painting ~ ~ ~ {Motive:"minecraft:plant",Silent:1b,Invulnerable:1b,Facing:2b,Tags:["changed"]}
execute if entity @e[tag=RandomPainting,scores={RNGscore=6},type=marker] at @s run summon painting ~ ~ ~ {Motive:"minecraft:wasteland",Silent:1b,Invulnerable:1b,Facing:2b,Tags:["changed"]}
kill @e[tag=RandomPainting,type=marker]
kill @s