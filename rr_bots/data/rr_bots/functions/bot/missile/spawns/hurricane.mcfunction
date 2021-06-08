# Bot spawning - Hur
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueHur"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasHur
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed33
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowHur"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasHur
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed33
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning