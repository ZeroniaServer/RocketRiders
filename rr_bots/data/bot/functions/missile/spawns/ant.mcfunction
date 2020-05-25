# Bot spawning - ant
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAntSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueAnt"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAntSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasAnt
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAntSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed22
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAntSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAntSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowAnt"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAntSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasAnt
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAntSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed22
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAntSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning