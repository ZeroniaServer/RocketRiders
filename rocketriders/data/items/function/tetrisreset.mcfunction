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
execute unless predicate game:game_rules/special_treatment/__forced_off run tag @s remove givenBroad
execute unless predicate game:game_rules/special_treatment/__forced_off run tag @s remove givenBull
execute unless predicate game:game_rules/special_treatment/__forced_off run tag @s remove givenDuplex
execute unless predicate game:game_rules/special_treatment/__forced_off run tag @s remove givenHyper
execute unless predicate game:game_rules/special_treatment/__forced_off run tag @s remove givenAllSpecial

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
execute if predicate game:modifiers/minute_mix/on run tag @s add givenArrows
execute if predicate game:modifiers/minute_mix/on run tag @s add givenFireball
execute if predicate game:modifiers/minute_mix/on run tag @s add givenShield