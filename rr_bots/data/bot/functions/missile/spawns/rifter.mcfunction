# Bot spawning - Rift
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueRift"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasRift
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowRift"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasRift
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning