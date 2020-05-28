#Blue team round wins
tag @s add CriteriaTrue
kill @e[type=tnt]
scoreboard players add Blue RoundsWon 1

effect give @a[team=Blue] instant_health 1 100
effect give @a[team=Yellow] instant_health 1 100

execute as @a[team=Blue] at @s run stopsound @s
execute as @a[team=Yellow] at @s run stopsound @s
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 100 0
title @a title [{"text":"Team Blue","bold":true,"color":"blue"},{"text":" scored!","bold":true,"color":"green"}]
title @a subtitle [{"score":{"name":"Blue","objective":"RoundsWon"},"bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"score":{"name":"Yellow","objective":"RoundsWon"},"bold":true,"color":"gold"}]

execute unless score Blue RoundsWon matches 2.. run tag @s add FakeGameEnd

execute if score Blue RoundsWon matches 2.. run function game:winblue
execute if score Blue RoundsWon matches 2.. run function rr_ranked:rankcalc/calcblue