################################################
## PLACESTRUCTURE: How each missile structure ##
## is actually placed using /place template   ##
################################################

#Auxiliary
execute if entity @s[tag=BlueAux] run place template auxiliary_blue
execute if entity @s[tag=YellowAux] run place template auxiliary_yellow

#TomaTwo
execute if entity @s[tag=BlueToma] run place template tomatwo_blue
execute if entity @s[tag=YellowToma] run place template tomatwo_yellow

#Chronullifier
execute if entity @s[tag=BlueNull] run place template chronullifier_blue
execute if entity @s[tag=YellowNull] run place template chronullifier_yellow

#Warhead
execute if entity @s[tag=BlueWar] run place template warhead_blue
execute if entity @s[tag=YellowWar] run place template warhead_yellow

#Thunderbolt
execute if entity @s[tag=BlueBolt] run place template thunderbolt_blue
execute if entity @s[tag=YellowBolt] run place template thunderbolt_yellow

#Hurricane
execute if entity @s[tag=BlueHur] run place template hurricane_blue
execute if entity @s[tag=YellowHur] run place template hurricane_yellow

#Elder Guardian
execute if entity @s[tag=BlueGuard] run place template elderguard_blue
execute if entity @s[tag=YellowGuard] run place template elderguard_yellow

#A.N.T.
execute if entity @s[tag=BlueAnt] run place template ant_blue
execute if entity @s[tag=YellowAnt] run place template ant_yellow

#Blade
execute if entity @s[tag=BlueBlade] run place template blade_blue
execute if entity @s[tag=YellowBlade] run place template blade_yellow

#Rifter
execute if entity @s[tag=BlueRift] run place template rifter_blue
execute if entity @s[tag=YellowRift] run place template rifter_yellow

#Juggerbuster
execute if entity @s[tag=BlueJug] run place template juggerbuster_blue
execute if entity @s[tag=YellowJug] run place template juggerbuster_yellow

#Slasher
execute if entity @s[tag=BlueSlash] run place template slasher_blue
execute if entity @s[tag=YellowSlash] run place template slasher_yellow

#Catapult
execute if entity @s[tag=BlueCata] run place template catapult_blue
execute if entity @s[tag=YellowCata] run place template catapult_yellow

#Citadel
execute if entity @s[tag=BlueCitadel] run place template citadel_blue
execute if entity @s[tag=YellowCitadel] run place template citadel_yellow

#Gemini
execute if entity @s[tag=BlueGemi] run place template gemini_blue
execute if entity @s[tag=YellowGemi] run place template gemini_yellow

#Lifter
execute if entity @s[tag=BlueLift] run place template lifter_blue
execute if entity @s[tag=YellowLift] run place template lifter_yellow

#Hypersonic
execute if entity @s[tag=BlueHyper] run place template hypersonic_blue
execute if entity @s[tag=YellowHyper] run place template hypersonic_yellow

#Bullet
execute if entity @s[tag=BlueBull] run place template bullet_blue
execute if entity @s[tag=YellowBull] run place template bullet_yellow

#Duplex
execute if entity @s[tag=BlueDuplex] run place template duplex_blue
execute if entity @s[tag=YellowDuplex] run place template duplex_yellow

#Broadsword
execute if entity @s[tag=BlueBroad] run place template broadsword_blue
execute if entity @s[tag=YellowBroad] run place template broadsword_yellow

##CHASE MODE - Missile color conversion
execute if entity @e[type=armor_stand,tag=Selection,tag=chaseEnabled] at @s positioned ~ ~2 ~ run function rr_chase:game/whitemissile

##Add 1 to appropriate missile count
execute if entity @s[tag=bluemissile] run scoreboard players add @e[type=armor_stand,tag=Selection] bMissileCount 1
execute if entity @s[tag=yellowmissile] run scoreboard players add @e[type=armor_stand,tag=Selection] yMissileCount 1