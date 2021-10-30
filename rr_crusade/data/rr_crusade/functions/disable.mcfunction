tag @e[type=armor_stand,tag=Selection] remove crusadeEnabled
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:unlockdecos
kill @e[tag=crusadeWall]
tag @e[type=armor_stand,tag=Selection] remove noSabers
tag @e[type=armor_stand,tag=Selection] remove portalDecosOff
tag @e[type=armor_stand,tag=Selection] remove tyingOff
tag @e[type=armor_stand,tag=Selection] remove HardcoreOff
tag @e[type=armor_stand,tag=Selection] remove noPortal
tag @e[type=armor_stand,tag=Selection] remove customPrevention
tag @e[type=armor_stand,tag=Selection] remove featheredOff
tag @e[type=armor_stand,tag=Selection] remove arrowLimit
tag @e[type=armor_stand,tag=Selection,tag=stackingWasOff] remove doStacking
tag @e[type=armor_stand,tag=Selection] remove stackingWasOff
tag @e[type=armor_stand,tag=Selection] remove stackingOn
tag @e[type=armor_stand,tag=Selection] remove customSaberMsg
tag @e[type=armor_stand,tag=Selection] remove customArrowPickup
tag @e[type=armor_stand,tag=Selection] remove MoleratOff
tag @e[type=armor_stand,tag=Selection,tag=MoleratWasOn] add Molerat
tag @e[type=armor_stand,tag=Selection,tag=MoleratWasOn] remove MoleratWasOn
tag @e[type=armor_stand,tag=Selection] remove SurpriseEggOff
tag @e[type=armor_stand,tag=Selection,tag=SurpriseEggWasOn] add SurpriseEgg
tag @e[type=armor_stand,tag=Selection] remove SurpriseEggWasOn
tag @e[type=armor_stand,tag=Selection] remove portalOverride
execute as @a run trigger crusadechange set 0

#item enabling/disabling
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
tag @e[type=armor_stand,tag=Selection,tag=splashWasOff] remove rngSplash
tag @e[type=armor_stand,tag=Selection] remove splashWasOff
tag @e[type=armor_stand,tag=Selection,tag=canopyWasOff] remove rngCanopy
tag @e[type=armor_stand,tag=Selection] remove canopyWasOff
tag @e[type=armor_stand,tag=Selection,tag=novaWasOff] remove rngNova
tag @e[type=armor_stand,tag=Selection] remove novaWasOff
tag @e[type=armor_stand,tag=Selection,tag=utilWasOff] remove rngUtil
tag @e[type=armor_stand,tag=Selection] remove utilWasOff

tag @e[type=armor_stand,tag=Selection,tag=auxWasOff] remove rngAux
tag @e[type=armor_stand,tag=Selection] remove auxWasOff
tag @e[type=armor_stand,tag=Selection,tag=warWasOff] remove rngWar
tag @e[type=armor_stand,tag=Selection] remove warWasOff
tag @e[type=armor_stand,tag=Selection,tag=jbusterWasOff] remove rngJbuster
tag @e[type=armor_stand,tag=Selection] remove jbusterWasOff
tag @e[type=armor_stand,tag=Selection,tag=riftWasOn] add rngRift
tag @e[type=armor_stand,tag=Selection] remove riftWasOn
tag @e[type=armor_stand,tag=Selection,tag=heavyWasOff] remove rngHeavy
tag @e[type=armor_stand,tag=Selection] remove heavyWasOff

tag @e[type=armor_stand,tag=Selection,tag=hurWasOff] remove rngHur
tag @e[type=armor_stand,tag=Selection] remove hurWasOff
tag @e[type=armor_stand,tag=Selection,tag=thunWasOff] remove rngThun
tag @e[type=armor_stand,tag=Selection] remove thunWasOff
tag @e[type=armor_stand,tag=Selection,tag=lightningWasOff] remove rngLightning
tag @e[type=armor_stand,tag=Selection] remove lightningWasOff

tag @e[type=armor_stand,tag=Selection,tag=antWasOff] remove rngAnt
tag @e[type=armor_stand,tag=Selection] remove antWasOff
tag @e[type=armor_stand,tag=Selection,tag=bladeWasOff] remove rngBlade
tag @e[type=armor_stand,tag=Selection] remove bladeWasOff
tag @e[type=armor_stand,tag=Selection,tag=cataWasOff] remove rngCata
tag @e[type=armor_stand,tag=Selection] remove cataWasOff
tag @e[type=armor_stand,tag=Selection,tag=citadelWasOff] remove rngCitadel
tag @e[type=armor_stand,tag=Selection] remove citadelWasOff
tag @e[type=armor_stand,tag=Selection,tag=eguardWasOn] add rngEguard
tag @e[type=armor_stand,tag=Selection] remove eguardWasOn
tag @e[type=armor_stand,tag=Selection,tag=gemiWasOff] remove rngGemi
tag @e[type=armor_stand,tag=Selection] remove gemiWasOff
tag @e[type=armor_stand,tag=Selection,tag=liftWasOff] remove rngLift
tag @e[type=armor_stand,tag=Selection] remove liftWasOff
tag @e[type=armor_stand,tag=Selection,tag=nullWasOff] remove rngNull
tag @e[type=armor_stand,tag=Selection] remove nullWasOff
tag @e[type=armor_stand,tag=Selection,tag=slashWasOff] remove rngSlash
tag @e[type=armor_stand,tag=Selection] remove slashWasOff
tag @e[type=armor_stand,tag=Selection,tag=tomaWasOff] remove rngToma
tag @e[type=armor_stand,tag=Selection] remove tomaWasOff
tag @e[type=armor_stand,tag=Selection,tag=normalWasOff] remove rngNormal
tag @e[type=armor_stand,tag=Selection] remove normalWasOff

tag @e[type=armor_stand,tag=Selection] add switchGamemodes