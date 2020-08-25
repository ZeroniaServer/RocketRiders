#leave midgame
function game:leavemidgame

#missile flip
tag @a[team=Blue] add FlipMissile
tag @a[team=Yellow] add FlipMissile
tag @a[team=!Blue,team=!Yellow] remove FlipMissile

#item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
execute if entity @s[tag=Minute] run function items:minutemix

#spawnpoints are reversed
spawnpoint @a[team=Yellow] 12 64 -66 0
spawnpoint @a[team=Blue] 12 64 66 -180

#breach punishment
execute as @a[team=Yellow,tag=!JoinYellow] at @s in overworld if entity @s[y=181,dy=100] run tp @s 12 64 -66 0 0
execute as @a[team=Blue,tag=!JoinBlue] at @s in overworld if entity @s[y=181,dy=100] run tp @s 12 64 66 -180 0

#win
execute if entity @s[tag=!BlueWon] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BluewWon] unless block 11 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!YellowWon] unless block 11 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!YellowWon] unless block 13 38 -74 nether_portal run function game:winyellow