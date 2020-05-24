# Bot spawning - Lift
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotLiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueLift"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotLiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasLift
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotLiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotLiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowLift"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotLiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasLift
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotLiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning