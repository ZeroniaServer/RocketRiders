# Bot spawning - Slash
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueSlash"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasSlash
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed20
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowSlash"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasSlash
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed20
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning