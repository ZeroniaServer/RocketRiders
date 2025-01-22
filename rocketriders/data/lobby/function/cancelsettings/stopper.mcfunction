function game:forcestop
tellraw @a ["",{"translate":"%s canceled the match!","color":"red","with":[{"selector":"@s","bold":true}]}]