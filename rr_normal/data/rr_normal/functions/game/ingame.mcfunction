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
execute if block 13 38 74 air run function game:winblue
execute if block 11 38 74 air run function game:winblue

execute if block 11 38 -74 air run function game:winyellow
execute if block 13 38 -74 air run function game:winyellow