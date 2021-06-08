# Bot spawning - Rift
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueRift"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasRift
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed20
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowRift"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasRift
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed20
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning