#leave midgame
function game:leavemidgame

#general
function rr_swap:items/antidupe
function rr_swap:items/spawnitems

#custom util items
function rr_swap:items/icbm
function rr_swap:items/cluster

#platform
function rr_swap:baseswap/platform

#player armor
function rr_swap:baseswap/gear

#Item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_swap:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66
execute if entity @s[tag=Minute] run function rr_swap:items/minutemix

#win
execute if entity @s[tag=!BlueWon] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BlueWon] unless block 11 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!YellowWon] unless block 11 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!YellowWon] unless block 13 38 -74 nether_portal run function game:winyellow