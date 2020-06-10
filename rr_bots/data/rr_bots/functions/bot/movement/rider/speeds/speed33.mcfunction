scoreboard players add @s botriding 1

execute as @s[tag=BlueBot,scores={botriding=1..2}] at @s run data merge entity @s {Motion:[0.0,0.63,1.46]}
execute as @s[tag=YellowBot,scores={botriding=1..2}] at @s run data merge entity @s {Motion:[0.0,0.63,-1.46]}


execute as @s[tag=BlueBot,scores={botriding=19..}] at @s unless block ~ ~-0.1 ~ air unless block ~ ~-1 ~-0.165 air run tp @s ~ ~ ~0.165 0 0
execute as @s[tag=BlueBot,scores={botriding=29..}] at @s if block ~ ~-1 ~-0.165 air run tag @s remove BotRider
execute as @s[tag=YellowBot,scores={botriding=19..}] at @s unless block ~ ~-0.1 ~ air unless block ~ ~-1 ~0.165 air run tp @s ~ ~ ~-0.165 180 0
execute as @s[tag=YellowBot,scores={botriding=29..}] at @s if block ~ ~-1 ~0.165 air run tag @s remove BotRider