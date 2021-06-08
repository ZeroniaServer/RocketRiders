# Bot spawning - elder guard
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueGuard"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasGuard
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed17
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowGuard"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasGuard
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed17
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning