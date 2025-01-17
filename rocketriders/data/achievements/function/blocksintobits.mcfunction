##Blocks into Bits achievement
##Utilizes an advancement for detecting when a fireball is used to kill a player
execute unless score @s fireballkill matches 1.. run return fail
execute if score @s prevfireballkill matches 10.. run return fail
execute store result storage rocketriders:achievements blocksintobits.val int 1 run scoreboard players get @s fireballkill 
execute unless score @s prevfireballkill = @s fireballkill run function achievements:blocksintobits_macro with storage rocketriders:achievements blocksintobits