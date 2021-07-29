kill @e[type=marker,tag=swapplatform]

tag @e[type=armor_stand,tag=Selection] remove swapEnabled
tag @e[type=armor_stand,tag=Selection] remove SurpriseEggOff
tag @e[type=armor_stand,tag=Selection,tag=SurpriseEggWasOn] add SurpriseEgg
tag @e[type=armor_stand,tag=Selection] remove SurpriseEggWasOn
tag @e[type=armor_stand,tag=Selection] remove SplashStreamsOff
tag @e[type=armor_stand,tag=Selection,tag=SplashStreamsWasOn] add SplashStreams
tag @e[type=armor_stand,tag=Selection] remove SplashStreamsWasOn
tag @e[type=armor_stand,tag=Selection] remove vortexOverride
tag @e[type=armor_stand,tag=Selection] remove respawnFlag

#item enabling/disabling
tag @e[type=armor_stand,tag=Selection] remove normalLocked
tag @e[type=armor_stand,tag=Selection,tag=normalWasOn] add rngNormal
tag @e[type=armor_stand,tag=Selection] remove normalWasOn
tag @e[type=armor_stand,tag=Selection,tag=splashWasOn] add rngSplash
tag @e[type=armor_stand,tag=Selection] remove splashWasOn
tag @e[type=armor_stand,tag=Selection,tag=canopyWasOn] add rngCanopy
tag @e[type=armor_stand,tag=Selection] remove canopyWasOn
tag @e[type=armor_stand,tag=Selection,tag=novaWasOn] add rngNova
tag @e[type=armor_stand,tag=Selection] remove novaWasOn
tag @e[type=armor_stand,tag=Selection,tag=riftWasOn] add rngRift
tag @e[type=armor_stand,tag=Selection] remove riftWasOn
tag @e[type=armor_stand,tag=Selection,tag=jbusterWasOn] add rngJbuster
tag @e[type=armor_stand,tag=Selection] remove jbusterWasOn

tag @e[type=armor_stand,tag=Selection,tag=arrowsWasOff] remove rngArrows
tag @e[type=armor_stand,tag=Selection] remove arrowsWasOff
tag @e[type=armor_stand,tag=Selection,tag=fireballWasOff] remove rngFireball
tag @e[type=armor_stand,tag=Selection] remove fireballWasOff
tag @e[type=armor_stand,tag=Selection,tag=vortexWasOff] remove rngVortex
tag @e[type=armor_stand,tag=Selection] remove vortexWasOff
tag @e[type=armor_stand,tag=Selection,tag=obshieldWasOff] remove rngObshield
tag @e[type=armor_stand,tag=Selection] remove obshieldWasOff
tag @e[type=armor_stand,tag=Selection,tag=shieldWasOff] remove rngShield
tag @e[type=armor_stand,tag=Selection] remove shieldWasOff
tag @e[type=armor_stand,tag=Selection,tag=utilWasOff] remove rngUtil
tag @e[type=armor_stand,tag=Selection] remove utilWasOff

tag @e[type=armor_stand,tag=Selection,tag=auxWasOff] remove rngAux
tag @e[type=armor_stand,tag=Selection] remove auxWasOff
tag @e[type=armor_stand,tag=Selection,tag=warWasOff] remove rngWar
tag @e[type=armor_stand,tag=Selection] remove warWasOff
tag @e[type=armor_stand,tag=Selection,tag=heavyWasOff] remove rngHeavy
tag @e[type=armor_stand,tag=Selection] remove heavyWasOff

tag @e[type=armor_stand,tag=Selection,tag=hurWasOff] remove rngHur
tag @e[type=armor_stand,tag=Selection] remove hurWasOff
tag @e[type=armor_stand,tag=Selection,tag=thunWasOff] remove rngThun
tag @e[type=armor_stand,tag=Selection] remove thunWasOff
tag @e[type=armor_stand,tag=Selection,tag=lightningWasOff] remove rngLightning
tag @e[type=armor_stand,tag=Selection] remove lightningWasOff

tag @e[type=armor_stand,tag=Selection] add switchGamemodes