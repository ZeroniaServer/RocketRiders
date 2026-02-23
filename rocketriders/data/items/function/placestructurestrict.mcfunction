################################################
## PLACESTRUCTURE: How each missile structure ##
## is actually placed using /place template   ##
################################################

#Auxiliary
execute if entity @s[tag=BlueAux] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/auxiliary ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueAux] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/auxiliary ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueAux] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/auxiliary ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowAux] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/auxiliary ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowAux] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/auxiliary ~ ~ ~ none none 1 0 strict

#TomaTwo
execute if entity @s[tag=BlueToma] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/tomatwo ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueToma] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/tomatwo ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueToma] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/tomatwo ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowToma] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/tomatwo ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowToma] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/tomatwo ~ ~ ~ none none 1 0 strict

#Chronullifier
execute if entity @s[tag=BlueNull] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/chronullifier ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueNull] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/chronullifier ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueNull] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/chronullifier ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowNull] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/chronullifier ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowNull] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/chronullifier ~ ~ ~ none none 1 0 strict

#Warhead
execute if entity @s[tag=BlueWar] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/warhead ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueWar] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/warhead ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueWar] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/warhead ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowWar] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/warhead ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowWar] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/warhead ~ ~ ~ none none 1 0 strict

#Thunderbolt
execute if entity @s[tag=BlueBolt] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/thunderbolt ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueBolt] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/thunderbolt ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueBolt] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/thunderbolt ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBolt] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/thunderbolt ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBolt] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/thunderbolt ~ ~ ~ none none 1 0 strict

#Hurricane
execute if entity @s[tag=BlueHur] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/hurricane ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueHur] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/hurricane ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueHur] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/hurricane ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowHur] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/hurricane ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowHur] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/hurricane ~ ~ ~ none none 1 0 strict

#Elder Guardian
execute if entity @s[tag=BlueGuard] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/elder_guardian ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueGuard] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/elder_guardian ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueGuard] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/elder_guardian ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowGuard] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/elder_guardian ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowGuard] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/elder_guardian ~ ~ ~ none none 1 0 strict

#A.N.T.
execute if entity @s[tag=BlueAnt] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/ant ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueAnt] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/ant ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueAnt] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/ant ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowAnt] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/ant ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowAnt] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/ant ~ ~ ~ none none 1 0 strict

#Blade
execute if entity @s[tag=BlueBlade] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/blade ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueBlade] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/blade ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueBlade] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/blade ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBlade] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/blade ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBlade] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/blade ~ ~ ~ none none 1 0 strict

#Rifter
execute if entity @s[tag=BlueRift] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/rifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueRift] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/rifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueRift] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/rifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowRift] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/rifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowRift] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/rifter ~ ~ ~ none none 1 0 strict

#Juggerbuster
execute if entity @s[tag=BlueJug] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/juggerbuster ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueJug] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/juggerbuster ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueJug] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/juggerbuster ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowJug] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/juggerbuster ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowJug] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/juggerbuster ~ ~ ~ none none 1 0 strict

#Slasher
execute if entity @s[tag=BlueSlash] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/slasher ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueSlash] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/slasher ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueSlash] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/slasher ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowSlash] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/slasher ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowSlash] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/slasher ~ ~ ~ none none 1 0 strict

#Catapult
execute if entity @s[tag=BlueCata] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/catapult ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueCata] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/catapult ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueCata] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/catapult ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowCata] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/catapult ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowCata] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/catapult ~ ~ ~ none none 1 0 strict

#Citadel
execute if entity @s[tag=BlueCitadel] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/citadel ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueCitadel] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/citadel ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueCitadel] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/citadel ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowCitadel] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/citadel ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowCitadel] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/citadel ~ ~ ~ none none 1 0 strict

#Gemini
execute if entity @s[tag=BlueGemi] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/gemini ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueGemi] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/gemini ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueGemi] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/gemini ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowGemi] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/gemini ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowGemi] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/gemini ~ ~ ~ none none 1 0 strict

#Lifter
execute if entity @s[tag=BlueLift] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/lifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueLift] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/lifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueLift] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/lifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowLift] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/lifter ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowLift] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/lifter ~ ~ ~ none none 1 0 strict

#Hypersonic
execute if entity @s[tag=BlueHyper] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/hypersonic ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueHyper] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/hypersonic ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueHyper] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/hypersonic ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowHyper] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/hypersonic ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowHyper] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/hypersonic ~ ~ ~ none none 1 0 strict

#Bullet
execute if entity @s[tag=BlueBull] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/bullet ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueBull] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/bullet ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueBull] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/bullet ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBull] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/bullet ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBull] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/bullet ~ ~ ~ none none 1 0 strict

#Duplex
execute if entity @s[tag=BlueDuplex] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/duplex ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueDuplex] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/duplex ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueDuplex] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/duplex ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowDuplex] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/duplex ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowDuplex] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/duplex ~ ~ ~ none none 1 0 strict

#Broadsword
execute if entity @s[tag=BlueBroad] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/south/blue/broadsword ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueBroad] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/south/red/broadsword ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=BlueBroad] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/broadsword ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBroad] unless predicate game:gamemode_components/neutral_items run place template game:missile/north/yellow/broadsword ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBroad] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/broadsword ~ ~ ~ none none 1 0 strict

function items:prevention/replacepistons
