execute if entity @s[tag=patrolX,scores={RNGscore=1..}] run tp @s ~-1 ~ ~
execute if entity @s[tag=patrolZ,scores={RNGscore=1..}] run tp @s ~ ~ ~1
execute if entity @s[scores={RNGscore=1..}] run scoreboard players remove @s RNGscore 1
execute if entity @s[scores={RNGscore=1..}] at @s run function rr_bots:movement/basepatrol/confirmlocation