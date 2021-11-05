kill @e[type=marker,tag=swapplatform]

tag @s remove swapEnabled
tag @s remove SurpriseEggOff
tag @s[tag=SurpriseEggWasOn] add SurpriseEgg
tag @s remove SurpriseEggWasOn
tag @s[tag=!SMCustom] remove SplashStreamsOff
tag @s[tag=SplashStreamsWasOn] add SplashStreams
tag @s remove SplashStreamsWasOn
tag @s remove ChaosOff
tag @s[tag=ChaosWasOn] add Chaos
tag @s remove ChaosWasOn
tag @s remove vortexOverride
tag @s remove respawnFlag

#item enabling/disabling
tag @s remove normalLocked
tag @s[tag=normalWasOn] add rngNormal
tag @s remove normalWasOn
tag @s[tag=splashWasOn] add rngSplash
tag @s remove splashWasOn
tag @s[tag=canopyWasOn] add rngCanopy
tag @s remove canopyWasOn
tag @s[tag=novaWasOn] add rngNova
tag @s remove novaWasOn
tag @s[tag=riftWasOn] add rngRift
tag @s remove riftWasOn
tag @s[tag=jbusterWasOn] add rngJbuster
tag @s remove jbusterWasOn

tag @s[tag=arrowsWasOff] remove rngArrows
tag @s remove arrowsWasOff
tag @s[tag=fireballWasOff] remove rngFireball
tag @s remove fireballWasOff
tag @s[tag=vortexWasOff] remove rngVortex
tag @s remove vortexWasOff
tag @s[tag=obshieldWasOff] remove rngObshield
tag @s remove obshieldWasOff
tag @s[tag=shieldWasOff] remove rngShield
tag @s remove shieldWasOff
tag @s[tag=utilWasOff] remove rngUtil
tag @s remove utilWasOff

tag @s[tag=auxWasOff] remove rngAux
tag @s remove auxWasOff
tag @s[tag=warWasOff] remove rngWar
tag @s remove warWasOff
tag @s[tag=heavyWasOff] remove rngHeavy
tag @s remove heavyWasOff

tag @s[tag=hurWasOff] remove rngHur
tag @s remove hurWasOff
tag @s[tag=thunWasOff] remove rngThun
tag @s remove thunWasOff
tag @s[tag=lightningWasOff] remove rngLightning
tag @s remove lightningWasOff

tag @s add switchGamemodes