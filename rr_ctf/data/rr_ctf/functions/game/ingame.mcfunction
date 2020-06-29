#leave midgame
function game:leavemidgame

#item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute if score Blue: FlagScore matches 2 run function game:winblue
execute if score Yellow: FlagScore matches 2 run function game:yellowblue

#flag logic
execute as @s[tag=GameStarted] run function rr_ctf:everytick/flag