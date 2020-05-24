# Bot spawning - tomatwo
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueToma"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasToma
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowToma"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasToma
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning