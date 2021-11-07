tag @s remove crusadeEnabled
function arenaclear:unlockdecos
kill @e[tag=crusadeWall]
tag @s remove noSabers
tag @s remove portalDecosOff
tag @s[tag=HardcoreWasOn] add Hardcore
tag @s remove HardcoreOff
tag @s remove HardcoreWasOn
tag @s remove ResidersOff
tag @s[tag=ResidersWasOn] add Residers
tag @s remove ResidersWasOn
tag @s remove noPortal
tag @s remove customPrevention
tag @s remove featheredOff
tag @s remove arrowLimit
tag @s[tag=stackingWasOff] remove doStacking
tag @s remove stackingWasOff
tag @s remove stackingOn
tag @s remove customSaberMsg
tag @s remove customArrowPickup
tag @s remove SuddenDeathCustom
tag @s remove MoleratOff
tag @s[tag=MoleratWasOn] add Molerat
tag @s[tag=MoleratWasOn] remove MoleratWasOn
tag @s remove SurpriseEggOff
tag @s[tag=SurpriseEggWasOn] add SurpriseEgg
tag @s remove SurpriseEggWasOn
tag @s remove ChaosOff
tag @s[tag=ChaosWasOn] add Chaos
tag @s remove ChaosWasOn
tag @s[tag=ClutterCollectorWasOn] add ClutterCollector
tag @s remove ClutterCollectorOff
tag @s remove portalOverride
execute as @a run trigger crusadechange set 0

#item enabling/disabling
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
tag @s[tag=splashWasOff] remove rngSplash
tag @s remove splashWasOff
tag @s[tag=canopyWasOff] remove rngCanopy
tag @s remove canopyWasOff
tag @s[tag=novaWasOff] remove rngNova
tag @s remove novaWasOff
tag @s[tag=utilWasOff] remove rngUtil
tag @s remove utilWasOff

tag @s[tag=auxWasOff] remove rngAux
tag @s remove auxWasOff
tag @s[tag=warWasOff] remove rngWar
tag @s remove warWasOff
tag @s[tag=jbusterWasOff] remove rngJbuster
tag @s remove jbusterWasOff
tag @s[tag=riftWasOn] add rngRift
tag @s remove riftWasOn
tag @s[tag=heavyWasOff] remove rngHeavy
tag @s remove heavyWasOff

tag @s[tag=hurWasOff] remove rngHur
tag @s remove hurWasOff
tag @s[tag=thunWasOff] remove rngThun
tag @s remove thunWasOff
tag @s[tag=lightningWasOff] remove rngLightning
tag @s remove lightningWasOff

tag @s[tag=antWasOff] remove rngAnt
tag @s remove antWasOff
tag @s[tag=bladeWasOff] remove rngBlade
tag @s remove bladeWasOff
tag @s[tag=cataWasOff] remove rngCata
tag @s remove cataWasOff
tag @s[tag=citadelWasOff] remove rngCitadel
tag @s remove citadelWasOff
tag @s[tag=guardWasOn] add rngEguard
tag @s remove guardWasOn
tag @s[tag=gemiWasOff] remove rngGemi
tag @s remove gemiWasOff
tag @s[tag=liftWasOff] remove rngLift
tag @s remove liftWasOff
tag @s[tag=nullWasOff] remove rngNull
tag @s remove nullWasOff
tag @s[tag=slashWasOff] remove rngSlash
tag @s remove slashWasOff
tag @s[tag=tomaWasOff] remove rngToma
tag @s remove tomaWasOff
tag @s[tag=normalWasOff] remove rngNormal
tag @s remove normalWasOff

tag @s add switchGamemodes