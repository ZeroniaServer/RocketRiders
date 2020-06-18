##GAME MODIFIERS
#Instamine
execute as @s[scores={modifierID=0},tag=Instamine,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=0},tag=!Instamine,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#No Fall
execute as @s[scores={modifierID=1},tag=NoFall,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=1},tag=!NoFall,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Explosive
execute as @s[scores={modifierID=2},tag=Explosive,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=2},tag=!Explosive,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Rocket Residers
execute as @s[scores={modifierID=3},tag=Residers,tag=!ResidersOff,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=3},tag=!Residers,tag=!ResidersOff,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute as @s[scores={modifierID=3},tag=ResidersOff,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Sonar
execute as @s[scores={modifierID=4},tag=Sonar,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=4},tag=!Sonar,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Molerat
execute as @s[scores={modifierID=5},tag=Molerat,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=5},tag=!Molerat,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Minute Mix
execute as @s[scores={modifierID=6},tag=Minute,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=6},tag=!Minute,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Surprise Eggs
execute as @s[scores={modifierID=7},tag=SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=7},tag=!SurpriseEgg,tag=!SurpriseEggOff,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute as @s[scores={modifierID=7},tag=SurpriseEggOff,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Wind Down
execute as @s[scores={modifierID=8},tag=WindDown,tag=!Minute,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=8},tag=!WindDown,tag=!Minute,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute as @s[scores={modifierID=8},tag=Minute,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#Splash Streams
execute as @s[scores={modifierID=9},tag=SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run setblock -69 191 75 warped_wall_sign[facing=east]
execute as @s[scores={modifierID=9},tag=!SplashStreams,tag=!SplashStreamsOff,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]
execute as @s[scores={modifierID=9},tag=SplashStreamsOff,tag=!settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

#All locked
execute as @s[tag=settingsLocked] run setblock -69 191 75 crimson_wall_sign[facing=east]

##GAME OPTIONS
#missile pierce prevention
execute as @s[tag=doPrevention,tag=!settingsLocked] run setblock -70 193 79 warped_wall_sign[facing=east]
execute as @s[tag=!doPrevention,tag=!settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 193 79 crimson_wall_sign[facing=east]

#hotbar limit
execute as @s[tag=doHotbarLimit,tag=!settingsLocked] run setblock -70 191 78 warped_wall_sign[facing=east]
execute as @s[tag=!doHotbarLimit,tag=!settingsLocked] run setblock -70 191 78 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 191 78 crimson_wall_sign[facing=east]

#item stacking
execute as @s[tag=doStacking,tag=!settingsLocked] run setblock -70 191 77 warped_wall_sign[facing=east]
execute as @s[tag=!doStacking,tag=!settingsLocked] run setblock -70 191 77 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 191 77 crimson_wall_sign[facing=east]

#tie/sudden death
execute as @s[tag=doTying,tag=!tyingOff,tag=!settingsLocked] run setblock -70 193 77 warped_wall_sign[facing=east]
execute as @s[tag=!doTying,tag=!tyingOff,tag=!settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]
execute as @s[tag=tyingOff,tag=!settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]
execute as @s[tag=settingsLocked] run setblock -70 193 77 crimson_wall_sign[facing=east]

##NORMAL MISSILES
#Normal Category
execute if entity @s[tag=rngNormal,tag=!settingsLocked] run setblock -69 193 83 warped_wall_sign[facing=east]
execute unless entity @s[tag=rngNormal,tag=!settingsLocked] run setblock -69 193 83 crimson_wall_sign[facing=east]

#Toma
execute if entity @s[tag=rngToma,tag=rngNormal,tag=!settingsLocked] run setblock -67 193 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngToma,tag=rngNormal,tag=!settingsLocked] run setblock -67 193 74 crimson_wall_sign[facing=south]

#Ant
execute if entity @s[tag=rngAnt,tag=rngNormal,tag=!settingsLocked] run setblock -66 193 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngAnt,tag=rngNormal,tag=!settingsLocked] run setblock -66 193 74 crimson_wall_sign[facing=south]

#Slasher
execute if entity @s[tag=rngSlash,tag=rngNormal,tag=!settingsLocked] run setblock -65 193 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngSlash,tag=rngNormal,tag=!settingsLocked] run setblock -65 193 74 crimson_wall_sign[facing=south]

#Nullifier
execute if entity @s[tag=rngNull,tag=rngNormal,tag=!settingsLocked] run setblock -64 193 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngNull,tag=rngNormal,tag=!settingsLocked] run setblock -64 193 74 crimson_wall_sign[facing=south]

#Citadel
execute if entity @s[tag=rngCitadel,tag=rngNormal,tag=!settingsLocked] run setblock -63 193 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngCitadel,tag=rngNormal,tag=!settingsLocked] run setblock -63 193 74 crimson_wall_sign[facing=south]

#Blade
execute if entity @s[tag=rngBlade,tag=rngNormal,tag=!settingsLocked] run setblock -67 192 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngBlade,tag=rngNormal,tag=!settingsLocked] run setblock -67 192 74 crimson_wall_sign[facing=south]

#Catapult
execute if entity @s[tag=rngCata,tag=rngNormal,tag=!settingsLocked] run setblock -66 192 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngCata,tag=rngNormal,tag=!settingsLocked] run setblock -66 192 74 crimson_wall_sign[facing=south]

#Lifter
execute if entity @s[tag=rngLift,tag=rngNormal,tag=!settingsLocked] run setblock -65 192 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngLift,tag=rngNormal,tag=!settingsLocked] run setblock -65 192 74 crimson_wall_sign[facing=south]

#Elder Guardian
execute if entity @s[tag=rngEguard,tag=rngNormal,tag=!settingsLocked] run setblock -64 192 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngEguard,tag=rngNormal,tag=!settingsLocked] run setblock -64 192 74 crimson_wall_sign[facing=south]

#Gemini
execute if entity @s[tag=rngGemi,tag=rngNormal,tag=!settingsLocked] run setblock -63 192 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngGemi,tag=rngNormal,tag=!settingsLocked] run setblock -63 192 74 crimson_wall_sign[facing=south]

##LIGHTNING MISSILES
#Lightning Category
execute if entity @s[tag=rngLightning,tag=!settingsLocked] run setblock -69 191 83 warped_wall_sign[facing=east]
execute unless entity @s[tag=rngLightning,tag=!settingsLocked] run setblock -69 191 83 crimson_wall_sign[facing=east]

#Hurricane
execute if entity @s[tag=rngHur,tag=rngLightning,tag=!settingsLocked] run setblock -62 192 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngHur,tag=rngLightning,tag=!settingsLocked] run setblock -62 192 74 crimson_wall_sign[facing=south]

#Thunderbolt
execute if entity @s[tag=rngThun,tag=rngLightning,tag=!settingsLocked] run setblock -62 193 74 warped_wall_sign[facing=south]
execute unless entity @s[tag=rngThun,tag=rngLightning,tag=!settingsLocked] run setblock -62 193 74 crimson_wall_sign[facing=south]

##HEAVY MISSILES
#Heavy Category
execute if entity @s[tag=rngHeavy,tag=!settingsLocked] run setblock -69 191 81 warped_wall_sign[facing=east]
execute unless entity @s[tag=rngHeavy,tag=!settingsLocked] run setblock -69 191 81 crimson_wall_sign[facing=east]

#Warhead
execute if entity @s[tag=rngWar,tag=rngHeavy,tag=!settingsLocked] run setblock -62 193 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngWar,tag=rngHeavy,tag=!settingsLocked] run setblock -62 193 82 crimson_wall_sign[facing=north]

#Rifter
execute if entity @s[tag=rngRift,tag=rngHeavy,tag=!settingsLocked] run setblock -63 193 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngRift,tag=rngHeavy,tag=!settingsLocked] run setblock -63 193 82 crimson_wall_sign[facing=north]

#Juggerbuster
execute if entity @s[tag=rngJbuster,tag=rngHeavy,tag=!settingsLocked] run setblock -62 192 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngJbuster,tag=rngHeavy,tag=!settingsLocked] run setblock -62 192 82 crimson_wall_sign[facing=north]

#Auxiliary
execute if entity @s[tag=rngAux,tag=rngHeavy,tag=!settingsLocked] run setblock -63 192 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngAux,tag=rngHeavy,tag=!settingsLocked] run setblock -63 192 82 crimson_wall_sign[facing=north]

##UTILITY ITEMS
#Utility Category
execute if entity @s[tag=rngUtil,tag=!settingsLocked] run setblock -69 193 81 warped_wall_sign[facing=east]
execute unless entity @s[tag=rngUtil,tag=!settingsLocked] run setblock -69 193 81 crimson_wall_sign[facing=east]

#Arrows
execute if entity @s[tag=rngArrows,tag=rngUtil,tag=!settingsLocked] run setblock -64 193 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngArrows,tag=rngUtil,tag=!settingsLocked] run setblock -64 193 82 crimson_wall_sign[facing=north]

#Obsidian Shield
execute if entity @s[tag=rngObshield,tag=rngUtil,tag=!settingsLocked] run setblock -65 193 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngObshield,tag=rngUtil,tag=!settingsLocked] run setblock -65 193 82 crimson_wall_sign[facing=north]

#Fireball
execute if entity @s[tag=rngFireball,tag=rngUtil,tag=!settingsLocked] run setblock -66 193 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngFireball,tag=rngUtil,tag=!settingsLocked] run setblock -66 193 82 crimson_wall_sign[facing=north]

#Nova
execute if entity @s[tag=rngNova,tag=rngUtil,tag=!settingsLocked] run setblock -67 193 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngNova,tag=rngUtil,tag=!settingsLocked] run setblock -67 193 82 crimson_wall_sign[facing=north]

#Vortex
execute if entity @s[tag=rngVortex,tag=rngUtil,tag=!settingsLocked] run setblock -64 192 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngVortex,tag=rngUtil,tag=!settingsLocked] run setblock -64 192 82 crimson_wall_sign[facing=north]

#Splash
execute if entity @s[tag=rngSplash,tag=rngUtil,tag=!settingsLocked] run setblock -65 192 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngSplash,tag=rngUtil,tag=!settingsLocked] run setblock -65 192 82 crimson_wall_sign[facing=north]

#Canopy
execute if entity @s[tag=rngCanopy,tag=rngUtil,tag=!settingsLocked] run setblock -66 192 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngCanopy,tag=rngUtil,tag=!settingsLocked] run setblock -66 192 82 crimson_wall_sign[facing=north]

#Shield
execute if entity @s[tag=rngShield,tag=rngUtil,tag=!settingsLocked] run setblock -67 192 82 warped_wall_sign[facing=north]
execute unless entity @s[tag=rngShield,tag=rngUtil,tag=!settingsLocked] run setblock -67 192 82 crimson_wall_sign[facing=north]