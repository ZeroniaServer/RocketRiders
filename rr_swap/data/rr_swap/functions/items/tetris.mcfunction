#game customizer compatibility
tag @s[tag=!rngAux] add givenAux
tag @s[tag=!rngWar] add givenWar
tag @s[tag=!rngHeavy] add givenAllHeavy

tag @s[tag=!rngHur] add givenHur
tag @s[tag=!rngThun] add givenBolt
tag @s[tag=!rngLightning] add givenAllLightning

tag @s[tag=!rngArrows] add givenArrows
tag @s[tag=!rngFireball] add givenFireball
tag @s[tag=!rngObshield] add givenObshield
tag @s[tag=!rngShield] add givenShield
tag @s[tag=!rngVortex] add givenICBM
tag @s[tag=!rngUtil] add givenAllUtil

tag @s remove givenArrowsTwice
tag @s remove givenFireballTwice
tag @s remove givenShieldTwice

tag @s[tag=givenAux,tag=givenWar,tag=givenBull] add givenAllHeavy
tag @s[tag=givenHur,tag=givenBolt,tag=givenHyper] add givenAllLightning
tag @s[tag=givenICBM,tag=givenShield] add givenAllDUtil
tag @s[tag=givenFireball,tag=givenObshield] add givenAllLUtil

execute as @s[tag=givenAllHeavy,tag=givenAllDUtil] run function rr_swap:items/darktetrisreset
execute as @s[tag=givenAllLightning,tag=givenAllLUtil] run function rr_swap:items/lighttetrisreset