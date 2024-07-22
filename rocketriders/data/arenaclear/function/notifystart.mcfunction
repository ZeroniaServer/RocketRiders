##Notifies players that the game is ready to play
function everytick:stopsounds
tellraw @s ["",{"text":"\n|","bold":true,"color":"dark_gray"},{"text":" The game is ready to play!","color":"green"}]
execute if entity @s[tag=!informMe] run tag @s add playpling
execute if entity @s[tag=!informMe] run schedule function arenaclear:playpling_indimension 3t append

kill @e[type=block_display,tag=LobbyArrowDisplay]