# Bot spawning - Hur
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueHur"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasHur
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed33
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowHur"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasHur
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed33
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning