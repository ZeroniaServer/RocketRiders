##Randomized paintings for Lobby easter eggs
execute store result score $painting RNGscore run random value 0..7
execute if score $painting RNGscore matches 0 run data merge entity @s {variant:"minecraft:aztec"}
execute if score $painting RNGscore matches 1 run data merge entity @s {variant:"minecraft:alban"}
execute if score $painting RNGscore matches 2 run data merge entity @s {variant:"minecraft:aztec2"}
execute if score $painting RNGscore matches 3 run data merge entity @s {variant:"minecraft:bomb"}
execute if score $painting RNGscore matches 4 run data merge entity @s {variant:"minecraft:kebab"}
execute if score $painting RNGscore matches 5 run data merge entity @s {variant:"minecraft:plant"}
execute if score $painting RNGscore matches 6 run data merge entity @s {variant:"minecraft:wasteland"}
execute if score $painting RNGscore matches 7 run data merge entity @s {variant:"minecraft:meditative"}
tag @s add changed