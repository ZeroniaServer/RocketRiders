# Bot spawning - Citadel
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueCitadel"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasCita
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed20
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowCitadel"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasCita
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed20
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning