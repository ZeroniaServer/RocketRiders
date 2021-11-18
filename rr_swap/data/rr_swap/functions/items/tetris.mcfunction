#game customizer compatibility
tag @s[tag=!rngAux] add givenAux
tag @s[tag=!rngWar] add givenWar

tag @s[tag=!rngHur] add givenHur
tag @s[tag=!rngThun] add givenBolt

tag @s[tag=!rngArrows] add givenArrows
tag @s[tag=!rngFireball] add givenFireball
tag @s[tag=!rngObshield] add givenObshield
tag @s[tag=!rngShield] add givenShield
tag @s[tag=!rngVortex] add givenICBM
tag @s[tag=!rngUtil] add givenAllUtil

tag @s remove givenArrowsTwice
tag @s remove givenFireballTwice
tag @s remove givenShieldTwice

tag @s[tag=givenAux,tag=givenWar,tag=givenBull,tag=givenDuplex] add givenAllHeavy
tag @s[tag=givenHur,tag=givenBolt,tag=givenHyper,tag=givenBroad] add givenAllLightning
tag @s[tag=givenICBM,tag=givenShield] add givenAllDUtil
tag @s[tag=givenFireball,tag=givenObshield] add givenAllLUtil