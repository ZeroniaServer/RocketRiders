#leave midgame
execute if entity @s[tag=!SMActive] run function game:leavemidgame

#general
function rr_swap:items/spawnitems

#custom util items
function rr_swap:items/cluster

#platform
bossbar set rr:startgame players @a[predicate=custom:indimension,team=Lobby]
function rr_swap:baseswap/platform

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_swap:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_swap:items/minutemix

#Respawn handling
execute as @e[type=marker,tag=YellowSpawnZone] at @s run scoreboard players set @a[predicate=custom:indimension,team=Yellow,tag=!beenOnBlue,distance=..6] respawn 0
execute as @e[type=marker,tag=BlueSpawnZone] at @s run scoreboard players set @a[predicate=custom:indimension,team=Blue,tag=!beenOnYellow,distance=..6] respawn 0

#Give back fireballs
execute as @a[predicate=custom:indimension,tag=BackFireball] run function rr_swap:items/util/givefireball
tag @a[predicate=custom:indimension] remove BackFireball
execute as @a[predicate=custom:indimension,tag=roofMSGFB] run tellraw @s ["",{"text":"Unable to spawn Cluster Fireball near the roof.","color":"red"}]
execute as @a[predicate=custom:indimension,tag=voidMSGFB] run tellraw @s ["",{"text":"Unable to spawn Cluster Fireball near the void.","color":"red"}]
tag @a[predicate=custom:indimension,tag=roofMSGFB] remove roofMSGFB
tag @a[predicate=custom:indimension,tag=voidMSGFB] remove voidMSGFB

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 13 38 -74 nether_portal run function rr_swap:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 -74 nether_portal run function rr_swap:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 11 38 -74 nether_portal run function rr_swap:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal run function rr_swap:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function rr_swap:game/winbothcheck

execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 11 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function game:winyellow