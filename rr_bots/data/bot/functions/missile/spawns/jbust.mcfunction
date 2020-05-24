# Bot spawning - Jug
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueJug"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasJug
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowJug"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasJug
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning