##Individual structure placement (flipped version)

#Auxiliary
execute if entity @s[tag=BlueAux] run place template auxiliary_yellow ~2 ~ ~10 180
execute if entity @s[tag=YellowAux] run place template auxiliary_blue ~2 ~ ~10 180

#TomaTwo
execute if entity @s[tag=BlueToma] run place template tomatwo_yellow ~1 ~ ~8 180
execute if entity @s[tag=YellowToma] run place template tomatwo_blue ~1 ~ ~8 180

#Chronullifier
execute if entity @s[tag=BlueNull] run place template chronullifier_yellow ~1 ~ ~8 180
execute if entity @s[tag=YellowNull] run place template chronullifier_blue ~1 ~ ~8 180

#Warhead
execute if entity @s[tag=BlueWar] run place template warhead_yellow ~2 ~ ~10 180
execute if entity @s[tag=YellowWar] run place template warhead_blue ~2 ~ ~10 180

#Thunderbolt
execute if entity @s[tag=BlueBolt] run place template thunderbolt_yellow ~1 ~ ~10 180
execute if entity @s[tag=YellowBolt] run place template thunderbolt_blue ~1 ~ ~10 180

#Hurricane
execute if entity @s[tag=BlueHur] run place template hurricane_yellow ~2 ~ ~8 180
execute if entity @s[tag=YellowHur] run place template hurricane_blue ~2 ~ ~8 180

#Elder Guardian
execute if entity @s[tag=BlueGuard] run place template elderguard_yellow ~2 ~ ~10 180
execute if entity @s[tag=YellowGuard] run place template elderguard_blue ~2 ~ ~10 180

#A.N.T.
execute if entity @s[tag=BlueAnt] run place template ant_yellow ~ ~ ~6 180
execute if entity @s[tag=YellowAnt] run place template ant_blue ~ ~ ~6 180

#Blade
execute if entity @s[tag=BlueBlade] run place template blade_yellow ~2 ~ ~14 180
execute if entity @s[tag=YellowBlade] run place template blade_blue ~2 ~ ~14 180

#Rifter
execute if entity @s[tag=BlueRift] run place template rifter_yellow ~2 ~ ~13 180
execute if entity @s[tag=YellowRift] run place template rifter_blue ~2 ~ ~13 180

#Juggerbuster
execute if entity @s[tag=BlueJug] run place template juggerbuster_yellow ~2 ~ ~16 180
execute if entity @s[tag=YellowJug] run place template juggerbuster_blue ~2 ~ ~16 180

#Slasher
execute if entity @s[tag=BlueSlash] run place template slasher_yellow ~2 ~ ~12 180
execute if entity @s[tag=YellowSlash] run place template slasher_blue ~2 ~ ~12 180

#Catapult
execute if entity @s[tag=BlueCata] run place template catapult_yellow ~2 ~ ~11 180
execute if entity @s[tag=YellowCata] run place template catapult_blue ~2 ~ ~11 180

#Citadel
execute if entity @s[tag=BlueCitadel] run place template citadel_yellow ~2 ~ ~9 180
execute if entity @s[tag=YellowCitadel] run place template citadel_blue ~2 ~ ~9 180

#Gemini
execute if entity @s[tag=BlueGemi] run place template gemini_yellow ~2 ~ ~9 180
execute if entity @s[tag=YellowGemi] run place template gemini_blue ~2 ~ ~9 180

#Lifter
execute if entity @s[tag=BlueLift] run place template lifter_yellow ~2 ~ ~6 180
execute if entity @s[tag=YellowLift] run place template lifter_blue ~2 ~ ~6 180

#Hypersonic
execute if entity @s[tag=BlueHyper] run place template items:hypersonic_yellow ~2 ~ ~8 180
execute if entity @s[tag=YellowHyper] run place template items:hypersonic_blue ~2 ~ ~8 180

#Bullet
execute if entity @s[tag=BlueBull] run place template bullet_yellow ~2 ~ ~12 180
execute if entity @s[tag=YellowBull] run place template bullet_blue ~2 ~ ~12 180

#Duplex
execute if entity @s[tag=BlueDuplex] run place template duplex_yellow ~2 ~ ~17 180
execute if entity @s[tag=YellowDuplex] run place template duplex_blue ~2 ~ ~17 180

#Broadsword
execute if entity @s[tag=BlueBroad] run place template broadsword_yellow ~2 ~ ~11 180
execute if entity @s[tag=YellowBroad] run place template broadsword_blue ~2 ~ ~11 180

##CHASE MODE - Missile color conversion
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] at @s positioned ~ ~2 ~ run function rr_chase:game/whitemissile

##Add 1 to appropriate missile count
execute if entity @s[tag=bluemissile] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection] bMissileCount 1
execute if entity @s[tag=yellowmissile] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection] yMissileCount 1