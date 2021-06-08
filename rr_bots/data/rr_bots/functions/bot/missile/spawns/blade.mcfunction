# Bot spawning - blade
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueBlade"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasBlade
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed17
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowBlade"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasBlade
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed17
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning