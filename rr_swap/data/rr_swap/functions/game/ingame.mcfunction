#leave midgame
execute if entity @s[tag=!SMActive] run function game:leavemidgame

#general
function rr_swap:items/antidupe
function rr_swap:items/spawnitems

#custom util items
function everytick:icbm
function rr_swap:items/cluster

#platform
function rr_swap:baseswap/platform

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_swap:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_swap:items/minutemix

#Spawnpoints
execute as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#Respawn handling
execute as @e[type=marker,tag=YellowSpawnZone] at @s run scoreboard players set @a[team=Yellow,tag=!beenOnBlue,distance=..6] respawn 0
execute as @e[type=marker,tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,tag=!beenOnYellow,distance=..6] respawn 0

#win
execute if entity @s[tag=!BlueWon,tag=!DoublePortal] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BlueWon,tag=!DoublePortal] unless block 11 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BlueWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!YellowWon,tag=!DoublePortal] unless block 11 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!YellowWon,tag=!DoublePortal] unless block 13 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!YellowWon,tag=DoublePortal] unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function game:winyellow