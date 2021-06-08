# Bot spawning - Bolt
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueBolt"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasBolt
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed33
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowBolt"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasBolt
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed33
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning