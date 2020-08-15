#leave midgame
function rr_ctf:game/leavemidgame

#item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66 0
spawnpoint @a[team=Yellow] 12 64 66 -180
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute if score Blue: FlagDisp matches 2 run function game:winblue
execute if score Yellow: FlagDisp matches 2 run function game:winyellow

#flag logic
execute as @s[tag=GameStarted] run function rr_ctf:everytick/flag
scoreboard objectives setdisplay sidebar FlagDisp