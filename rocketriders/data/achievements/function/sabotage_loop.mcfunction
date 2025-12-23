scoreboard players add @s prevMinedTNT 1
execute store result storage rocketriders:achievements sabotage.val int 1 run scoreboard players get @s prevMinedTNT
function achievements:sabotage_macro with storage rocketriders:achievements sabotage
execute if score @s prevMinedTNT matches 1000.. run return fail
execute unless score @s prevMinedTNT = @s minedTNT run function achievements:sabotage_loop