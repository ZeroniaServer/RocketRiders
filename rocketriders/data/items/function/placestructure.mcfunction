################################################
## PLACESTRUCTURE: How each missile structure ##
## is actually placed using /place template   ##
################################################

#Auxiliary
execute if entity @s[tag=BlueAux] run place template game:auxiliary_blue
execute if entity @s[tag=YellowAux] run place template game:auxiliary_yellow

#TomaTwo
execute if entity @s[tag=BlueToma] run place template game:tomatwo_blue
execute if entity @s[tag=YellowToma] run place template game:tomatwo_yellow

#Chronullifier
execute if entity @s[tag=BlueNull] run place template game:chronullifier_blue
execute if entity @s[tag=YellowNull] run place template game:chronullifier_yellow

#Warhead
execute if entity @s[tag=BlueWar] run place template game:warhead_blue
execute if entity @s[tag=YellowWar] run place template game:warhead_yellow

#Thunderbolt
execute if entity @s[tag=BlueBolt] run place template game:thunderbolt_blue
execute if entity @s[tag=YellowBolt] run place template game:thunderbolt_yellow

#Hurricane
execute if entity @s[tag=BlueHur] run place template game:hurricane_blue
execute if entity @s[tag=YellowHur] run place template game:hurricane_yellow

#Elder Guardian
execute if entity @s[tag=BlueGuard] run place template game:elderguard_blue
execute if entity @s[tag=YellowGuard] run place template game:elderguard_yellow

#A.N.T.
execute if entity @s[tag=BlueAnt] run place template game:ant_blue
execute if entity @s[tag=YellowAnt] run place template game:ant_yellow

#Blade
execute if entity @s[tag=BlueBlade] run place template game:blade_blue
execute if entity @s[tag=YellowBlade] run place template game:blade_yellow

#Rifter
execute if entity @s[tag=BlueRift] run place template game:rifter_blue
execute if entity @s[tag=YellowRift] run place template game:rifter_yellow

#Juggerbuster
execute if entity @s[tag=BlueJug] run place template game:juggerbuster_blue
execute if entity @s[tag=YellowJug] run place template game:juggerbuster_yellow

#Slasher
execute if entity @s[tag=BlueSlash] run place template game:slasher_blue
execute if entity @s[tag=YellowSlash] run place template game:slasher_yellow

#Catapult
execute if entity @s[tag=BlueCata] run place template game:catapult_blue
execute if entity @s[tag=YellowCata] run place template game:catapult_yellow

#Citadel
execute if entity @s[tag=BlueCitadel] run place template game:citadel_blue
execute if entity @s[tag=YellowCitadel] run place template game:citadel_yellow

#Gemini
execute if entity @s[tag=BlueGemi] run place template game:gemini_blue
execute if entity @s[tag=YellowGemi] run place template game:gemini_yellow

#Lifter
execute if entity @s[tag=BlueLift] run place template game:lifter_blue
execute if entity @s[tag=YellowLift] run place template game:lifter_yellow

#Hypersonic
execute if entity @s[tag=BlueHyper] run place template game:hypersonic_blue
execute if entity @s[tag=YellowHyper] run place template game:hypersonic_yellow

#Bullet
execute if entity @s[tag=BlueBull] run place template game:bullet_blue
execute if entity @s[tag=YellowBull] run place template game:bullet_yellow

#Duplex
execute if entity @s[tag=BlueDuplex] run place template game:duplex_blue
execute if entity @s[tag=YellowDuplex] run place template game:duplex_yellow

#Broadsword
execute if entity @s[tag=BlueBroad] run place template game:broadsword_blue
execute if entity @s[tag=YellowBroad] run place template game:broadsword_yellow

##CHASE MODE - Missile color conversion
execute if predicate game:gamemode_components/neutral_items at @s positioned ~ ~2 ~ run function items:whitemissile
execute unless predicate game:gamemode_components/neutral_items if predicate game:gamemode_components/red_for_blue at @s positioned ~ ~2 ~ run function items:redmissile

##Add 1 to appropriate missile count
execute if entity @s[tag=bluemissile] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] bMissileCount 1
execute if entity @s[tag=yellowmissile] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] yMissileCount 1