# Bot spawning - Null
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueNull"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasNull
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowNull"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasNull
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning