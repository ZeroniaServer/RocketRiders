function game:forcestop
tellraw @a ["",{"translate":"%s canceled the match!","color":"#ff8585","with":[{"selector":"@s","color":"red"}]}]