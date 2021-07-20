##Notifies players that the game is ready to play
tellraw @s ["",{"text":"\n|","bold":true,"color":"dark_gray"},{"text":" The game is ready to play!","color":"green"}]
execute if entity @s[tag=!informMe] at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 1.5 1