##Blocks into Bits achievement
##Utilizes an advancement for detecting when a fireball is used to kill a player
advancement revoke @s only achievements:rr_utility/fireball_kill
execute unless predicate game:achievements_can_be_awarded run return fail
scoreboard players add @s fireballkill 1
execute store result storage rocketriders:main blocksintobits.val int 1 run scoreboard players get @s fireballkill 
function achievements:blocksintobits_macro with storage rocketriders:main blocksintobits
