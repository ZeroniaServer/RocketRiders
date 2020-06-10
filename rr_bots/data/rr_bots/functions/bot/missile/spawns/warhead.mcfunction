# Bot spawning - War
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueWar"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasWar
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowWar"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasWar
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning