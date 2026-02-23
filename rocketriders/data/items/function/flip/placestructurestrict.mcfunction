##Individual structure placement (flipped version)

#Auxiliary
execute if entity @s[tag=BlueAux] run place template game:missile/north/yellow/auxiliary ~2 ~ ~10 180 none 1 0 strict
execute if entity @s[tag=YellowAux] run place template game:missile/south/blue/auxiliary ~2 ~ ~10 180 none 1 0 strict

#TomaTwo
execute if entity @s[tag=BlueToma] run place template game:missile/north/yellow/tomatwo ~1 ~ ~8 180 none 1 0 strict
execute if entity @s[tag=YellowToma] run place template game:missile/south/blue/tomatwo ~1 ~ ~8 180 none 1 0 strict

#Chronullifier
execute if entity @s[tag=BlueNull] run place template game:missile/north/yellow/chronullifier ~1 ~ ~8 180 none 1 0 strict
execute if entity @s[tag=YellowNull] run place template game:missile/south/blue/chronullifier ~1 ~ ~8 180 none 1 0 strict

#Warhead
execute if entity @s[tag=BlueWar] run place template game:missile/north/yellow/warhead ~2 ~ ~10 180 none 1 0 strict
execute if entity @s[tag=YellowWar] run place template game:missile/south/blue/warhead ~2 ~ ~10 180 none 1 0 strict

#Thunderbolt
execute if entity @s[tag=BlueBolt] run place template game:missile/north/yellow/thunderbolt ~1 ~ ~10 180 none 1 0 strict
execute if entity @s[tag=YellowBolt] run place template game:missile/south/blue/thunderbolt ~1 ~ ~10 180 none 1 0 strict

#Hurricane
execute if entity @s[tag=BlueHur] run place template game:missile/north/yellow/hurricane ~2 ~ ~8 180 none 1 0 strict
execute if entity @s[tag=YellowHur] run place template game:missile/south/blue/hurricane ~2 ~ ~8 180 none 1 0 strict

#Elder Guardian
execute if entity @s[tag=BlueGuard] run place template game:missile/north/yellow/elder_guardian ~2 ~ ~10 180 none 1 0 strict
execute if entity @s[tag=YellowGuard] run place template game:missile/south/blue/elder_guardian ~2 ~ ~10 180 none 1 0 strict

#A.N.T.
execute if entity @s[tag=BlueAnt] run place template game:missile/north/yellow/ant ~ ~ ~6 180 none 1 0 strict
execute if entity @s[tag=YellowAnt] run place template game:missile/south/blue/ant ~ ~ ~6 180 none 1 0 strict

#Blade
execute if entity @s[tag=BlueBlade] run place template game:missile/north/yellow/blade ~2 ~ ~14 180 none 1 0 strict
execute if entity @s[tag=YellowBlade] run place template game:missile/south/blue/blade ~2 ~ ~14 180 none 1 0 strict

#Rifter
execute if entity @s[tag=BlueRift] run place template game:missile/north/yellow/rifter ~2 ~ ~13 180 none 1 0 strict
execute if entity @s[tag=YellowRift] run place template game:missile/south/blue/rifter ~2 ~ ~13 180 none 1 0 strict

#Juggerbuster
execute if entity @s[tag=BlueJug] run place template game:missile/north/yellow/juggerbuster ~2 ~ ~16 180 none 1 0 strict
execute if entity @s[tag=YellowJug] run place template game:missile/south/blue/juggerbuster ~2 ~ ~16 180 none 1 0 strict

#Slasher
execute if entity @s[tag=BlueSlash] run place template game:missile/north/yellow/slasher ~2 ~ ~12 180 none 1 0 strict
execute if entity @s[tag=YellowSlash] run place template game:missile/south/blue/slasher ~2 ~ ~12 180 none 1 0 strict

#Catapult
execute if entity @s[tag=BlueCata] run place template game:missile/north/yellow/catapult ~2 ~ ~11 180 none 1 0 strict
execute if entity @s[tag=YellowCata] run place template game:missile/south/blue/catapult ~2 ~ ~11 180 none 1 0 strict

#Citadel
execute if entity @s[tag=BlueCitadel] run place template game:missile/north/yellow/citadel ~2 ~ ~9 180 none 1 0 strict
execute if entity @s[tag=YellowCitadel] run place template game:missile/south/blue/citadel ~2 ~ ~9 180 none 1 0 strict

#Gemini
execute if entity @s[tag=BlueGemi] run place template game:missile/north/yellow/gemini ~2 ~ ~9 180 none 1 0 strict
execute if entity @s[tag=YellowGemi] run place template game:missile/south/blue/gemini ~2 ~ ~9 180 none 1 0 strict

#Lifter
execute if entity @s[tag=BlueLift] run place template game:missile/north/yellow/lifter ~2 ~ ~6 180 none 1 0 strict
execute if entity @s[tag=YellowLift] run place template game:missile/south/blue/lifter ~2 ~ ~6 180 none 1 0 strict

#Hypersonic
execute if entity @s[tag=BlueHyper] run place template game:missile/north/yellow/hypersonic ~2 ~ ~7 180 none 1 0 strict
execute if entity @s[tag=YellowHyper] run place template game:missile/south/blue/hypersonic ~2 ~ ~7 180 none 1 0 strict

#Bullet
execute if entity @s[tag=BlueBull] run place template game:missile/north/yellow/bullet ~2 ~ ~12 180 none 1 0 strict
execute if entity @s[tag=YellowBull] run place template game:missile/south/blue/bullet ~2 ~ ~12 180 none 1 0 strict

#Duplex
execute if entity @s[tag=BlueDuplex] run place template game:missile/north/yellow/duplex ~2 ~ ~17 180 none 1 0 strict
execute if entity @s[tag=YellowDuplex] run place template game:missile/south/blue/duplex ~2 ~ ~17 180 none 1 0 strict

#Broadsword
execute if entity @s[tag=BlueBroad] run place template game:missile/north/yellow/broadsword ~2 ~ ~11 180 none 1 0 strict
execute if entity @s[tag=YellowBroad] run place template game:missile/south/blue/broadsword ~2 ~ ~11 180 none 1 0 strict

##CHASE MODE - Missile color conversion
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] at @s positioned ~ ~2 ~ run function rr_chase:game/whitemissile

function items:prevention/replacepistons