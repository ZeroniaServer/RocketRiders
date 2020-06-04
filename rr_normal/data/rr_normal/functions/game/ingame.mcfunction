#leave midgame
function game:leavemidgame

#Item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute unless block 13 38 74 nether_portal run function game:winblue
execute unless block 11 38 74 nether_portal run function game:winblue

execute unless block 11 38 -74 nether_portal run function game:winyellow
execute unless block 13 38 -74 nether_portal run function game:winyellow