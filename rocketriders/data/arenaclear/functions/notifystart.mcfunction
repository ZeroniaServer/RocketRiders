##Notifies players that the game is ready to play
tellraw @s ["",{"text":"\n|","bold":true,"color":"dark_gray"},{"text":" The game is ready to play!","color":"green"}]
execute as @s[tag=!informMe] at @s run particle barrier ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=!informMe] at @s run playsound entity.player.levelup player @s ~ ~ ~ 2 1.5 1