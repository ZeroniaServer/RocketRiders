################################################
## PLACESTRUCTURE: How each missile structure ##
## is actually placed using /place template   ##
################################################

#Auxiliary
execute if entity @s[tag=BlueAux] run place template game:missile/south/blue/auxiliary ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowAux] run place template game:missile/north/yellow/auxiliary ~ ~ ~ none none 1 0 strict

#TomaTwo
execute if entity @s[tag=BlueToma] run place template game:missile/south/blue/tomatwo ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowToma] run place template game:missile/north/yellow/tomatwo ~ ~ ~ none none 1 0 strict

#Chronullifier
execute if entity @s[tag=BlueNull] run place template game:missile/south/blue/chronullifier ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowNull] run place template game:missile/north/yellow/chronullifier ~ ~ ~ none none 1 0 strict

#Warhead
execute if entity @s[tag=BlueWar] run place template game:missile/south/blue/warhead ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowWar] run place template game:missile/north/yellow/warhead ~ ~ ~ none none 1 0 strict

#Thunderbolt
execute if entity @s[tag=BlueBolt] run place template game:missile/south/blue/thunderbolt ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBolt] run place template game:missile/north/yellow/thunderbolt ~ ~ ~ none none 1 0 strict

#Hurricane
execute if entity @s[tag=BlueHur] run place template game:missile/south/blue/hurricane ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowHur] run place template game:missile/north/yellow/hurricane ~ ~ ~ none none 1 0 strict

#Elder Guardian
execute if entity @s[tag=BlueGuard] run place template game:missile/south/blue/elder_guardian ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowGuard] run place template game:missile/north/yellow/elder_guardian ~ ~ ~ none none 1 0 strict

#A.N.T.
execute if entity @s[tag=BlueAnt] run place template game:missile/south/blue/ant ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowAnt] run place template game:missile/north/yellow/ant ~ ~ ~ none none 1 0 strict

#Blade
execute if entity @s[tag=BlueBlade] run place template game:missile/south/blue/blade ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBlade] run place template game:missile/north/yellow/blade ~ ~ ~ none none 1 0 strict

#Rifter
execute if entity @s[tag=BlueRift] run place template game:missile/south/blue/rifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowRift] run place template game:missile/north/yellow/rifter ~ ~ ~ none none 1 0 strict

#Juggerbuster
execute if entity @s[tag=BlueJug] run place template game:missile/south/blue/juggerbuster ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowJug] run place template game:missile/north/yellow/juggerbuster ~ ~ ~ none none 1 0 strict

#Slasher
execute if entity @s[tag=BlueSlash] run place template game:missile/south/blue/slasher ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowSlash] run place template game:missile/north/yellow/slasher ~ ~ ~ none none 1 0 strict

#Catapult
execute if entity @s[tag=BlueCata] run place template game:missile/south/blue/catapult ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowCata] run place template game:missile/north/yellow/catapult ~ ~ ~ none none 1 0 strict

#Citadel
execute if entity @s[tag=BlueCitadel] run place template game:missile/south/blue/citadel ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowCitadel] run place template game:missile/north/yellow/citadel ~ ~ ~ none none 1 0 strict

#Gemini
execute if entity @s[tag=BlueGemi] run place template game:missile/south/blue/gemini ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowGemi] run place template game:missile/north/yellow/gemini ~ ~ ~ none none 1 0 strict

#Lifter
execute if entity @s[tag=BlueLift] run place template game:missile/south/blue/lifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowLift] run place template game:missile/north/yellow/lifter ~ ~ ~ none none 1 0 strict

#Hypersonic
execute if entity @s[tag=BlueHyper] run place template game:missile/south/blue/hypersonic ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowHyper] run place template game:missile/north/yellow/hypersonic ~ ~ ~ none none 1 0 strict

#Bullet
execute if entity @s[tag=BlueBull] run place template game:missile/south/blue/bullet ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBull] run place template game:missile/north/yellow/bullet ~ ~ ~ none none 1 0 strict

#Duplex
execute if entity @s[tag=BlueDuplex] run place template game:missile/south/blue/duplex ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowDuplex] run place template game:missile/north/yellow/duplex ~ ~ ~ none none 1 0 strict

#Broadsword
execute if entity @s[tag=BlueBroad] run place template game:missile/south/blue/broadsword ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBroad] run place template game:missile/north/yellow/broadsword ~ ~ ~ none none 1 0 strict

##CHASE MODE - Missile color conversion
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] at @s positioned ~ ~2 ~ run function rr_chase:game/whitemissile

function items:prevention/replacepistons