# Bot spawning - auxiliary
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueAux"]}
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s remove BotHasAux
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowAux"]}
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s remove BotHasAux
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning