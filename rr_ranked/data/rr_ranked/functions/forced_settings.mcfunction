#New dawn arena preset
scoreboard players set @s TopDeco 1
scoreboard players set @s MiddleDeco 1
scoreboard players set @s TopCorner 1
scoreboard players set @s BottomDeco 1

tag @s add rngMissile
tag @s add rngNormal
tag @s add rngLightning
tag @s add rngUtil
tag @s add rngHeavy

tag @s add rngToma
tag @s add rngAux
tag @s add rngBlade
tag @s add rngEguard
tag @s add rngSlash
tag @s add rngWar
tag @s add rngLift
tag @s add rngThun
tag @s add rngHur
tag @s add rngNull
tag @s add rngCata
tag @s add rngCitadel

#Util
tag @s add rngArrows
tag @s add rngFireball
tag @s add rngShield
tag @s add rngObshield
tag @s add rngVortex
tag @s add rngSplash
tag @s add rngNova
tag @s add rngCanopy

#Deactivated items
tag @s remove rngAnt
tag @s remove rngGemi
tag @s remove rngJbuster
tag @s remove rngRift

#Item giving time
scoreboard players set @s MaxItemSec 15

#Disable modifiers
tag @s remove Molerat
tag @s remove Instamine
tag @s remove NoFall
tag @s remove Explosive
tag @s remove Residers
tag @s remove Sonar
tag @s remove SurpriseEgg
tag @s remove Minute

#Add needed settings and modifiers
tag @s add WindDown
tag @s add doPrevention
tag @s add doHotbarLimit
scoreboard players set @s doStacking 0



####################################################
#The lines right here make it so
#11 items are selected. Ty Llewv for the suggestion.
####################################################


### 1 shield type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Shield","RShieldRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Obshield","RShieldRNG"]}
tag @e[tag=RShieldRNG,limit=1,sort=random] add SelRRNG
#    normal shield selected
execute if entity @e[tag=Shield,tag=SelRRNG] run tag @s add rngShield
execute if entity @e[tag=Shield,tag=SelRRNG] run tag @s remove rngObshield
#    obshield selected
execute if entity @e[tag=Obshield,tag=SelRRNG] run tag @s add rngObshield
execute if entity @e[tag=Obshield,tag=SelRRNG] run tag @s remove rngShield


### 1 lightning type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightingRNG"]}
tag @e[tag=RLightningRNG,limit=1,sort=random] add SelRRNG
#    hurricane shield selected
execute if entity @e[tag=Hurricane,tag=SelRRNG] run tag @s add rngHur
execute if entity @e[tag=Hurricane,tag=SelRRNG] run tag @s remove rngThun
#    thunderbolt selected
execute if entity @e[tag=Thunderbolt,tag=SelRRNG] run tag @s add rngThun
execute if entity @e[tag=Thunderbolt,tag=SelRRNG] run tag @s remove rngHur


### 1 projectile type.
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Fireball","RProjecRNG"]}
summon area_effect_cloud ~ ~ ~ {Tags:["RankedRNG","Nova","RProjecRNG"]}
tag @e[tag=RProjecRNG,limit=1,sort=random] add SelRRNG
#    normal shield selected
execute if entity @e[tag=Fireball,tag=SelRRNG] run tag @s add rngFireball
execute if entity @e[tag=Fireball,tag=SelRRNG] run tag @s remove rngNova
#    obshield selected
execute if entity @e[tag=Nova,tag=SelRRNG] run tag @s add rngNova
execute if entity @e[tag=Nova,tag=SelRRNG] run tag @s remove rngFireball


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

execute if entity @e[tag=SelRRNG,tag=TomaTwo] run tag @s remove rngToma
execute if entity @e[tag=SelRRNG,tag=Auxiliary] run tag @s remove rngAux
execute if entity @e[tag=SelRRNG,tag=Blade] run tag @s remove rngBlade
execute if entity @e[tag=SelRRNG,tag=Catapult] run tag @s remove rngCata
execute if entity @e[tag=SelRRNG,tag=Slasher] run tag @s remove rngSlash
execute if entity @e[tag=SelRRNG,tag=Guard] run tag @s remove rngEguard
execute if entity @e[tag=SelRRNG,tag=Lifter] run tag @s remove rngLift
execute if entity @e[tag=SelRRNG,tag=Nullifier] run tag @s remove rngNull
execute if entity @e[tag=SelRRNG,tag=Citadel] run tag @s remove rngCitadel
execute if entity @e[tag=SelRRNG,tag=Warhead] run tag @s remove rngWar


kill @e[tag=RankedRNG]