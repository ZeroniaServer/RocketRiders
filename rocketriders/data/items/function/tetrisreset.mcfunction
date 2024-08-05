############################################
## TETRISRESET: Resets the Tetris bag for ##
## a new selection of items to be created ##
############################################

#Normal
tag @s remove givenAnt
tag @s remove givenBlade
tag @s remove givenCita
tag @s remove givenCata
tag @s remove givenGuard
tag @s remove givenGemi
tag @s remove givenLift
tag @s remove givenNull
tag @s remove givenSlash
tag @s remove givenToma
tag @s remove givenAllNormal

#Heavy
tag @s remove givenAux
tag @s remove givenJbust
tag @s remove givenRift
tag @s remove givenWar
tag @s remove givenAllHeavy

#Lightning
tag @s remove givenHur
tag @s remove givenBolt
tag @s remove givenAllLightning

#Special
tag @s[tag=!ChaosOff] remove givenBroad
tag @s[tag=!ChaosOff] remove givenBull
tag @s[tag=!ChaosOff] remove givenDuplex
tag @s[tag=!ChaosOff] remove givenHyper
tag @s[tag=!ChaosOff] remove givenAllSpecial

#Utility
tag @s remove givenCanopy
tag @s remove givenNova
tag @s remove givenObshield
tag @s remove givenSplash
tag @s remove givenVortex
tag @s remove givenArrows
tag @s remove givenArrowsTwice
tag @s remove givenFireball
tag @s remove givenFireballTwice
tag @s remove givenShield
tag @s remove givenShieldTwice
tag @s remove givenAllUtil

#Hotfix for Minute Mix giving duplicate arrows/fireballs/shields
execute if entity @s[tag=Minute] run tag @s add givenArrows
execute if entity @s[tag=Minute] run tag @s add givenFireball
execute if entity @s[tag=Minute] run tag @s add givenShield