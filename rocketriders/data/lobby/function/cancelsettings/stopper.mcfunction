function game:forcestop
tellraw @a[x=0] ["",{"translate":"%s is editing game settings!","color":"#ff8585","with":[{"selector":"@s","color":"red"}]}]