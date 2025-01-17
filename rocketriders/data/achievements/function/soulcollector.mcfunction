##Soul Collector achievement
advancement revoke @s only achievements:rr_utility/kill
execute if score @s soulKills matches 50.. run return fail
scoreboard players add @s soulKills 1
execute store result storage rocketriders:achievements soulcollector.val int 1 run scoreboard players get @s soulKills 
function achievements:soulcollector_macro with storage rocketriders:achievements soulcollector