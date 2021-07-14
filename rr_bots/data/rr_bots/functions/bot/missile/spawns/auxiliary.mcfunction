# Bot spawning - auxiliary
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueAux"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s remove BotHasAux
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowAux"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s remove BotHasAux
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[type=marker,tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning