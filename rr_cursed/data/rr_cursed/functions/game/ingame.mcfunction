#leave midgame
function game:leavemidgame

#Missile flip
tag @a[team=Blue] add FlipMissile
tag @a[team=Yellow] add FlipMissile
tag @a[team=!Blue,team=!Yellow] remove FlipMissile

#Item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
#Spawnpoints are reversed
spawnpoint @a[team=Yellow] 12 64 -66 0
spawnpoint @a[team=Blue] 12 64 66 -180
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute if entity @s[tag=!YellowWon] unless block 13 38 74 nether_portal run function game:winyellow
execute if entity @s[tag=!YellowWon] unless block 11 38 74 nether_portal run function game:winyellow

execute if entity @s[tag=!BlueWon] unless block 11 38 -74 nether_portal run function game:winblue
execute if entity @s[tag=!BlueWon] unless block 13 38 -74 nether_portal run function game:winblue