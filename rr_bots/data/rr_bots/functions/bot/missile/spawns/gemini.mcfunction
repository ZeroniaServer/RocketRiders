# Bot spawning - Gemitwo
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGemiSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueGemi"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGemiSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s remove BotHasGemi
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGemiSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add Speed20
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGemiSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGemiSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowGemi"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGemiSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s remove BotHasGemi
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGemiSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add Speed20
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGemiSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning