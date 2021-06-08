# Bot spawning - Jug
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueJug"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasJug
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed17
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowJug"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasJug
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed17
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning