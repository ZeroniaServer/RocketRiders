# Bot spawning - Cata
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueCata"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasCata
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed22
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowCata"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasCata
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed22
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning