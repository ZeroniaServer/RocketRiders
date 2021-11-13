########################################
## TETRIS: The Tetris bag-like system ##
## that prevents against repeat items ##
########################################

##Game Customizer Compatibility
#Normal
tag @s[tag=!rngAnt] add givenAnt
tag @s[tag=!rngBlade] add givenBlade
tag @s[tag=!rngCata] add givenCata
tag @s[tag=!rngCitadel] add givenCita
tag @s[tag=!rngEguard] add givenGuard
tag @s[tag=!rngGemi] add givenGemi
tag @s[tag=!rngLift] add givenLift
tag @s[tag=!rngNull] add givenNull
tag @s[tag=!rngSlash] add givenSlash
tag @s[tag=!rngToma] add givenToma
tag @s[tag=!rngNormal] add givenAllNormal
tag @s[tag=normalOff] add givenAllNormal

#Heavy
tag @s[tag=!rngAux] add givenAux
tag @s[tag=!rngJbuster] add givenJbust
tag @s[tag=!rngRift] add givenRift
tag @s[tag=!rngWar] add givenWar
tag @s[tag=!rngHeavy] add givenAllHeavy
tag @s[tag=heavyOff] add givenAllHeavy

#Lightning
tag @s[tag=!rngHur] add givenHur
tag @s[tag=!rngThun] add givenBolt
tag @s[tag=!rngLightning] add givenAllLightning
tag @s[tag=lightningOff] add givenAllLightning

#Utility
tag @s[tag=!rngArrows] add givenArrows
tag @s[tag=!rngArrows] add givenArrowsTwice
tag @s[tag=!rngCanopy] add givenCanopy
tag @s[tag=!rngFireball] add givenFireball
tag @s[tag=!rngFireball] add givenFireballTwice
tag @s[tag=!rngNova] add givenNova
tag @s[tag=!rngObshield] add givenObshield
tag @s[tag=!rngShield] add givenShield
tag @s[tag=!rngShield] add givenShieldTwice
tag @s[tag=!rngSplash] add givenSplash
tag @s[tag=!rngVortex] add givenVortex
tag @s[tag=!rngUtil] add givenAllUtil
tag @s[tag=utilOff] add givenAllUtil

##Actual Tetris bag logic
tag @s[tag=givenAnt,tag=givenBlade,tag=givenCata,tag=givenCita,tag=givenGuard,tag=givenGemi,tag=givenLift,tag=givenNull,tag=givenSlash,tag=givenToma] add givenAllNormal
tag @s[tag=givenAux,tag=givenJbust,tag=givenRift,tag=givenWar] add givenAllHeavy
tag @s[tag=givenHur,tag=givenBolt] add givenAllLightning
tag @s[tag=givenBroad,tag=givenBull,tag=givenDuplex,tag=givenHyper] add givenAllSpecial
tag @s[tag=givenObshield,tag=givenCanopy,tag=givenSplash,tag=givenVortex,tag=givenNova,tag=givenArrowsTwice,tag=givenFireballTwice,tag=givenShieldTwice] add givenAllUtil

##Condition for Tetris bag resetting
execute if entity @s[tag=!Chaos,tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllUtil] run function items:tetrisreset
execute if entity @s[tag=Chaos,tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial,tag=givenAllUtil] run function items:tetrisreset