##Blocks into Bits achievement
##Utilizes an advancement for detecting when a fireball is used to kill a player
advancement revoke @s only achievements:rr_utility/fireball_kill
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},predicate=!rr:realms] run return fail
scoreboard players add @s fireballkill 1
execute store result storage rocketriders:achievements blocksintobits.val int 1 run scoreboard players get @s fireballkill 
function achievements:blocksintobits_macro with storage rocketriders:achievements blocksintobits