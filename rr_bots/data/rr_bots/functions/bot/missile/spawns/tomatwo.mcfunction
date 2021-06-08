# Bot spawning - tomatwo
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueToma"]}
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasToma
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn,tag=BotRider] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed20
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowToma"]}
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s remove BotHasToma
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn,tag=BotRider] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add Speed20
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=marker] run tag @s add DoneSpawning