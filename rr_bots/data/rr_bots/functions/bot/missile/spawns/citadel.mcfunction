# Bot spawning - Citadel
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueCitadel"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasCita
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed20
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowCitadel"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasCita
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed20
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning