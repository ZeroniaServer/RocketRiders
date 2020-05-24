# Bot spawning - Bolt
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueBolt"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasBolt
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowBolt"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasBolt
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning