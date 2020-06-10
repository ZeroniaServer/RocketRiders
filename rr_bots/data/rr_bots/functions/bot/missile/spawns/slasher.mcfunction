# Bot spawning - Slash
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueSlash"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasSlash
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed20
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowSlash"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasSlash
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed20
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning