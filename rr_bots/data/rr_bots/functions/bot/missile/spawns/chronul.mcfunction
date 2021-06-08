# Bot spawning - Null
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueNull"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasNull
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed22
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowNull"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasNull
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed22
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning