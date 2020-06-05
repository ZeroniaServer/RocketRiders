#New dawn arena preset
scoreboard players set @e[tag=Selection] TopDeco 1
scoreboard players set @e[tag=Selection] MiddleDeco 1
scoreboard players set @e[tag=Selection] TopCorner 1
scoreboard players set @e[tag=Selection] BottomDeco 1

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



####################################################
#The lines right here make it so
#11 items are selected. Ty Llewv for the suggestion.
####################################################


### 1 shield type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Shield","RShieldRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Obshield","RShieldRNG"]}
tag @e[tag=RShieldRNG,limit=1,sort=random] add SelRRNG
#    normal shield selected
execute as @e[tag=Shield,tag=SelRRNG] run tag @e[tag=Selection] add rngShield
execute as @e[tag=Shield,tag=SelRRNG] run tag @e[tag=Selection] remove rngObshield
#    obshield selected
execute as @e[tag=Obshield,tag=SelRRNG] run tag @e[tag=Selection] add rngObshield
execute as @e[tag=Obshield,tag=SelRRNG] run tag @e[tag=Selection] remove rngShield


### 1 lightning type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightingRNG"]}
tag @e[tag=RLightningRNG,limit=1,sort=random] add SelRRNG
#    hurricane shield selected
execute as @e[tag=Hurricane,tag=SelRRNG] run tag @e[tag=Selection] add rngHur
execute as @e[tag=Hurricane,tag=SelRRNG] run tag @e[tag=Selection] remove rngThun
#    thunderbolt selected
execute as @e[tag=Thunderbolt,tag=SelRRNG] run tag @e[tag=Selection] add rngThun
execute as @e[tag=Thunderbolt,tag=SelRRNG] run tag @e[tag=Selection] remove rngHur


### 1 projectile type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Fireball","RProjecRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Nova","RProjecRNG"]}
tag @e[tag=RProjecRNG,limit=1,sort=random] add SelRRNG
#    normal shield selected
execute as @e[tag=Fireball,tag=SelRRNG] run tag @e[tag=Selection] add rngFireball
execute as @e[tag=Fireball,tag=SelRRNG] run tag @e[tag=Selection] remove rngNova
#    obshield selected
execute as @e[tag=Nova,tag=SelRRNG] run tag @e[tag=Selection] add rngNova
execute as @e[tag=Nova,tag=SelRRNG] run tag @e[tag=Selection] remove rngFireball


### 5/10 non-lightning missiles
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","TomaTwo","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Auxiliary","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Blade","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Catapult","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Slasher","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Guard","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Lifter","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Nullifier","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Citadel","RMisRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Warhead","RMisRNG"]}

tag @e[tag=RMisRNG,tag=!SelRRNG,limit=5,sort=random] add SelRRNG

execute as @e[tag=SelRRNG,tag=TomaTwo] run tag @e[tag=Selection] remove rngToma
execute as @e[tag=SelRRNG,tag=Auxiliary] run tag @e[tag=Selection] remove rngAux
execute as @e[tag=SelRRNG,tag=Blade] run tag @e[tag=Selection] remove rngBlade
execute as @e[tag=SelRRNG,tag=Catapult] run tag @e[tag=Selection] remove rngCata
execute as @e[tag=SelRRNG,tag=Slasher] run tag @e[tag=Selection] remove rngSlash
execute as @e[tag=SelRRNG,tag=Guard] run tag @e[tag=Selection] remove rngEguard
execute as @e[tag=SelRRNG,tag=Lifter] run tag @e[tag=Selection] remove rngLift
execute as @e[tag=SelRRNG,tag=Nullifier] run tag @e[tag=Selection] remove rngNull
execute as @e[tag=SelRRNG,tag=Citadel] run tag @e[tag=Selection] remove rngCitadel
execute as @e[tag=SelRRNG,tag=Warhead] run tag @e[tag=Selection] remove rngWar


kill @e[tag=RankedRNG]