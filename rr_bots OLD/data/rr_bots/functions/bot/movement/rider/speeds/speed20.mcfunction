scoreboard players add @s botriding 1

execute if entity @s[tag=BlueBot,scores={botriding=1..2}] at @s run data merge entity @s {Motion:[0.0,0.55,1.0]}
execute if entity @s[tag=YellowBot,scores={botriding=1..2}] at @s run data merge entity @s {Motion:[0.0,0.55,-1.0]}


execute if entity @s[tag=BlueBot,scores={botriding=19..}] at @s unless block ~ ~-0.1 ~ air unless block ~ ~-1 ~-0.1 air run tp @s ~ ~ ~0.1 0 0
execute if entity @s[tag=BlueBot,scores={botriding=29..}] at @s if block ~ ~-1 ~-0.1 air run tag @s remove BotRider
execute if entity @s[tag=YellowBot,scores={botriding=19..}] at @s unless block ~ ~-0.1 ~ air unless block ~ ~-1 ~0.1 air run tp @s ~ ~ ~-0.1 180 0
execute if entity @s[tag=YellowBot,scores={botriding=29..}] at @s if block ~ ~-1 ~0.1 air run tag @s remove BotRider