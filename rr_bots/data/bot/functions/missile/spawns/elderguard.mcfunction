# Bot spawning - elder guard
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueGuard"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasGuard
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowGuard"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasGuard
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning