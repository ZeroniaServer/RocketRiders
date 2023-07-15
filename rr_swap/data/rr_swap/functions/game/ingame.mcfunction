#leave midgame
execute if entity @s[tag=!SMActive] run function game:leavemidgame

#custom util items
function rr_swap:items/cluster

#platform
bossbar set rr:startgame players @a[x=0,team=Lobby]
function rr_swap:baseswap/platform

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_swap:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_swap:items/minutemix

#Respawn handling
execute as @e[x=0,type=marker,tag=YellowSpawnZone] at @s run scoreboard players set @a[team=Yellow,tag=!beenOnBlue,distance=..6] respawn 0
execute as @e[x=0,type=marker,tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,tag=!beenOnYellow,distance=..6] respawn 0

#Give back fireballs
execute as @a[x=0,tag=BackFireball] run function rr_swap:items/util/givefireball
tag @a[x=0] remove BackFireball
execute as @a[x=0,tag=roofMSGFB] run tellraw @s ["",{"text":"Unable to spawn Cluster Fireball near the roof.","color":"red"}]
execute as @a[x=0,tag=voidMSGFB] run tellraw @s ["",{"text":"Unable to spawn Cluster Fireball near the void.","color":"red"}]
tag @a[x=0,tag=roofMSGFB] remove roofMSGFB
tag @a[x=0,tag=voidMSGFB] remove voidMSGFB

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