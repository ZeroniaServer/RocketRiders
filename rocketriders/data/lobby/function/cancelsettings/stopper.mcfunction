function game:forcestop
tellraw @a ["",{"translate":"%s is editing settings!","color":"#ff8585","with":[{"selector":"@s","color":"red"}]}]