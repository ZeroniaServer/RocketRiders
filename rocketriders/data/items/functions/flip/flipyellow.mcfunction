##Flips Yellow missiles to "Blue" missiles (same position as Blue, but Yellow structure)
tag @s add bluemissile
tag @s remove yellowmissile

#Auxiliary
execute if entity @s[tag=YellowAux] run tag @s add BlueAux
execute if entity @s[tag=YellowAux] run tag @s remove YellowAux

#TomaTwo
execute if entity @s[tag=YellowToma] run tag @s add BlueToma
execute if entity @s[tag=YellowToma] run tag @s remove YellowToma

#Chronullifier
execute if entity @s[tag=YellowNull] run tag @s add BlueNull
execute if entity @s[tag=YellowNull] run tag @s remove YellowNull

#Warhead
execute if entity @s[tag=YellowWar] run tag @s add BlueWar
execute if entity @s[tag=YellowWar] run tag @s remove YellowWar

#Thunderbolt
execute if entity @s[tag=YellowBolt] run tag @s add BlueBolt
execute if entity @s[tag=YellowBolt] run tag @s remove YellowBolt

#Hurricane
execute if entity @s[tag=YellowHur] run tag @s add BlueHur
execute if entity @s[tag=YellowHur] run tag @s remove YellowHur

#Elder Guardian
execute if entity @s[tag=YellowGuard] run tag @s add BlueGuard
execute if entity @s[tag=YellowGuard] run tag @s remove YellowGuard

#A.N.T.
execute if entity @s[tag=YellowAnt] run tag @s add BlueAnt
execute if entity @s[tag=YellowAnt] run tag @s remove YellowAnt

#Blade
execute if entity @s[tag=YellowBlade] run tag @s add BlueBlade
execute if entity @s[tag=YellowBlade] run tag @s remove YellowBlade

#Rifter
execute if entity @s[tag=YellowRift] run tag @s add BlueRift
execute if entity @s[tag=YellowRift] run tag @s remove YellowRift

#Juggerbuster
execute if entity @s[tag=YellowJug] run tag @s add BlueJug
execute if entity @s[tag=YellowJug] run tag @s remove YellowJug

#Slasher
execute if entity @s[tag=YellowSlash] run tag @s add BlueSlash
execute if entity @s[tag=YellowSlash] run tag @s remove YellowSlash

#Catapult
execute if entity @s[tag=YellowCata] run tag @s add BlueCata
execute if entity @s[tag=YellowCata] run tag @s remove YellowCata

#Citadel
execute if entity @s[tag=YellowCitadel] run tag @s add BlueCitadel
execute if entity @s[tag=YellowCitadel] run tag @s remove YellowCitadel

#Gemini
execute if entity @s[tag=YellowGemi] run tag @s add BlueGemi
execute if entity @s[tag=YellowGemi] run tag @s remove YellowGemi

#Lifter
execute if entity @s[tag=YellowLift] run tag @s add BlueLift
execute if entity @s[tag=YellowLift] run tag @s remove YellowLift

#Hypersonic
execute if entity @s[tag=YellowHyper] run tag @s add BlueHyper
execute if entity @s[tag=YellowHyper] run tag @s remove YellowHyper

#Bullet
execute if entity @s[tag=YellowBull] run tag @s add BlueBull
execute if entity @s[tag=YellowBull] run tag @s remove YellowBull

#Duplex
execute if entity @s[tag=YellowDuplex] run tag @s add BlueDuplex
execute if entity @s[tag=YellowDuplex] run tag @s remove YellowDuplex

#Broadsword
execute if entity @s[tag=YellowBroad] run tag @s add BlueBroad
execute if entity @s[tag=YellowBroad] run tag @s remove YellowBroad