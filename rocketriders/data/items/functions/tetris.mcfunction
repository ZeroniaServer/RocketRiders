tag @e[tag=Selection,tag=givenAnt,tag=givenBlade,tag=givenCata,tag=givenCita,tag=givenGuard,tag=givenGemi,tag=givenLift,tag=givenNull,tag=givenSlash,tag=givenToma] add givenAllNormal
tag @e[tag=Selection,tag=givenAux,tag=givenJbust,tag=givenRift,tag=givenWar] add givenAllHeavy
tag @e[tag=Selection,tag=givenHur,tag=givenBolt] add givenAllLightning
tag @e[tag=Selection,tag=givenObshield,tag=givenCanopy,tag=givenSplash,tag=givenVortex,tag=givenNova,tag=givenArrowsTwice,tag=givenFireballTwice,tag=givenShieldTwice] add givenAllUtil

execute as @e[tag=Selection] unless entity @s[tag=rngAnt] run tag @s add givenAnt
execute as @e[tag=Selection] unless entity @s[tag=rngArrows] run tag @s add givenArrowsTwice
execute as @e[tag=Selection] unless entity @s[tag=rngArrows] run tag @s add givenArrows
execute as @e[tag=Selection] unless entity @s[tag=rngAux] run tag @s add givenAux
execute as @e[tag=Selection] unless entity @s[tag=rngBlade] run tag @s add givenBlade
execute as @e[tag=Selection] unless entity @s[tag=rngCanopy] run tag @s add givenCanopy
execute as @e[tag=Selection] unless entity @s[tag=rngCata] run tag @s add givenCata
execute as @e[tag=Selection] unless entity @s[tag=rngCitadel] run tag @s add givenCita
execute as @e[tag=Selection] unless entity @s[tag=rngEguard] run tag @s add givenGuard
execute as @e[tag=Selection] unless entity @s[tag=rngFireball] run tag @s add givenFireball
execute as @e[tag=Selection] unless entity @s[tag=rngFireball] run tag @s add givenFireballTwice
execute as @e[tag=Selection] unless entity @s[tag=rngGemi] run tag @s add givenGemi
execute as @e[tag=Selection] unless entity @s[tag=rngHur] run tag @s add givenHur
execute as @e[tag=Selection] unless entity @s[tag=rngJbuster] run tag @s add givenJbust
execute as @e[tag=Selection] unless entity @s[tag=rngLift] run tag @s add givenLift
execute as @e[tag=Selection] unless entity @s[tag=rngNova] run tag @s add givenNova
execute as @e[tag=Selection] unless entity @s[tag=rngNull] run tag @s add givenNull
execute as @e[tag=Selection] unless entity @s[tag=rngObshield] run tag @s add givenObshield
execute as @e[tag=Selection] unless entity @s[tag=rngRift] run tag @s add givenRift
execute as @e[tag=Selection] unless entity @s[tag=rngShield] run tag @s add givenShield
execute as @e[tag=Selection] unless entity @s[tag=rngShield] run tag @s add givenShieldTwice
execute as @e[tag=Selection] unless entity @s[tag=rngSlash] run tag @s add givenSlash
execute as @e[tag=Selection] unless entity @s[tag=rngSplash] run tag @s add givenSplash
execute as @e[tag=Selection] unless entity @s[tag=rngThun] run tag @s add givenBolt
execute as @e[tag=Selection] unless entity @s[tag=rngToma] run tag @s add givenToma
execute as @e[tag=Selection] unless entity @s[tag=rngVortex] run tag @s add givenVortex
execute as @e[tag=Selection] unless entity @s[tag=rngWar] run tag @s add givenWar


execute as @e[tag=Selection,tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllUtil] run function items:tetrisreset