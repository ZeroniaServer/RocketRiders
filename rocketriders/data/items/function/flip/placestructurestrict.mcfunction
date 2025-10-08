##Individual structure placement (flipped version)

#Auxiliary
execute if entity @s[tag=BlueAux] run place template game:auxiliary_yellow ~2 ~ ~10 180 none 1 0 strict
execute if entity @s[tag=YellowAux] run place template game:auxiliary_blue ~2 ~ ~10 180 none 1 0 strict

#TomaTwo
execute if entity @s[tag=BlueToma] run place template game:tomatwo_yellow ~1 ~ ~8 180 none 1 0 strict
execute if entity @s[tag=YellowToma] run place template game:tomatwo_blue ~1 ~ ~8 180 none 1 0 strict

#Chronullifier
execute if entity @s[tag=BlueNull] run place template game:chronullifier_yellow ~1 ~ ~8 180 none 1 0 strict
execute if entity @s[tag=YellowNull] run place template game:chronullifier_blue ~1 ~ ~8 180 none 1 0 strict

#Warhead
execute if entity @s[tag=BlueWar] run place template game:warhead_yellow ~2 ~ ~10 180 none 1 0 strict
execute if entity @s[tag=YellowWar] run place template game:warhead_blue ~2 ~ ~10 180 none 1 0 strict

#Thunderbolt
execute if entity @s[tag=BlueBolt] run place template game:thunderbolt_yellow ~1 ~ ~10 180 none 1 0 strict
execute if entity @s[tag=YellowBolt] run place template game:thunderbolt_blue ~1 ~ ~10 180 none 1 0 strict

#Hurricane
execute if entity @s[tag=BlueHur] run place template game:hurricane_yellow ~2 ~ ~8 180 none 1 0 strict
execute if entity @s[tag=YellowHur] run place template game:hurricane_blue ~2 ~ ~8 180 none 1 0 strict

#Elder Guardian
execute if entity @s[tag=BlueGuard] run place template game:elderguard_yellow ~2 ~ ~10 180 none 1 0 strict
execute if entity @s[tag=YellowGuard] run place template game:elderguard_blue ~2 ~ ~10 180 none 1 0 strict

#A.N.T.
execute if entity @s[tag=BlueAnt] run place template game:ant_yellow ~ ~ ~6 180 none 1 0 strict
execute if entity @s[tag=YellowAnt] run place template game:ant_blue ~ ~ ~6 180 none 1 0 strict

#Blade
execute if entity @s[tag=BlueBlade] run place template game:blade_yellow ~2 ~ ~14 180 none 1 0 strict
execute if entity @s[tag=YellowBlade] run place template game:blade_blue ~2 ~ ~14 180 none 1 0 strict

#Rifter
execute if entity @s[tag=BlueRift] run place template game:rifter_yellow ~2 ~ ~13 180 none 1 0 strict
execute if entity @s[tag=YellowRift] run place template game:rifter_blue ~2 ~ ~13 180 none 1 0 strict

#Juggerbuster
execute if entity @s[tag=BlueJug] run place template game:juggerbuster_yellow ~2 ~ ~16 180 none 1 0 strict
execute if entity @s[tag=YellowJug] run place template game:juggerbuster_blue ~2 ~ ~16 180 none 1 0 strict

#Slasher
execute if entity @s[tag=BlueSlash] run place template game:slasher_yellow ~2 ~ ~12 180 none 1 0 strict
execute if entity @s[tag=YellowSlash] run place template game:slasher_blue ~2 ~ ~12 180 none 1 0 strict

#Catapult
execute if entity @s[tag=BlueCata] run place template game:catapult_yellow ~2 ~ ~11 180 none 1 0 strict
execute if entity @s[tag=YellowCata] run place template game:catapult_blue ~2 ~ ~11 180 none 1 0 strict

#Citadel
execute if entity @s[tag=BlueCitadel] run place template game:citadel_yellow ~2 ~ ~9 180 none 1 0 strict
execute if entity @s[tag=YellowCitadel] run place template game:citadel_blue ~2 ~ ~9 180 none 1 0 strict

#Gemini
execute if entity @s[tag=BlueGemi] run place template game:gemini_yellow ~2 ~ ~9 180 none 1 0 strict
execute if entity @s[tag=YellowGemi] run place template game:gemini_blue ~2 ~ ~9 180 none 1 0 strict

#Lifter
execute if entity @s[tag=BlueLift] run place template game:lifter_yellow ~2 ~ ~6 180 none 1 0 strict
execute if entity @s[tag=YellowLift] run place template game:lifter_blue ~2 ~ ~6 180 none 1 0 strict

#Hypersonic
execute if entity @s[tag=BlueHyper] run place template game:hypersonic_yellow ~2 ~ ~7 180 none 1 0 strict
execute if entity @s[tag=YellowHyper] run place template game:hypersonic_blue ~2 ~ ~7 180 none 1 0 strict

#Bullet
execute if entity @s[tag=BlueBull] run place template game:bullet_yellow ~2 ~ ~12 180 none 1 0 strict
execute if entity @s[tag=YellowBull] run place template game:bullet_blue ~2 ~ ~12 180 none 1 0 strict

#Duplex
execute if entity @s[tag=BlueDuplex] run place template game:duplex_yellow ~2 ~ ~17 180 none 1 0 strict
execute if entity @s[tag=YellowDuplex] run place template game:duplex_blue ~2 ~ ~17 180 none 1 0 strict

#Broadsword
execute if entity @s[tag=BlueBroad] run place template game:broadsword_yellow ~2 ~ ~11 180 none 1 0 strict
execute if entity @s[tag=YellowBroad] run place template game:broadsword_blue ~2 ~ ~11 180 none 1 0 strict

##CHASE MODE - Missile color conversion
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] at @s positioned ~ ~2 ~ run function rr_chase:game/whitemissile

function items:prevention/replacepistons