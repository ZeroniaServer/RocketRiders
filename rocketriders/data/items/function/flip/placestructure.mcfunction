##Individual structure placement (flipped version)

#Auxiliary
execute if entity @s[tag=BlueAux] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/auxiliary
execute if entity @s[tag=BlueAux] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/auxiliary
execute if entity @s[tag=YellowAux] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/auxiliary
execute if entity @s[tag=YellowAux] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/auxiliary
execute if entity @s[tag=YellowAux] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/auxiliary

#TomaTwo
execute if entity @s[tag=BlueToma] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/tomatwo
execute if entity @s[tag=BlueToma] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/tomatwo
execute if entity @s[tag=YellowToma] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/tomatwo
execute if entity @s[tag=YellowToma] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/tomatwo
execute if entity @s[tag=YellowToma] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/tomatwo

#Chronullifier
execute if entity @s[tag=BlueNull] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/chronullifier
execute if entity @s[tag=BlueNull] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/chronullifier
execute if entity @s[tag=YellowNull] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/chronullifier
execute if entity @s[tag=YellowNull] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/chronullifier
execute if entity @s[tag=YellowNull] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/chronullifier

#Warhead
execute if entity @s[tag=BlueWar] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/warhead
execute if entity @s[tag=BlueWar] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/warhead
execute if entity @s[tag=YellowWar] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/warhead
execute if entity @s[tag=YellowWar] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/warhead
execute if entity @s[tag=YellowWar] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/warhead

#Thunderbolt
execute if entity @s[tag=BlueBolt] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/thunderbolt
execute if entity @s[tag=BlueBolt] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/thunderbolt
execute if entity @s[tag=YellowBolt] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/thunderbolt
execute if entity @s[tag=YellowBolt] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/thunderbolt
execute if entity @s[tag=YellowBolt] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/thunderbolt

#Hurricane
execute if entity @s[tag=BlueHur] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/hurricane
execute if entity @s[tag=BlueHur] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/hurricane
execute if entity @s[tag=YellowHur] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/hurricane
execute if entity @s[tag=YellowHur] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/hurricane
execute if entity @s[tag=YellowHur] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/hurricane

#Elder Guardian
execute if entity @s[tag=BlueGuard] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/elder_guardian
execute if entity @s[tag=BlueGuard] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/elder_guardian
execute if entity @s[tag=YellowGuard] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/elder_guardian
execute if entity @s[tag=YellowGuard] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/elder_guardian
execute if entity @s[tag=YellowGuard] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/elder_guardian

#A.N.T.
execute if entity @s[tag=BlueAnt] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/ant
execute if entity @s[tag=BlueAnt] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/ant
execute if entity @s[tag=YellowAnt] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/ant
execute if entity @s[tag=YellowAnt] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/ant
execute if entity @s[tag=YellowAnt] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/ant

#Blade
execute if entity @s[tag=BlueBlade] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/blade
execute if entity @s[tag=BlueBlade] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/blade
execute if entity @s[tag=YellowBlade] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/blade
execute if entity @s[tag=YellowBlade] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/blade
execute if entity @s[tag=YellowBlade] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/blade

#Rifter
execute if entity @s[tag=BlueRift] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/rifter
execute if entity @s[tag=BlueRift] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/rifter
execute if entity @s[tag=YellowRift] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/rifter
execute if entity @s[tag=YellowRift] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/rifter
execute if entity @s[tag=YellowRift] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/rifter

#Juggerbuster
execute if entity @s[tag=BlueJug] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/juggerbuster
execute if entity @s[tag=BlueJug] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/juggerbuster
execute if entity @s[tag=YellowJug] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/juggerbuster
execute if entity @s[tag=YellowJug] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/juggerbuster
execute if entity @s[tag=YellowJug] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/juggerbuster

#Slasher
execute if entity @s[tag=BlueSlash] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/slasher
execute if entity @s[tag=BlueSlash] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/slasher
execute if entity @s[tag=YellowSlash] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/slasher
execute if entity @s[tag=YellowSlash] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/slasher
execute if entity @s[tag=YellowSlash] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/slasher

#Catapult
execute if entity @s[tag=BlueCata] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/catapult
execute if entity @s[tag=BlueCata] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/catapult
execute if entity @s[tag=YellowCata] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/catapult
execute if entity @s[tag=YellowCata] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/catapult
execute if entity @s[tag=YellowCata] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/catapult

#Citadel
execute if entity @s[tag=BlueCitadel] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/citadel
execute if entity @s[tag=BlueCitadel] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/citadel
execute if entity @s[tag=YellowCitadel] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/citadel
execute if entity @s[tag=YellowCitadel] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/citadel
execute if entity @s[tag=YellowCitadel] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/citadel

#Gemini
execute if entity @s[tag=BlueGemi] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/gemini
execute if entity @s[tag=BlueGemi] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/gemini
execute if entity @s[tag=YellowGemi] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/gemini
execute if entity @s[tag=YellowGemi] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/gemini
execute if entity @s[tag=YellowGemi] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/gemini

#Lifter
execute if entity @s[tag=BlueLift] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/lifter
execute if entity @s[tag=BlueLift] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/lifter
execute if entity @s[tag=YellowLift] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/lifter
execute if entity @s[tag=YellowLift] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/lifter
execute if entity @s[tag=YellowLift] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/lifter

#Hypersonic
execute if entity @s[tag=BlueHyper] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/hypersonic
execute if entity @s[tag=BlueHyper] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/hypersonic
execute if entity @s[tag=YellowHyper] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/hypersonic
execute if entity @s[tag=YellowHyper] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/hypersonic
execute if entity @s[tag=YellowHyper] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/hypersonic

#Bullet
execute if entity @s[tag=BlueBull] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/bullet
execute if entity @s[tag=BlueBull] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/bullet
execute if entity @s[tag=YellowBull] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/bullet
execute if entity @s[tag=YellowBull] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/bullet
execute if entity @s[tag=YellowBull] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/bullet

#Duplex
execute if entity @s[tag=BlueDuplex] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/duplex
execute if entity @s[tag=BlueDuplex] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/duplex
execute if entity @s[tag=YellowDuplex] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/duplex
execute if entity @s[tag=YellowDuplex] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/duplex
execute if entity @s[tag=YellowDuplex] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/duplex

#Broadsword
execute if entity @s[tag=BlueBroad] unless predicate game:gamemode_components/neutral_items run place template game:missile/south/yellow/broadsword
execute if entity @s[tag=BlueBroad] if predicate game:gamemode_components/neutral_items run place template game:missile/south/white/broadsword
execute if entity @s[tag=YellowBroad] unless predicate game:gamemode_components/neutral_items unless predicate game:gamemode_components/red_for_blue run place template game:missile/north/blue/broadsword
execute if entity @s[tag=YellowBroad] unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue run place template game:missile/north/red/broadsword
execute if entity @s[tag=YellowBroad] if predicate game:gamemode_components/neutral_items run place template game:missile/north/white/broadsword
