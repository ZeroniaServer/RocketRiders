############################################
## TETRISRESET: Resets the Tetris bag for ##
## a new selection of items to be created ##
############################################

#Knight
tag @s remove givenCita
tag @s remove givenJbust
tag @s remove givenWar
tag @s remove givenAux
tag @s remove givenBlade
tag @s remove givenObshield
tag @s remove givenShield
tag @s remove givenICBM

#Archer
tag @s remove givenGemi
tag @s remove givenSlash
tag @s remove givenBolt
tag @s remove givenHur
tag @s remove givenBroad
tag @s remove givenArrows
tag @s remove givenCanopy
tag @s remove givenSplash

#Mage
tag @s remove givenAnt
tag @s remove givenToma
tag @s remove givenCata
tag @s remove givenLift
tag @s remove givenNull
tag @s remove givenFireball
tag @s remove givenVortex
tag @s remove givenNova

#General
tag @s remove givenAllMissile
tag @s remove givenAllUtil
scoreboard players reset $missile CmdData
scoreboard players reset $util CmdData