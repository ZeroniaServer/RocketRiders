##Soul Collector achievement
execute if score @s match_statistic.kills matches 50.. run return run advancement grant @s only achievements:rr_challenges/soul_collector
execute store result storage rocketriders:main soulcollector.val int 1 run scoreboard players get @s match_statistic.kills
function achievements:soulcollector_macro with storage rocketriders:main soulcollector
