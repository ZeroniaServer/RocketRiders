tag @s remove switchGamemodes
function arenaclear:lockdecos
execute unless entity @e[type=marker,tag=crusadeWall,limit=1] run summon marker 12.5 54.0 0.0 {Tags:["crusadeWall"]}
tag @s add noSabers
tag @s add portalDecosOff
tag @s[tag=Hardcore] add HardcoreWasOn
tag @s add HardcoreOff
tag @s[tag=Residers] add ResidersWasOn
tag @s add ResidersOff
tag @s add noPortal
tag @s add customPrevention
tag @s add featheredOff
tag @s add arrowLimit
tag @s[tag=!doStacking] add stackingWasOff
tag @s add doStacking
tag @s add stackingOn
tag @s add customSaberMsg
tag @s add customArrowPickup
tag @s add SuddenDeathCustom
tag @s add MoleratOff
tag @s[tag=DoublePortal] add DoublePortalWasOn
tag @s[tag=Molerat] add MoleratWasOn
tag @s[tag=Molerat] remove Molerat
tag @s[tag=SurpriseEgg] add SurpriseEggWasOn
tag @s add SurpriseEggOff
tag @s[tag=Chaos] add ChaosWasOn
tag @s add ChaosOff
tag @s[tag=ClutterCollector] add ClutterCollectorWasOn
tag @s add ClutterCollectorOff
tag @s add portalOverride
tag @s add crusadeEnabled

#item disabling/enabling
tag @s[tag=!rngArrows] add arrowsWasOff
tag @s add rngArrows
tag @s[tag=!rngFireball] add fireballWasOff
tag @s add rngFireball
tag @s[tag=!rngVortex] add vortexWasOff
tag @s add rngVortex
tag @s[tag=!rngShield] add shieldWasOff
tag @s add rngShield
tag @s[tag=!rngObshield] add obshieldWasOff
tag @s add rngObshield
tag @s[tag=!rngSplash] add splashWasOff
tag @s add rngSplash
tag @s[tag=!rngCanopy] add canopyWasOff
tag @s add rngCanopy
tag @s[tag=!rngNova] add novaWasOff
tag @s add rngNova
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil

tag @s[tag=!rngAux] add auxWasOff
tag @s add rngAux
tag @s[tag=!rngWar] add warWasOff
tag @s add rngWar
tag @s[tag=!rngJbuster] add jbusterWasOff
tag @s add rngJbuster
tag @s[tag=rngRift] add riftWasOn
tag @s remove rngRift
tag @s[tag=!rngHeavy] add heavyWasOff
tag @s add rngHeavy

tag @s[tag=!rngHur] add hurWasOff
tag @s add rngHur
tag @s[tag=!rngThun] add thunWasOff
tag @s add rngThun
tag @s[tag=!rngLightning] add lightningWasOff
tag @s add rngLightning

tag @s[tag=!rngAnt] add antWasOff
tag @s add rngAnt
tag @s[tag=!rngBlade] add bladeWasOff
tag @s add rngBlade
tag @s[tag=!rngCata] add cataWasOff
tag @s add rngCata
tag @s[tag=!rngCitadel] add citadelWasOff
tag @s add rngCitadel
tag @s[tag=rngEguard] add guardWasOn
tag @s remove rngEguard
tag @s[tag=!rngGemi] add gemiWasOff
tag @s add rngGemi
tag @s[tag=!rngLift] add liftWasOff
tag @s add rngLift
tag @s[tag=!rngNull] add nullWasOff
tag @s add rngNull
tag @s[tag=!rngSlash] add slashWasOff
tag @s add rngSlash
tag @s[tag=!rngToma] add tomaWasOff
tag @s add rngToma
tag @s[tag=!rngNormal] add normalWasOff
tag @s add rngNormal