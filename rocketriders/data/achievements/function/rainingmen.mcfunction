##It's Raining Men achievement
scoreboard players reset @s[scores={PlayerKills=1..}] PlayerKills
execute unless score @s FellVoid matches 1.. run return fail
execute if score @s prevFellVoid matches 30.. run return fail
execute store result storage rocketriders:achievements rainingmen.val int 1 run scoreboard players get @s FellVoid 
execute unless score @s prevFellVoid = @s FellVoid run function achievements:rainingmen_macro with storage rocketriders:achievements rainingmen