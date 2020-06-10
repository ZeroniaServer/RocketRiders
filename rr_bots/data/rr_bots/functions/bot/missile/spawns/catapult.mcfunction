# Bot spawning - Cata
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueCata"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasCata
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed22
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowCata"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasCata
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed22
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning