# Bot spawning - blade
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","bluemissile","BlueBlade"],Duration:100}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasBlade
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["missile","yellowmissile","YellowBlade"],Duration:100}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s remove BotHasBlade
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add Speed17
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7] run tag @s add DoneSpawning