##Notifies players that the game is ready to play
function everytick:stopsounds
tellraw @s ["",{"text":"\n"},{"text":"The game is ready to play! 🚀","color":"green","italic":true,"shadow_color":[0,0.25,0.25,1]}]
execute if entity @s[tag=!informMe] run tag @s add playpling
execute if entity @s[tag=!informMe] run schedule function arenaclear:playpling_indimension 3t append

kill @e[type=block_display,tag=LobbyArrowDisplay]