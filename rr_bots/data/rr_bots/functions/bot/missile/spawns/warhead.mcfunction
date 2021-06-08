# Bot spawning - War
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueWar"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasWar
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed17
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowWar"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasWar
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed17
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning