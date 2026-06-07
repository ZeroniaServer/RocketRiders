##Notifies players that the game is ready to play
function everytick:stopsounds
execute unless entity @s[tag=informMe.joining_world] run tellraw @s "\n"
tellraw @s ["",{color:"green",italic:true,shadow_color:[0,0.25,0.25,1],text:"The game is ready to play! 🚀"}]

execute if entity @s[tag=!informMe] run tag @s add playpling
execute if entity @s[tag=!informMe] run schedule function arenaclear:playpling_indimension 3t append

kill @e[x=0,type=block_display,tag=lobby_arrow_display]
