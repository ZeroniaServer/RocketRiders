#hook in with game customizer
tag @e[tag=Selection,tag=!rngAnt] add givenAnt
tag @e[tag=Selection,tag=!rngBlade] add givenBlade
tag @e[tag=Selection,tag=!rngCata] add givenCata
tag @e[tag=Selection,tag=!rngCitadel] add givenCita
tag @e[tag=Selection,tag=!rngEguard] add givenGuard
tag @e[tag=Selection,tag=!rngGemi] add givenGemi
tag @e[tag=Selection,tag=!rngLift] add givenLift
tag @e[tag=Selection,tag=!rngNull] add givenNull
tag @e[tag=Selection,tag=!rngSlash] add givenSlash
tag @e[tag=Selection,tag=!rngToma] add givenToma
tag @e[tag=Selection,tag=!rngNormal] add givenAllNormal

tag @e[tag=Selection,tag=!rngAux] add givenAux
tag @e[tag=Selection,tag=!rngJbuster] add givenJbust
tag @e[tag=Selection,tag=!rngRift] add givenRift
tag @e[tag=Selection,tag=!rngWar] add givenWar
tag @e[tag=Selection,tag=!rngHeavy] add givenAllHeavy

tag @e[tag=Selection,tag=!rngHur] add givenHur
tag @e[tag=Selection,tag=!rngThun] add givenBolt
tag @e[tag=Selection,tag=!rngLightning] add givenAllLightning

tag @e[tag=Selection,tag=!rngArrows] add givenArrows
tag @e[tag=Selection,tag=!rngArrows] add givenArrowsTwice
tag @e[tag=Selection,tag=!rngCanopy] add givenCanopy
tag @e[tag=Selection,tag=!rngFireball] add givenFireball
tag @e[tag=Selection,tag=!rngFireball] add givenFireballTwice
tag @e[tag=Selection,tag=!rngNova] add givenNova
tag @e[tag=Selection,tag=!rngObshield] add givenObshield
tag @e[tag=Selection,tag=!rngShield] add givenShield
tag @e[tag=Selection,tag=!rngShield] add givenShieldTwice
tag @e[tag=Selection,tag=!rngSplash] add givenSplash
tag @e[tag=Selection,tag=!rngVortex] add givenVortex
tag @e[tag=Selection,tag=!rngUtil] add givenAllUtil

tag @e[tag=Selection,tag=givenAnt,tag=givenBlade,tag=givenCata,tag=givenCita,tag=givenGuard,tag=givenGemi,tag=givenLift,tag=givenNull,tag=givenSlash,tag=givenToma] add givenAllNormal
tag @e[tag=Selection,tag=givenAux,tag=givenJbust,tag=givenRift,tag=givenWar] add givenAllHeavy
tag @e[tag=Selection,tag=givenHur,tag=givenBolt] add givenAllLightning
tag @e[tag=Selection,tag=givenObshield,tag=givenCanopy,tag=givenSplash,tag=givenVortex,tag=givenNova,tag=givenArrowsTwice,tag=givenFireballTwice,tag=givenShieldTwice] add givenAllUtil

execute as @e[tag=Selection,tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllUtil] run function items:tetrisreset