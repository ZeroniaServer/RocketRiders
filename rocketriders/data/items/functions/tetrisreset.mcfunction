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

tag @s remove givenAux
tag @s remove givenJbust
tag @s remove givenRift
tag @s remove givenWar
tag @s remove givenAllHeavy

tag @s remove givenHur
tag @s remove givenBolt
tag @s remove givenAllLightning

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

#hotfix for minute mix giving duplicate items
execute as @s[tag=Minute] run tag @s add givenArrows
execute as @s[tag=Minute] run tag @s add givenFireball
execute as @s[tag=Minute] run tag @s add givenShield