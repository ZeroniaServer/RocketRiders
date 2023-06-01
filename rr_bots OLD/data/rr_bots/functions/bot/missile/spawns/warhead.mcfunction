# Bot spawning - War
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueWar"]}
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run tag @s remove BotHasWar
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowWar"]}
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run tag @s remove BotHasWar
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning