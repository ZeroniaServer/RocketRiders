##NORMAL MISSILES
#Normal Category Sign Color
execute if entity @s[tag=rngNormal,tag=!settingsLocked] run setblock -69 193 83 minecraft:warped_wall_sign[facing=east]
execute unless entity @s[tag=rngNormal,tag=!settingsLocked] run setblock -69 193 83 minecraft:crimson_wall_sign[facing=east]

#Toma Sign Color
execute if entity @s[tag=rngToma,tag=rngNormal,tag=!settingsLocked] run setblock -67 193 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngToma,tag=rngNormal,tag=!settingsLocked] run setblock -67 193 74 minecraft:crimson_wall_sign[facing=south]

#Ant Sign Color
execute if entity @s[tag=rngAnt,tag=rngNormal,tag=!settingsLocked] run setblock -66 193 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngAnt,tag=rngNormal,tag=!settingsLocked] run setblock -66 193 74 minecraft:crimson_wall_sign[facing=south]

#Slasher Sign Color
execute if entity @s[tag=rngSlash,tag=rngNormal,tag=!settingsLocked] run setblock -65 193 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngSlash,tag=rngNormal,tag=!settingsLocked] run setblock -65 193 74 minecraft:crimson_wall_sign[facing=south]

#Nullifier Sign Color
execute if entity @s[tag=rngNull,tag=rngNormal,tag=!settingsLocked] run setblock -64 193 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngNull,tag=rngNormal,tag=!settingsLocked] run setblock -64 193 74 minecraft:crimson_wall_sign[facing=south]

#Citadel Sign Color
execute if entity @s[tag=rngCitadel,tag=rngNormal,tag=!settingsLocked] run setblock -63 193 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngCitadel,tag=rngNormal,tag=!settingsLocked] run setblock -63 193 74 minecraft:crimson_wall_sign[facing=south]

#Blade Sign Color
execute if entity @s[tag=rngBlade,tag=rngNormal,tag=!settingsLocked] run setblock -67 192 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngBlade,tag=rngNormal,tag=!settingsLocked] run setblock -67 192 74 minecraft:crimson_wall_sign[facing=south]

#Catapult Sign Color
execute if entity @s[tag=rngCata,tag=rngNormal,tag=!settingsLocked] run setblock -66 192 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngCata,tag=rngNormal,tag=!settingsLocked] run setblock -66 192 74 minecraft:crimson_wall_sign[facing=south]

#Lifter Sign Color
execute if entity @s[tag=rngLift,tag=rngNormal,tag=!settingsLocked] run setblock -65 192 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngLift,tag=rngNormal,tag=!settingsLocked] run setblock -65 192 74 minecraft:crimson_wall_sign[facing=south]

#Elder Guardian Sign Color
execute if entity @s[tag=rngEguard,tag=rngNormal,tag=!settingsLocked] run setblock -64 192 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngEguard,tag=rngNormal,tag=!settingsLocked] run setblock -64 192 74 minecraft:crimson_wall_sign[facing=south]

#Gemini Sign Color
execute if entity @s[tag=rngGemi,tag=rngNormal,tag=!settingsLocked] run setblock -63 192 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngGemi,tag=rngNormal,tag=!settingsLocked] run setblock -63 192 74 minecraft:crimson_wall_sign[facing=south]

##LIGHTNING MISSILES
#Lightning Category Sign Color
execute if entity @s[tag=rngLightning,tag=!settingsLocked] run setblock -69 191 83 minecraft:warped_wall_sign[facing=east]
execute unless entity @s[tag=rngLightning,tag=!settingsLocked] run setblock -69 191 83 minecraft:crimson_wall_sign[facing=east]

#Hurricane Sign Color
execute if entity @s[tag=rngHur,tag=rngLightning,tag=!settingsLocked] run setblock -62 192 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngHur,tag=rngLightning,tag=!settingsLocked] run setblock -62 192 74 minecraft:crimson_wall_sign[facing=south]

#Thunderbolt Sign Color
execute if entity @s[tag=rngThun,tag=rngLightning,tag=!settingsLocked] run setblock -62 193 74 minecraft:warped_wall_sign[facing=south]
execute unless entity @s[tag=rngThun,tag=rngLightning,tag=!settingsLocked] run setblock -62 193 74 minecraft:crimson_wall_sign[facing=south]

##HEAVY MISSILES
#Heavy Category Sign Color
execute if entity @s[tag=rngHeavy,tag=!settingsLocked] run setblock -69 191 81 minecraft:warped_wall_sign[facing=east]
execute unless entity @s[tag=rngHeavy,tag=!settingsLocked] run setblock -69 191 81 minecraft:crimson_wall_sign[facing=east]

#Warhead Sign Color
execute if entity @s[tag=rngWar,tag=rngHeavy,tag=!settingsLocked] run setblock -62 193 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngWar,tag=rngHeavy,tag=!settingsLocked] run setblock -62 193 82 minecraft:crimson_wall_sign[facing=north]

#Rifter Sign Color
execute if entity @s[tag=rngRift,tag=rngHeavy,tag=!settingsLocked] run setblock -63 193 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngRift,tag=rngHeavy,tag=!settingsLocked] run setblock -63 193 82 minecraft:crimson_wall_sign[facing=north]

#Juggerbuster Sign Color
execute if entity @s[tag=rngJbuster,tag=rngHeavy,tag=!settingsLocked] run setblock -62 192 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngJbuster,tag=rngHeavy,tag=!settingsLocked] run setblock -62 192 82 minecraft:crimson_wall_sign[facing=north]

#Auxiliary Sign Color
execute if entity @s[tag=rngAux,tag=rngHeavy,tag=!settingsLocked] run setblock -63 192 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngAux,tag=rngHeavy,tag=!settingsLocked] run setblock -63 192 82 minecraft:crimson_wall_sign[facing=north]

##UTILITY ITEMS
#Utility Category Sign Color
execute if entity @s[tag=rngUtil,tag=!settingsLocked] run setblock -69 193 81 minecraft:warped_wall_sign[facing=east]
execute unless entity @s[tag=rngUtil,tag=!settingsLocked] run setblock -69 193 81 minecraft:crimson_wall_sign[facing=east]

#Arrows Sign Color
execute if entity @s[tag=rngArrows,tag=rngUtil,tag=!settingsLocked] run setblock -64 193 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngArrows,tag=rngUtil,tag=!settingsLocked] run setblock -64 193 82 minecraft:crimson_wall_sign[facing=north]

#Obsidian Shield Sign Color
execute if entity @s[tag=rngObshield,tag=rngUtil,tag=!settingsLocked] run setblock -65 193 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngObshield,tag=rngUtil,tag=!settingsLocked] run setblock -65 193 82 minecraft:crimson_wall_sign[facing=north]

#Fireball Sign Color
execute if entity @s[tag=rngFireball,tag=rngUtil,tag=!settingsLocked] run setblock -66 193 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngFireball,tag=rngUtil,tag=!settingsLocked] run setblock -66 193 82 minecraft:crimson_wall_sign[facing=north]

#Nova Sign Color
execute if entity @s[tag=rngNova,tag=rngUtil,tag=!settingsLocked] run setblock -67 193 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngNova,tag=rngUtil,tag=!settingsLocked] run setblock -67 193 82 minecraft:crimson_wall_sign[facing=north]

#Vortex Sign Color
execute if entity @s[tag=rngVortex,tag=rngUtil,tag=!settingsLocked] run setblock -64 192 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngVortex,tag=rngUtil,tag=!settingsLocked] run setblock -64 192 82 minecraft:crimson_wall_sign[facing=north]

#Splash Sign Color
execute if entity @s[tag=rngSplash,tag=rngUtil,tag=!settingsLocked] run setblock -65 192 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngSplash,tag=rngUtil,tag=!settingsLocked] run setblock -65 192 82 minecraft:crimson_wall_sign[facing=north]

#Canopy Sign Color
execute if entity @s[tag=rngCanopy,tag=rngUtil,tag=!settingsLocked] run setblock -66 192 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngCanopy,tag=rngUtil,tag=!settingsLocked] run setblock -66 192 82 minecraft:crimson_wall_sign[facing=north]

#Shield Sign Color
execute if entity @s[tag=rngShield,tag=rngUtil,tag=!settingsLocked] run setblock -67 192 82 minecraft:warped_wall_sign[facing=north]
execute unless entity @s[tag=rngShield,tag=rngUtil,tag=!settingsLocked] run setblock -67 192 82 minecraft:crimson_wall_sign[facing=north]