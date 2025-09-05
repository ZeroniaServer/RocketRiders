################################################
## PLACESTRUCTURE: How each missile structure ##
## is actually placed using /place template   ##
################################################

#Auxiliary
execute if entity @s[tag=BlueAux] run place template game:auxiliary_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowAux] run place template game:auxiliary_yellow ~ ~ ~ none none 1 0 strict

#TomaTwo
execute if entity @s[tag=BlueToma] run place template game:tomatwo_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowToma] run place template game:tomatwo_yellow ~ ~ ~ none none 1 0 strict

#Chronullifier
execute if entity @s[tag=BlueNull] run place template game:chronullifier_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowNull] run place template game:chronullifier_yellow ~ ~ ~ none none 1 0 strict

#Warhead
execute if entity @s[tag=BlueWar] run place template game:warhead_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowWar] run place template game:warhead_yellow ~ ~ ~ none none 1 0 strict

#Thunderbolt
execute if entity @s[tag=BlueBolt] run place template game:thunderbolt_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBolt] run place template game:thunderbolt_yellow ~ ~ ~ none none 1 0 strict

#Hurricane
execute if entity @s[tag=BlueHur] run place template game:hurricane_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowHur] run place template game:hurricane_yellow ~ ~ ~ none none 1 0 strict

#Elder Guardian
execute if entity @s[tag=BlueGuard] run place template game:elderguard_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowGuard] run place template game:elderguard_yellow ~ ~ ~ none none 1 0 strict

#A.N.T.
execute if entity @s[tag=BlueAnt] run place template game:ant_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowAnt] run place template game:ant_yellow ~ ~ ~ none none 1 0 strict

#Blade
execute if entity @s[tag=BlueBlade] run place template game:blade_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBlade] run place template game:blade_yellow ~ ~ ~ none none 1 0 strict

#Rifter
execute if entity @s[tag=BlueRift] run place template game:rifter_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowRift] run place template game:rifter_yellow ~ ~ ~ none none 1 0 strict

#Juggerbuster
execute if entity @s[tag=BlueJug] run place template game:juggerbuster_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowJug] run place template game:juggerbuster_yellow ~ ~ ~ none none 1 0 strict

#Slasher
execute if entity @s[tag=BlueSlash] run place template game:slasher_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowSlash] run place template game:slasher_yellow ~ ~ ~ none none 1 0 strict

#Catapult
execute if entity @s[tag=BlueCata] run place template game:catapult_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowCata] run place template game:catapult_yellow ~ ~ ~ none none 1 0 strict

#Citadel
execute if entity @s[tag=BlueCitadel] run place template game:citadel_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowCitadel] run place template game:citadel_yellow ~ ~ ~ none none 1 0 strict

#Gemini
execute if entity @s[tag=BlueGemi] run place template game:gemini_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowGemi] run place template game:gemini_yellow ~ ~ ~ none none 1 0 strict

#Lifter
execute if entity @s[tag=BlueLift] run place template game:lifter_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowLift] run place template game:lifter_yellow ~ ~ ~ none none 1 0 strict

#Hypersonic
execute if entity @s[tag=BlueHyper] run place template game:hypersonic_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowHyper] run place template game:hypersonic_yellow ~ ~ ~ none none 1 0 strict

#Bullet
execute if entity @s[tag=BlueBull] run place template game:bullet_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBull] run place template game:bullet_yellow ~ ~ ~ none none 1 0 strict

#Duplex
execute if entity @s[tag=BlueDuplex] run place template game:duplex_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowDuplex] run place template game:duplex_yellow ~ ~ ~ none none 1 0 strict

#Broadsword
execute if entity @s[tag=BlueBroad] run place template game:broadsword_blue ~ ~ ~ none none 1 0 strict
execute if entity @s[tag=YellowBroad] run place template game:broadsword_yellow ~ ~ ~ none none 1 0 strict

##CHASE MODE - Missile color conversion
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] at @s positioned ~ ~2 ~ run function rr_chase:game/whitemissile

##Add 1 to appropriate missile count
execute if entity @s[tag=bluemissile] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] bMissileCount 1
execute if entity @s[tag=yellowmissile] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] yMissileCount 1

function items:prevention/replacepistons