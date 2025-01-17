##Soul Collector achievement
execute unless score @s kills matches 1.. run return fail
execute if score @s prevKills matches 50.. run return fail
execute store result storage rocketriders:achievements soulcollector.val int 1 run scoreboard players get @s kills 
execute unless score @s prevKills = @s kills run function achievements:soulcollector_macro with storage rocketriders:achievements soulcollector