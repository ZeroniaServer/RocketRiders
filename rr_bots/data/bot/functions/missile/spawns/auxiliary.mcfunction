# Bot spawning - auxiliary
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueAux"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasAux
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowAux"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasAux
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning