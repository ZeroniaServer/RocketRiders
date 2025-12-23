##Missile Sabotage achievement
execute unless score @s minedTNT matches 1.. run return fail
execute if score @s prevMinedTNT matches 1000.. run return fail
execute store result storage rocketriders:achievements sabotage.val int 1 run scoreboard players get @s minedTNT
execute unless score @s prevMinedTNT = @s minedTNT run function achievements:sabotage_loop