#New dawn arena preset
scoreboard players set @e[tag=Selection] TopDeco 1
scoreboard players set @e[tag=Selection] MiddleDeco 1
scoreboard players set @e[tag=Selection] TopCorner 1
scoreboard players set @e[tag=Selection] BottomDeco 1

#Missiles
tag @e[tag=Selection] add rngMissile
tag @e[tag=Selection] add rngNormal
tag @e[tag=Selection] add rngLightning
tag @e[tag=Selection] add rngUtil
tag @e[tag=Selection] add rngHeavy

tag @e[tag=Selection] add rngToma
tag @e[tag=Selection] add rngAux
tag @e[tag=Selection] add rngBlade
tag @e[tag=Selection] add rngEguard
tag @e[tag=Selection] add rngSlash
tag @e[tag=Selection] add rngWar
tag @e[tag=Selection] add rngLift
tag @e[tag=Selection] add rngThun
tag @e[tag=Selection] add rngHur
tag @e[tag=Selection] add rngNull
tag @e[tag=Selection] add rngCata
tag @e[tag=Selection] add rngCitadel

#Util
tag @e[tag=Selection] add rngArrows
tag @e[tag=Selection] add rngFireball
tag @e[tag=Selection] add rngShield
tag @e[tag=Selection] add rngObshield
tag @e[tag=Selection] add rngVortex
tag @e[tag=Selection] add rngSplash
tag @e[tag=Selection] add rngNova
tag @e[tag=Selection] add rngCanopy

#Deactivated items
tag @e[tag=Selection] remove rngAnt
tag @e[tag=Selection] remove rngGemi
tag @e[tag=Selection] remove rngJbuster
tag @e[tag=Selection] remove rngRift

#Item giving time
scoreboard players set @e[tag=Selection] MaxItemSec 15

#Disable modifiers
tag @e[tag=Selection] remove Molerat
tag @e[tag=Selection] remove Instamine
tag @e[tag=Selection] remove NoFall
tag @e[tag=Selection] remove Explosive
tag @e[tag=Selection] remove Residers
tag @e[tag=Selection] remove Sonar
tag @e[tag=Selection] remove SurpriseEgg
tag @e[tag=Selection] remove Minute

#Add needed settings and modifiers
tag @e[tag=Selection] add WindDown
tag @e[tag=Selection] add doPrevention
tag @e[tag=Selection] add doHotbarLimit
scoreboard players set @e[tag=Selection] doStacking 0