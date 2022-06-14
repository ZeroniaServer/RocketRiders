##Individual structure names (flipped version)

#Auxiliary
execute if entity @s[tag=BlueAux] run data merge block ~ ~ ~ {name:"auxiliary_yellow",posX:2,posZ:10}
execute if entity @s[tag=YellowAux] run data merge block ~ ~ ~ {name:"auxiliary_blue",posX:2,posZ:10}

#TomaTwo
execute if entity @s[tag=BlueToma] run data merge block ~ ~ ~ {name:"tomatwo_yellow",posX:1,posZ:8}
execute if entity @s[tag=YellowToma] run data merge block ~ ~ ~ {name:"tomatwo_blue",posX:1,posZ:8}

#Chronullifier
execute if entity @s[tag=BlueNull] run data merge block ~ ~ ~ {name:"chronullifier_yellow",posX:1,posZ:8}
execute if entity @s[tag=YellowNull] run data merge block ~ ~ ~ {name:"chronullifier_blue",posX:1,posZ:8}

#Warhead
execute if entity @s[tag=BlueWar] run data merge block ~ ~ ~ {name:"warhead_yellow",posX:2,posZ:10}
execute if entity @s[tag=YellowWar] run data merge block ~ ~ ~ {name:"warhead_blue",posX:2,posZ:10}

#Thunderbolt
execute if entity @s[tag=BlueBolt] run data merge block ~ ~ ~ {name:"thunderbolt_yellow",posX:1,posZ:10}
execute if entity @s[tag=YellowBolt] run data merge block ~ ~ ~ {name:"thunderbolt_blue",posX:1,posZ:10}

#Hurricane
execute if entity @s[tag=BlueHur] run data merge block ~ ~ ~ {name:"hurricane_yellow",posX:2,posZ:8}
execute if entity @s[tag=YellowHur] run data merge block ~ ~ ~ {name:"hurricane_blue",posX:2,posZ:8}

#Elder Guardian
execute if entity @s[tag=BlueGuard] run data merge block ~ ~ ~ {name:"elderguard_yellow",posX:2,posZ:10}
execute if entity @s[tag=YellowGuard] run data merge block ~ ~ ~ {name:"elderguard_blue",posX:2,posZ:10}

#A.N.T.
execute if entity @s[tag=BlueAnt] run data merge block ~ ~ ~ {name:"ant_yellow",posZ:6}
execute if entity @s[tag=YellowAnt] run data merge block ~ ~ ~ {name:"ant_blue",posZ:6}

#Blade
execute if entity @s[tag=BlueBlade] run data merge block ~ ~ ~ {name:"blade_yellow",posX:2,posZ:14}
execute if entity @s[tag=YellowBlade] run data merge block ~ ~ ~ {name:"blade_blue",posX:2,posZ:14}

#Rifter
execute if entity @s[tag=BlueRift] run data merge block ~ ~ ~ {name:"rifter_yellow",posX:2,posZ:13}
execute if entity @s[tag=YellowRift] run data merge block ~ ~ ~ {name:"rifter_blue",posX:2,posZ:13}

#Juggerbuster
execute if entity @s[tag=BlueJug] run data merge block ~ ~ ~ {name:"juggerbuster_yellow",posX:2,posZ:16}
execute if entity @s[tag=YellowJug] run data merge block ~ ~ ~ {name:"juggerbuster_blue",posX:2,posZ:16}

#Slasher
execute if entity @s[tag=BlueSlash] run data merge block ~ ~ ~ {name:"slasher_yellow",posX:2,posZ:12}
execute if entity @s[tag=YellowSlash] run data merge block ~ ~ ~ {name:"slasher_blue",posX:2,posZ:12}

#Catapult
execute if entity @s[tag=BlueCata] run data merge block ~ ~ ~ {name:"catapult_yellow",posX:2,posZ:11}
execute if entity @s[tag=YellowCata] run data merge block ~ ~ ~ {name:"catapult_blue",posX:2,posZ:11}

#Citadel
execute if entity @s[tag=BlueCitadel] run data merge block ~ ~ ~ {name:"citadel_yellow",posX:2,posZ:9}
execute if entity @s[tag=YellowCitadel] run data merge block ~ ~ ~ {name:"citadel_blue",posX:2,posZ:9}

#Gemini
execute if entity @s[tag=BlueGemi] run data merge block ~ ~ ~ {name:"gemini_yellow",posX:2,posZ:9}
execute if entity @s[tag=YellowGemi] run data merge block ~ ~ ~ {name:"gemini_blue",posX:2,posZ:9}

#Lifter
execute if entity @s[tag=BlueLift] run data merge block ~ ~ ~ {name:"lifter_yellow",posX:2,posZ:6}
execute if entity @s[tag=YellowLift] run data merge block ~ ~ ~ {name:"lifter_blue",posX:2,posZ:6}

#Hypersonic
execute if entity @s[tag=BlueHyper] run data merge block ~ ~ ~ {name:"hypersonic_yellow",posX:2,posZ:8}
execute if entity @s[tag=YellowHyper] run data merge block ~ ~ ~ {name:"hypersonic_blue",posX:2,posZ:8}

#Bullet
execute if entity @s[tag=BlueBull] run data merge block ~ ~ ~ {name:"bullet_yellow",posX:2,posZ:12}
execute if entity @s[tag=YellowBull] run data merge block ~ ~ ~ {name:"bullet_blue",posX:2,posZ:12}

#Duplex (ignores entities for TNT minecarts)
execute if entity @s[tag=BlueDuplex] run data merge block ~ ~ ~ {name:"duplex_yellow",ignoreEntities:0b,posX:2,posZ:17}
execute if entity @s[tag=YellowDuplex] run data merge block ~ ~ ~ {name:"duplex_blue",ignoreEntities:0b,posX:2,posZ:17}

#Broadsword
execute if entity @s[tag=BlueBroad] run data merge block ~ ~ ~ {name:"broadsword_yellow",posX:2,posZ:11}
execute if entity @s[tag=YellowBroad] run data merge block ~ ~ ~ {name:"broadsword_blue",posX:2,posZ:11}

##Set rotation
data merge block ~ ~ ~ {rotation:"CLOCKWISE_180"}